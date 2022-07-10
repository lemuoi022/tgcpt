-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2021 at 07:52 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

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
  `laptop_name` varchar(225) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `monitor` varchar(225) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `cpu` varchar(225) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `ram` varchar(225) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `vga` varchar(225) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `ssd` varchar(225) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `hdd` varchar(225) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `creat_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `product_brand` varchar(30) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `laptop_detail`
--

INSERT INTO `laptop_detail` (`laptop_name`, `monitor`, `cpu`, `ram`, `vga`, `ssd`, `hdd`, `creat_at`, `product_brand`, `id`) VALUES
('Acer Aspire 7 A715 42G R4ST', '15.6\" FHD (1920 x 1080) IPS, Anti-Glare, 60Hz\n', 'AMD Ryzen 5 – 5500U', '8GB DDR4 (2x SO-DIMM socket, up to 32GB SDRAM)\n', 'NVIDIA GeForce GTX 1650 4GB GDDR6\n', '256GB PCIe® NVMe™ M.2 SSD\n', '', '0000-00-00 00:00:00', 'acer', 1),
('Acer Predator Helios 300 PH315', '15.6 inch FHD(1920 x 1080) IPS 144Hz slim bezel\n\n', 'Intel® Core™ i7-11800H upto 4.60GHz, 8 nhân 16 luồng\n\n', '8GB DDR4 3200MHz (2 khe rời, nâng cấp tối đa 32GB)\n\n512GB SSD M.2 PCIE (nâng cấp tối đa 1TB SSD PCIe Gen3, 8 Gb/s, NVMe và 2TB HDD 2.5-inch 5400 RPM) (Còn trống 1 khe SSD M.2 PCIE và 1 khe 2.5\" SATA)\n', 'NVIDIA® GeForce RTX™ 3050Ti 4GB GDDR6\n\n', '512GB SSD M.2 PCIE (nâng cấp tối đa 2TB SSD PCIe NVMe và 2TB HDD 2.5-inch 5400 RPM)\n\n', '', '0000-00-00 00:00:00', 'acer', 2),
('Acer Nitro 5 AN515 56 51N4', '15.6\" FHD (1920 x 1080) IPS, 1', 'Intel Core i5-11300H up to 4.40GHz, 4 cores 8 threads\n', '8GB DDR4 3200MHz (2x SO-DIMM socket, up to 32GB SDRAM)\n', 'NVIDIA GeForce GTX 1650 4GB GDDR6 + Intel UHD Graphics\n', '512GB SSD M.2 PCIE (nâng cấp tối đa 1TB SSD PCIe Gen3, 8 Gb/s, NVMe và 2TB HDD 2.5-inch 5400 RPM) (Còn trống 1 khe SSD M.2 PCIE và 1 khe 2.5\" SATA)\n', '', '0000-00-00 00:00:00', 'acer', 3),
('Acer Nitro 5 AN515 45 R0B6', '15.6\" FHD (1920 x 1080) IPS, 144Hz, Anti-Glare\n', 'AMD Ryzen™ 7 5800H ( 3.2GHz up to 4.4GHz , 16Mb) Cores 8 , 16 Threads\n', '8GB DDR4 3200MHz (2x SO-DIMM socket, up to 32GB SDRAM)\n', 'NVIDIA GeForce RTX 3060 6GB GDDR6 + AMD Radeon™ Graphics\n', '512GB SSD M.2 PCIE (Còn trống 1 khe SSD M.2 PCIE và 1 khe 2.5\" SATA)\n', '', '0000-00-00 00:00:00', 'acer', 4),
('ASUS TUF Gaming F15 FX506HC HN', '15.6\" FHD (1920 x 1080) IPS, 144Hz, Wide View, 250nits, Narrow Bezel, Non-Glare with 45% NTSC, 62.5% sRGB\n', 'Intel® Core™ i5-11400H Processor 2.7 GHz (12M Cache, up to 4.5 GHz, 6 Cores)\n', '8GB DDR4 2933MHz (2x SO-DIMM socket, up to 32GB SDRAM)\n', 'NVIDIA® GeForce RTX™ 3050 Laptop GPU + Intel® UHD Graphics\n', '512GB SSD M.2 PCIE G3X2, 1x slot M.2\n', '', '0000-00-00 00:00:00', 'asus', 5),
('Asus ROG Strix G15 G513QC HN01', '15.6 inch FHD (1920 x 1080)IPS level. Non-Glare, 144Hz AdaptiveSync, Nanoedge\n', 'AMD Ryzen R7-5800H (8 cores, up to 4.3GHz)\n', '8GB DDR4 3200MHz (2x SO-DIMM socket, up to 64GB SDRAM)\n', 'NVIDIA GeForce RTX 3050 4GB GDDR6 + AMD Radeon™ Graphics\n', '512GB M.2 NVMe™ PCIe® 3.0 SSD\n', '', '0000-00-00 00:00:00', 'asus', 6),
('Asus TUF Dash FX516PE HN005T', '15.6\" FHD (1920 x 1080) 16:9, Anti-Glare Display, 62.5% sRGB, 144Hz, IPS, Adaptive-Sync\n', 'Intel Core i7-11370H 3.0GHz up to 4.8GHz 12MB, 8 cores 16 threads\n', '8GB Onboard DDR4 3200MHz (1x SO-DIMM socket, up to 24GB SDRAM)\n', 'NVIDIA GeForce  RTX™ 3050Ti 4GB + Intel® Iris® Xe Graphics\n', '512GB SSD M.2 NVMe™ PCIe® 3.0 (Còn trống 1 khe SSD M.2 PCIE/ SATA3)\n', '', '0000-00-00 00:00:00', 'asus', 7),
('MSI Bravo 15 B5DD 027VN', '15.6 inch FHD (1920*1080), 144Hz 45%NTSC IPS-Level\n', 'AMD Ryzen 5-5600H 3.30GHz upto 4.20GHz, 6 cores 12 threads\n', 'DDR4 8GB (1 x 8GB) 3200MHz; 2 slots, Up to 64GB\n', 'Radeon RX5500M 4GB\n', '512GB NVMe PCIe Gen3x4 SSD\n', '', '0000-00-00 00:00:00', 'msi', 8),
('MSI GF75 Thin 10SCXR 013VN', '17.3\" FHD (1920 x 1080) IPS, 144Hz, Thin Bezel, Anti-Glare\n', 'Intel Core i7-10750H 2.6GHz up to 5.0GHz 12MB\n', 'NVIDIA GeForce GTX 1650 4GB GDDR6 + Intel UHD Graphics 630\n', '8GB DDR4 3200MHz (2x SO-DIMM socket, up to 32GB SDRAM)\n', '512GB SSD M.2 PCIE, 1x 2.5\" SATA3\n', '', '0000-00-00 00:00:00', 'msi', 9),
('MSI Gaming Katana GF76 ', '17.3 inch FHD (1920*1080), 144Hz 45% NTSC\n\n', 'Intel® Core™ i7-11800H lên đên 4.60GHz, 8 nhân 16 luồng\n\n', '8GB (8GB x 1) DDR4 3200MHz (2 khe, tối đa 64GB)\n\n', 'NVIDIA GeForce RTX 3050 4GB GDDR6 + Intel UHD Graphics\n\n', '512GB NVMe PCIe Gen3x4 SSD\n\n', '', '0000-00-00 00:00:00', 'msi', 10),
('MSI Pulse GL66 11UDK 255VN', '15.6 inch FHD (1920*1080), 144Hz 72%NTSC IPS-Level, close to 100%sRGB\n', 'Intel® Core™ i7-11800H upto 4.60GHz, 8 cores 16 threads\n', '16GB (8GB x 2) DDR4 3200MHz (2 khe, tối đa 64GB)\n', 'NVIDIA GeForce RTX 3050 Ti 4GB GDDR6 + Intel UHD Graphics\n', '512GB NVMe PCIe Gen3x4 SSD\n', '', '0000-00-00 00:00:00', 'msi', 11),
('Dell Inspiron 5301 (7023601)\nDell Inspiron 5301 (7023601)15.6inch FHD (1920x1080), 144HNVIDIA GeForce RTX 3050 Ti	512GB SSD PCIE G3X4 (1 Slot)16GB (8GBx2) DDR4 3200MHz (2x Intel Core i7-11800H512GB SSD M.2 PCIE, x1 slot 2.', '13.3-inch FHD (1920 x 1080) Anti-Glare Non-Touch Narrow Border 300nits 95% sRGB\n\n', 'Intel Core i7 1165G7 (2.8Ghz, 12Mb Cache, up to 4.7 Ghz)\n\n', '8GB LPDDR4x 4267Mhz\n\n', 'Nvidia Geforce MX350 2G\n\n', '512GB PCIe Gen3 x4 NVMe SSD (u', '', '0000-00-00 00:00:00', 'dell', 12),
('Dell Latitude 3420 (42LT342001', '14 inch HD (1366 x 768) AG Non-Touch, 220nits\n', 'Intel Core™ i3 1115G4 (3.0Ghz, 6MB Cache)\n', '4GB DDR4 3200Mhz (1*4GB) \n', ' Intel® Iris® Xe Graphics', '256GB PCIe NVMe Class 35 M2 SSD (có slot 2.5 inch)\n', '', '0000-00-00 00:00:00', 'dell', 13),
('Dell Inspiron 5410 2 in 1 (N4I', '14.0-inch FHD (1920 x 1080) Truelife Touch Narrow Border WVA\n', 'Intel Core i5 1135G7 (2.4Ghz /8MB cache upto 4.2Ghz)\n', '8GB DDR4 3200MHz (2* 4GB)\n', 'Nvidia MX350 2GB\n', '512GB M.2 PCIe NVMe SSD\n', '', '0000-00-00 00:00:00', 'dell', 14),
('Dell Inspiron 5505 (N5R74700U)', '15.6-inch FHD, 1920 x 1080, 60Hz Anti-Glare\n', 'AMD Ryzen 7 4700U\n', '8GB DDR4 3200Mhz (1* 8GB)\n', 'AMD® Radeon™ Graphics', '512GB M.2 PCIe NVMe SSD (M.2 2230) (combo M.2 2230/ 2280)\n', '', '0000-00-00 00:00:00', 'dell', 15),
('Asus ROG Zephyrus G14 GA401QH', '14.0 inch FHD (1920 x 1080) IPS, 100% sRGB, 300nits, 144Hz  Nanoedge, Pantone Validated Display\n', 'AMD Ryzen™ 7-5800HS 2.8GHz up to 4.4GHz, 8 cores 16 threads\n', '8GB [On board] DDR4 3200MHz \n', 'NVIDIA® GeForce® GTX 1650 4GB GDDR6\n', '512GB SSD M.2 NVMe PCIe 3.0', '', '0000-00-00 00:00:00', 'asus', 16),
('Acer Nitro 5 Eagle AN515 57 77', '15.6 inch QHD (2560 x 1440) IPS 165Hz SlimBezel\n', 'Intel® Core™ i7-11800H 2.3GHz up to 4.60GHz, 8 nhân 16 luồng\n\n', '16GB DDR4 3200MHz khe rời (2 khe, tối đa 32GB)\n', 'NVIDIA® GeForce® RTX 3060 6GB GDDR6\n', '512GB SSD M.2 PCIE (nâng cấp tối đa 2TB SSD PCIe Gen3, 8 Gb/s, NVMe và 2TB HDD 2.5-inch 5400 RPM) (Còn trống 1 khe SSD M.2 PCIE và 1 khe 2.5\" SATA)\n\n\n', NULL, '2021-08-23 09:08:05', 'acer', 17),
('Acer Nitro 5 Eagle AN515 57 74', '15.6 inch FHD (1920 x 1080) IPS 144Hz\n', 'Intel® Core™ i7-11800H 2.3GHz up to 4.60GHz, 8 nhân 16 luồng\n\n', '8GB DDR4 3200MHz khe rời (2 khe, tối đa 32GB)\n', 'NVIDIA® GeForce® RTX 3050 4GB GDDR6\n', '512GB SSD M.2 PCIE (nâng cấp tối đa 1TB SSD PCIe Gen3, 8 Gb/s, NVMe và 2TB HDD 2.5-inch 5400 RPM) (Còn trống 1 khe SSD M.2 PCIE và 1 khe 2.5\" SATA)\n\n', NULL, '2021-08-23 09:09:06', 'acer', 18),
('Acer Aspire 7 A715 42G R4ST', '15.6\" FHD (1920 x 1080) IPS, Anti-Glare, 60Hz\n', 'AMD Ryzen 5 – 5500U', '8GB DDR4 (2x SO-DIMM socket, up to 32GB SDRAM)\n', 'NVIDIA GeForce GTX 1650 4GB GDDR6\n', '256GB PCIe® NVMe™ M.2 SSD\n', NULL, '2021-08-23 09:09:45', 'acer', 19),
('MSI GS66 Stealth 10UE 200VN', '15.6\" FHD (1920 x 1080) IPS with Anti-Glare, 300Hz, 3ms, Thin Bezel, 100% sRGB\n', '16GB (8GBx2) DDR4 3200MHz (2x SO-DIMM socket, up to 64GB SDRAM)\nIntel Core i7-10870H 2.2 GHz up to 5.0GHz 16MB\n', '16GB (8GBx2) DDR4 3200MHz (2x SO-DIMM socket, up to 64GB SDRAM)\n', 'NVIDIA GeForce RTX3060 Max-Q 6GB GDDR6\n', '2TB SSD PCIE G3X4', NULL, '2021-08-23 09:30:07', 'msi', 20),
('MSI Pulse GL76 11UEK 048VN', '17.3 inch FHD (1920*1080), 144Hz 72%NTSC IPS-Level, close to 100%sRGB\n', 'Intel® Core™ i7-11800H upto 4.60GHz, 8 cores 16 threads\n', '16GB (8GB x 2) DDR4 3200MHz (2 khe, tối đa 64GB)\n', 'NVIDIA GeForce RTX 3060 6GB GDDR6 + Intel UHD Graphics\n', '1TB NVMe PCIe Gen3x4 SSD', NULL, '2021-08-23 09:30:45', 'msi', 21),
('MSI GF65 Thin 10UE 228VN', '15.6\" FHD (1920 x 1080) IPS-Level, 144Hz, 72%NTSC Thin Bezel, close to 100%sRGB\n', 'Intel Core i7-10750H 2.6GHz up to 5.0GHz 12MB\n', '2 x 8GB DDR4 3200MHz (2x SO-DIMM socket, up to 32GB SDRAM)\n', 'NVIDIA GeForce RTX 3060 6GB GDDR6\n', '512GB SSD M.2 PCIE', NULL, '2021-08-23 09:31:18', 'msi', 22),
('MSI Katana GF76 11UC 096VN', '17.3 inch FHD (1920*1080), 144Hz 45% NTSC\n\n', 'Intel® Core™ i7-11800H lên đên 4.60GHz, 8 nhân 16 luồng\n\n', '8GB (8GB x 1) DDR4 3200MHz (2 khe, tối đa 64GB)\n\n', 'NVIDIA GeForce RTX 3050 4GB GDDR6 + Intel UHD Graphics\n\n', '512GB NVMe PCIe Gen3x4 SSD\n\n', NULL, '2021-08-23 09:31:55', 'msi', 23),
('ASUS ROG Zephyrus G15 GA503QM ', '15.6 inch WQHD (2560 x 1440) WV,300NITS,DCI-P3:100%, 165Hz AdaptiveSync, Nanoedge\n', 'AMD Ryzen 9 5900HS 3.00GHz upto 4.60GHz, 8 cores 16 threads\n', '16GB(8GB + 8GB[On board]) DDR4 3200MHz\n', 'NVIDIA® GeForce RTX™ 3060 6GB GDDR6\n', '512GB M.2 NVMe™ PCIe® 3.0 SSD\n', NULL, '2021-08-23 09:12:11', 'asus', 24),
('Dell Gaming G3 G3500B P89F002G', '15.6 inch FHD (1920*1080) 250 nits WVA Anti- Glare LED Backlit Narrow', 'Intel Core i5-10300H 2.5GHz up to 4.5GHz 8MB', '8GB (2x4GB) DDR4 2933hz (2x SO-DIMM socket, up to 32GB SDRAM)', 'NVIDIA GeForce GTX 1650 4GB GDDR6 + Intel UHD Graphics', 'HDD 1TB 5400rpm + 256GB SSD M.2 PCIe', NULL, '2021-08-24 13:23:43', 'dell', 25),
('Dell XPS 13 9310 JGNH62', '13.4-inch UHD (3840 x 2400), IPS 60 Hz - Cảm ứng', 'Intel Core i7-1165G7 (tối đa 4.70GHz, 12MB)', '16GB LPDDR4x 4267MHz (onboard)', 'Intel® Iris® Xe Graphics', '512GB M.2 PCIe NVMe', NULL, '2021-08-24 13:26:33', 'dell', 26),
('Dell Mobile Precision Workstation M3550', '15.6 inch FHD (1920x1080), Anti-Glare Non- Touch, 45% color gamut', ' Intel Core Processor i7-10810U (1.10GHz upto 4.90GHz, 12MB)', '16GB (1X16GB) DDR4 2666Mhz (2 khe)', 'Nvidia Quadro P520 w/ 2GB GDDR5', '256GB M.2 PCIe NVMe SSD', NULL, '2021-08-24 13:29:04', 'dell', 27),
('Dell Latitude 7420 70251597', '14.0 inch FHD(1920x1080) AG, SLP, Non-Touch, ComfortView Plus,WVA,400nits', 'Intel® Core i7-1185G7 (upto 4.80GHz, 12MB)', '16GB Non-ECC', ' Intel Iris Xe Graphics', '256GB M.2 256GB PCIe NVMe', NULL, '2021-08-24 13:31:27', 'dell', 28),
('Lenovo IdeaPad Gaming 3 15ARH0', '15.6\" FHD (1920 x 1080) IPS, 250nits, chống chói , 120Hz', 'AMD Ryzen 5 4600H (3.0GHz up to 4.0GHz 8MB) 6 nhân 12 luồng', '8GB DDR4 3200MHz (2x khe ram , nâng cấp tối đa 16GB ram)', 'NVIDIA GeForce GTX 1650 4GB GDDR6 + Intel UHD Graphics', '256GB SSD M.2 2242 PCIe NVMe 3.0x4 ( +1 khe ổ cứng 2.5\" để nâng cấp )', NULL, '2021-08-24 13:33:29', 'lenovo', 29),
('Lenovo Legion 5 15ARH05 82B500GUVN', '15.6 inch FHD (1920x1080) IPS 300nits Anti-glare, 144Hz, 100% sRGB, Dolby Vision', 'AMD Ryzen™ 5-4600H 3.00GHz upto 4.00GHz, 8MB cache, 6 nhân 12 luồng', '8GB(1x 8GB) SO-DIMM DDR4-3200Mhz (2 khe, tối đa 32GB RAM)', 'NVIDIA GeForce GTX 1650 Ti 4GB GDDR6', '512GB SSD M.2 2280 PCIe NVMe, x1 khe 2.5\" SATA (HDD/SSD)', NULL, '2021-08-24 13:35:34', 'lenovo', 30),
('Lenovo Legion 5 Pro 16ACH6H', '16.0 inch WQXGA (2560x1600) IPS 500nits Anti-glare, 165Hz, 100% sRGB, Dolby Vision, HDR 400, Free-Sync, G-Sync, DC dimmer.', 'AMD Ryzen 7-5800H 3.2GHz upto 4.4GHz, 8 cores 16 threads', '16GB(2x 8GB) SO-DIMM DDR4-3200Mhz (2 khe, tối đa 32GB)', 'NVIDIA GeForce GTX 1650 Ti 4GB GDDR6', '512GB SSD M.2 2280 PCIe 3.0x4 NVMe', NULL, '2021-08-24 13:40:31', 'lenovo', 31),
('Lenovo Legion 5 15ARH05 82B500', '15.6 inch FHD (1920x1080) IPS 300nits Anti-glare, 144Hz, 100% sRGB, Dolby Vision', 'AMD Ryzen™ 7- 4800H (2.90GHz upto 4.20GHz, 8MB) 8 nhân 16 luồng', '8GB(1x 8GB) SO-DIMM DDR4-3200Mhz (2 khe, tối đa 32GB RAM)', 'NVIDIA GeForce GTX 1650 Ti 4GB GDDR6', '512GB SSD M.2 2280 PCIe NVMe, x1 khe 2.5\" SATA (HDD/SSD)', NULL, '2021-08-24 13:41:35', 'lenovo', 32),
('Lenovo Legion 5 15ACH6 82JW003', '15.6 inch FHD (1920x1080) IPS 300nits Anti-glare, 165Hz, 100% sRGB, Dolby Vision, Free-Sync, G-Sync, DC dimmer', 'AMD Ryzen 5-5600H (3.3GHz upto 4.2GHz, 16MB)', '8GB(1x 8GB) SO-DIMM DDR4-3200Mhz (2 khe, tối đa 32GB RAM)', 'NVIDIA GeForce RTX 3050 4GB GDDR6', '512GB SSD M.2 2280 PCIe 3.0x4 NVMe', NULL, '2021-08-24 13:48:12', 'lenovo', 33),
(' Lenovo Legion 5 15IMH05 82AU0', '15.6 inch FHD (1920x1080) IPS 300nits Anti-glare, 144Hz, 100% sRGB, Dolby Vision, DC dimmer', 'Intel® Core™ i5-10300H 2.50GHz upto 4.50GHz, 4 cores 8 threads', '16GB (2x 8GB) SO-DIMM DDR4-2933Mhz ', 'NVIDIA GeForce GTX 1650 Ti 4GB GDDR6', '512GB SSD M.2 NVMe, x1 slot 2.5\" SATA (HDD/SSD)', NULL, '2021-08-24 13:49:53', 'lenovo', 34),
('IDEAPAD 5 14ALC05 82LM00D5VN', '14.0 Inch Full HD\n', 'AMD Ryzen™ R7-5700U Processor\n', '8Gb soldered\n', 'AMD Radeon Graphics\n', '512Gb SSD\n', NULL, '2021-08-23 07:56:58', 'Lenovo', 35),
('IdeaPad Slim 3 14ITL6 82H7003U', '14\" FHD (1920x1080) TN 250nits Anti-glare, 45% NTSC', 'Intel Core i5-1135G7 (4C / 8T, 2.4 / 4.2GHz, 8MB)', '8GB (4GB + 4GB Onboard) DDR4 3200MHz  (1x SO-DIMM socket, up to 12GB)', 'Intel Iris Xe Graphics', '512GB SSD M.2 2242 PCIe 3.0x4 NVMe', NULL, '2021-08-24 13:51:45', 'lenovo', 36),
('ASUS TUF Gaming F15 FX506HM HN', '15.6\" FHD (1920 x 1080) IPS, 144Hz, Wide View, 250nits, Narrow Bezel, Non-Glare with 45% NTSC, 62.5% sRGB\n\n', 'Intel® Core™ i5-11400H upto 4.50GHz, 12MB cache, 6 nhân 12 luồng\n\n', '8GB DDR4 2933MHz (2 x khe ram, nâng cấp tối đa 32GB )\n\n', 'NVIDIA® GeForce RTX™ 3060 Laptop GPU + Intel® UHD Graphics\n', '512GB SSD M.2 PCIE G3X2, 1x khe M.2\n\n', NULL, '2021-08-23 09:16:21', 'asus', 53),
('ASUS ZenBook UX425EA KI439T', '14.0-inch FHD (1920 x 1080) 16:9 IPS, 400nits, Anti-glare, 100% sRGB\n', 'Intel® Core™ i7-1165G7 Processor 2.8 GHz (12M Cache, up to 4.7 GHz, 4 cores)\n', '16GB LPDDR4X on board\n', 'Intel Iris Xᵉ Graphics \n', '512GB M.2 NVMe™ PCIe® 3.0 ', NULL, '2021-08-23 09:26:42', 'asus', 54),
('ASUS VivoBook S533EQ BN161T', '15.6\" FHD (1920 x 1080) IPS, Anti-Glare with 45% NTSC\n', 'Intel Core i5-1135G7 2.4GHz up to 4.2GHz 8MB 4 nhân 8 luồng\n', '8GB DDR4 3200MHz Onboard\n', 'NVIDIA GeForce MX350 2GB GDDR5 + Intel Iris Xe Graphics\n', '512GB SSD M.2 PCIE G3X2 (Còn trống 1 khe SSD M.2 PCIE/ SATA3)\n', NULL, '2021-08-23 09:27:26', 'asus', 55),
('Acer Swift 3 SF314 511 56G1', '14\"Full HD (1920 x 1080) 60Hz, Tấm nền IPS', 'Intel® Core™ i5-1135G7 4  Nhân 8 Luồng, xung cơ bản 2.40 GHz tối đa 4.20 GHz, 8 MB Smart Cache', '16GB LPDDR4X_16GB 2666 MHz (Onboard) ', 'Intel Iris Xe Graphics', '512GB PCIe NVMe SSD (Có thể tháo ra, lắp thanh khác tối đa 1TB, PCIE Gen3)', NULL, '2021-08-25 03:36:57', 'acer', 56);

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
(61, 1, 53, 'PC Garen - PcWorld', 1, 41390000, 41390000, '2021-08-24 09:09:59'),
(62, 2, 26, 'Acer Nitro 5 Eagle AN515 57 74', 1, 25690000, 25690000, '2021-08-24 16:11:34'),
(63, 2, 4, 'Acer Nitro 5 AN515 45 R0B6', 1, 30500000, 30500000, '2021-08-24 16:11:34'),
(64, 3, 53, 'PC Garen - PcWorld', 1, 41390000, 41390000, '2021-08-24 16:26:14'),
(65, 4, 2, 'Acer Predator Helios 300 PH315', 1, 34500000, 34500000, '2021-08-26 04:03:13'),
(66, 4, 7, 'Asus TUF Dash FX516PE HN005T', 1, 27600000, 27600000, '2021-08-26 04:03:13');

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
  `phone` text COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `amount` int(30) NOT NULL,
  `status` int(5) DEFAULT NULL,
  `creat_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `order_main`
--

INSERT INTO `order_main` (`id`, `name`, `address`, `email`, `phone`, `amount`, `status`, `creat_at`) VALUES
(1, 'Huy Hoàng', 'Đông Anh', 'hoang25422@gmail.com', '0868450575', 41390000, 1, '2021-08-24 09:09:59'),
(2, 'Huy Hoàng', 'Đông Anh', '', '0868450575', 56190000, 0, '2021-08-24 16:11:34'),
(3, 'Huy Hoàng', 'Đông Anh', 'hoang25422@gmail.com', '0868450575', 41390000, 0, '2021-08-24 16:26:14'),
(4, 'le xuan muoi', 'dfsdf', 'muoi0886@gmail.com', '1312312', 62100000, 0, '2021-08-26 04:03:13');

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
(1, 1, 'Acer Aspire 7 A715 42G R4ST', 'acer', 18900000, 5, 1, 'assets/images/acer/acer.jpg', 'assets/images/acer/acer1_1.jpg', 'assets/images/acer/acer1_2.jpg', 'Nếu bạn yêu thích chơi game và muốn tìm một chiếc laptop đủ sức giúp bạn thỏa mãn đam mê thì chiếc laptop Acer Aspire 7 A715-41G-R150, ra mắt năm 2020 sẽ là sự lựa chọn không thể tuyệt vời hơn. Chiếc laptop trên sở hữu thiết kế mạnh mẽ cùng cấu hình nổi bật.\r\n\r\nThiết kế hiện đại, màn hình 15.6 inch FHD ấn tượng\r\nLaptop Acer Gaming Aspire 7 A715-41G-R150 gây ấn tượng với người dùng với thiết kế mạnh mẽ, rất thích hợp với các gamer. Mẫu laptop được hoàn thiện bằng chất liệu kim loại bền với các chi tiết mang sự hiện đại.', '2021-08-10 14:33:47'),
(2, 2, 'Acer Predator Helios 300 PH315', 'acer', 34500000, 11, 1, 'assets/images/acer/acer3.jpg', 'assets/images/acer/acer3_1.jpg', 'assets/images/acer/acer3_2.jpg', 'Laptop Acer Gaming Predator Helios 300 PH315-54-78W5 được trang bị bộ xử lý Intelthế hệ 11 với tốc độ xung nhịp cao giúp cho tốc độ xử lý nhanh chóng. Kèm theo đó laptop có RAM dung lượng lớn mang lại khả năng đa nhiệm mượt mà.', '0000-00-00 00:00:00'),
(3, 3, 'Acer Nitro 5 AN515 56 51N4', 'acer', 20500000, 19, 1, 'assets/images/acer/acer4.jpg', 'assets/images/acer/acer4_1.jpg', 'assets/images/acer/acer4_2.jpg', 'Acer Nitro 5 AN515 56 51N4 sở hữu thiết kế ấn tượng với hai màu đen-đỏ chủ đạo. Bề mặt được thiết kế hầm hố và góc cạnh hơn. Thể hiện phong cách hiếu chiến đặc trưng của dòng Nitro. Viền màn hình siêu mỏng 6.3mm cho cảm giác không gian thoáng đãng hơn trước.', '0000-00-00 00:00:00'),
(4, 4, 'Acer Nitro 5 AN515 45 R0B6', 'acer', 30500000, 19, 1, 'assets/images/acer/acer2.jpg', 'assets/images/acer/acer2_1.jpg', 'assets/images/acer/acer2_2.jpg', 'Nitro 5 2021 AN515 45 R0B6 sở hữu thiết kế ấn tượng với hai màu đen-đỏ chủ đạo. Bề mặt được thiết kế hầm hố và góc cạnh hơn. Thể hiện phong cách hiếu chiến đặc trưng của dòng Nitro. Viền màn hình siêu mỏng 6.3mm cho cảm giác không gian thoáng đãng hơn trước.', '0000-00-00 00:00:00'),
(5, 5, 'ASUS TUF Gaming F15 FX506HC HN', 'asus', 23800000, 20, 1, 'assets/images/asus/asus1.jpg', 'assets/images/asus/asus1_1.jpg', 'assets/images/asus/asus1_2.jpg', 'Laptop Asus Gaming F15 FX506HC-HN002T trang bị CPU Intel Core i5-11400H và thêm GPU GeForce GTX™ 3050 hỗ trợ xử lý hình ảnh cực chất. Bạn có thể trải nghiệm những khung hình tựa game vô cùng ấn tượng.', '0000-00-00 00:00:00'),
(6, 6, 'Asus ROG Strix G15 G513QC HN01', 'asus', 27990000, 20, 1, 'assets/images/asus/asus2.jpg', 'assets/images/asus/asus2_1.jpg', 'assets/images/asus/asus2_2.jpg', 'ROG Strix G15 G513QC HN015T là hiện thân của phong cách thiết kế tối giản, mang đến trải nghiệm cốt lõi mãnh liệt nhất. Dư sức để chiến những tựa game nặng kí và xử lý đa nhiệm cùng Windows 10. ', '0000-00-00 00:00:00'),
(7, 7, 'Asus TUF Dash FX516PE HN005T', 'asus', 27600000, 20, 1, 'assets/images/asus/asus4.jpg', 'assets/images/asus/asus4_1.jpg', 'assets/images/asus/asus4_2.jpg', 'ASUS TUF Gaming Dash F15 là một chiếc laptop gaming hạng nặng với bộ vi xử lý Intel i7 Gen 11 mới nhất kết hợp với GPU Nvidia RTX 3060 mới nhất và một thiết lập âm thanh tổng thể tuyệt vời. ', '0000-00-00 00:00:00'),
(8, 8, 'MSI Bravo 15 B5DD 027VN', 'msi', 21990000, 20, 1, 'assets/images/msi/msi1.jpg', 'assets/images/msi/msi1_1.jpg', 'assets/images/msi/msi1_2.jpg', 'Laptop sử dụng công nghệ 7nm hiện đại, trang bị tối đa tới vi xử lí AMD Ryzen 5 4600H và card đồ họa Radeon™ RX5300M 3GB, đem tới cho chiếc laptop khi chơi game có hiệu năng ngang tầm máy desktop.', '0000-00-00 00:00:00'),
(9, 9, 'MSI GF75 Thin 10SCXR 013VN', 'msi', 21790000, 20, 1, 'assets/images/msi/msi2.jpg', 'assets/images/msi/msi2_1.jpg', 'assets/images/msi/msi2_2.jpg', 'MSI GF75 Thin 10SCXR 013VN lại sở hữu một vẻ ngoài giản dị đến mức khó tin, các bạn có thể nhầm lẫn chiếc sản phẩm với phân khúc laptop văn phòng.', '0000-00-00 00:00:00'),
(10, 10, 'MSI Gaming Katana GF76 ', 'msi', 29989000, 20, 1, 'assets/images/msi/msi3.jpg', 'assets/images/msi/msi3_1.jpg', 'assets/images/msi/msi3_2.jpg', 'ấy cảm hứng từ những thanh Katana, hình ảnh của dòng sản phẩm Katana GF mới được thiết kế bởi họa sĩ minh họa người Nhật Tsuyoshi Nagano, nổi tiếng với các tác phẩm được sử dụng trong dòng game “Tam quốc chí”. Katana GF76 và GF66 hứa hẹn sẽ đem tới nguồn cảm hứng chinh phục to lớn cho các game thủ. Với card đồ họa NVIDIA GeForce RTX 3050 cùng bàn phím có cụm phím số riêng biệt (kể cả trên phiên bản 15-inch), các mẫu laptop Katana GF không chỉ đơn giản là laptop gaming phổ thông; chúng còn là người bạn đồng hành đáng tin cậy trên các chiến trường ảo.', '0000-00-00 00:00:00'),
(11, 11, 'MSI Pulse GL66 11UDK 255VN', 'msi', 31490000, 20, 1, 'assets/images/msi/msi4.jpg', 'assets/images/msi/msi4_1.jpg', 'assets/images/msi/msi4_2.jpg', 'Với lớp vỏ kim loại màu xám titan cùng các đường viền góc cạnh, Pulse GL series cực kì phù hợp với những người ưa chuộng phong cách thiết kế viễn tưởng. Khu vực xung quanh bàn phím cũng được trang trí theo phong cách giống như giao diện hiển thị ngoại vi trên bảng điều khiển. Thiết kế hình lục giác ở mặt đáy lấy cảm hứng từ các bộ phim kinh điển, mô phỏng lại cảnh những chiến đấu cơ liên ngân hà đang xuất trận trên các tinh cầu xa xôi. Sở hữu ngay Pulse GL series và giải phóng sức mạnh tiềm ẩn bên trong.', '0000-00-00 00:00:00'),
(12, 12, 'Dell Inspiron 5301 (7023601)', 'dell', 24989000, 20, 1, 'assets/images/dell/dell1.jpg', 'assets/images/dell/dell1_1.jpg', 'assets/images/dell/dell1_2.jpg', 'Laptop Dell Inspiron 5301 tối đa hóa khả năng di động của bạn với ExpressCharge™, sạc pin của bạn trong nháy mắt (lên đến 80% trong 60 phút)', '0000-00-00 00:00:00'),
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
(50, 39, 'PC Viper  - PcWorld', 'pc', 18890000, 20, 2, 'assets/images/pc/viper.jpg', 'assets/images/viper.jpg', 'assets/images/viper.jpg', 'Đang cập nhật ....', '2021-08-22 15:44:35'),
(52, 40, 'PC Ivy - PcWorld', 'pc', 13990000, 20, 2, 'assets/images/pc/ivy.jpg', 'assets/images/ivy.jpg', 'assets/images/ivy.jpg', 'Đang cập nhật ....', '2021-08-22 16:02:06'),
(53, 41, 'PC Garen - PcWorld', 'pc', 41390000, 20, 2, 'assets/images/pc/garen.jpg', 'assets/images/pc/garen.jpg', 'assets/images/pc/garen.jpg', 'Đang cập nhật ....', '2021-08-22 16:15:23'),
(54, 42, 'PC Volibear- PcWorld', 'pc', 39490000, 20, 2, 'assets/images/pc/volibear.jpg', 'assets/images/pc/volibear.jpg', 'assets/images/pc/volibear.jpg', 'Đang cập nhật ....', '2021-08-22 16:27:33'),
(55, 43, 'PC Tinker - PcWorld', 'pc', 32790000, 20, 2, 'assets/images/pc/tinker.jpg', 'assets/images/pc/tinker.jpg', 'assets/images/pc/tinker.jpg', 'Đang cập nhật ....', '2021-08-23 02:25:45'),
(56, 44, 'PC Phantom - PcWorld', 'pc', 29990000, 20, 2, 'assets/images/pc/phantom.jpg', 'assets/images/pc/phantom.jpg', 'assets/images/pc/phantom.jpg', 'Đang cập nhật ....', '2021-08-23 02:27:51'),
(57, 45, 'PC Aorus - PcWorld', 'pc', 82990000, 20, 2, 'assets/images/pc/aorus.jpg', 'assets/images/pc/aorus.jpg', 'assets/images/pc/aorus.jpg', 'Đang cập nhật ....', '2021-08-23 02:31:09'),
(58, 46, 'PC Phoenix - PcWorld', 'pc', 60190000, 20, 2, 'assets/images/pc/phoenix.jpg', 'assets/images/pc/phoenix.jpg', 'assets/images/pc/phoenix.jpg', 'Đang cập nhật ....', '2021-08-23 02:32:36'),
(59, 47, 'PC Vision - PcWorld', 'pc', 75790000, 20, 2, 'assets/images/pc/vision.jpg', 'assets/images/pc/vision.jpg', 'assets/images/pc/vision.jpg', 'Đang cập nhật ....', '2021-08-23 02:34:08'),
(60, 48, 'PC Predator - PcWorld', 'pc', 64190000, 20, 2, 'assets/images/pc/predator.jpg', 'assets/images/pc/predator.jpg', 'assets/images/pc/predator.jpg', 'Đang cập nhật ....', '2021-08-23 02:35:37'),
(61, 49, 'PC Homework i3 - PcWorld', 'pc', 8290000, 20, 2, 'assets/images/pc/hw_i3.jpg', 'assets/images/pc/hw_i3.jpg', 'assets/images/pc/hw_i3.jpg', 'Đang cập nhật ....', '2021-08-23 02:40:38'),
(62, 50, 'PC Homework i5 - PcWorld', 'pc', 10590000, 20, 2, 'assets/images/pc/hw_i5.jpg', 'assets/images/pc/hw_i5.jpg', 'assets/images/pc/hw_i5.jpg', 'Đang cập nhật ....', '2021-08-23 02:41:55'),
(63, 51, 'PC Homework i7 - PcWorld', 'pc', 15790000, 20, 2, 'assets/images/pc/hw_i7.jpg', 'assets/images/pc/hw_i7.jpg', 'assets/images/pc/hw_i7.jpg', 'Đang cập nhật ....', '2021-08-23 02:43:57'),
(64, 52, 'PC Homework R5 - PcWorld', 'pc', 12390000, 20, 2, 'assets/images/pc/hw_r5.jpg', 'assets/images/pc/hw_r5.jpg', 'assets/images/pc/hw_r5.jpg', 'Đang cập nhật ....', '2021-08-23 02:45:05'),
(65, 53, 'ASUS TUF Gaming F15 FX506HM HN', 'asus', 31990000, 20, 1, 'assets/images/asus/asus6_1.png', 'assets/images/asus/asus6_2.png', 'assets/images/asus/asus6_3.jpg', 'Dòng sản phẩm laptop TUF gaming từ nhà Asus giờ đây đã rất mạnh mẽ và mang trong mình nhiều sức mạnh vượt trội đến từ phần cứng chất lượng. Chúng ta có chip i5 đời 11 với 6 nhân 12 luồng nhằm xử lý đa tác vụ dễ dàng.   Ngoài ra cần phải kể đến sự góp mặt của cỗ máy đồ họa chiến binh card màn hình GPU RTX 3060 trứ danh. Máy dễ dàng xử lý mọi tác vụ hàng ngày cũng như thoải mái để làm chủ mọi trò chơi gaming từ Esports cho đến những game AAA điều mượt mà, trải nghiệm ở đây là tuyệt vời.', '2021-08-23 09:15:29'),
(66, 54, 'ASUS VivoBook S533EQ BN161T', 'asus', 20390000, 20, 1, 'assets/images/asus/asus7_1.jpg', 'assets/images/asus/asus7_2.jpg', 'assets/images/asus/asus7_3.png', 'Với thiết kế tinh tế, sang trọng ASUS VivoBook là sự lựa chọn hàng đầu của giới trẻ, giúp mang đến một vẻ ngoài siêu nổi bật và tràn đầy cá tính. VivoBook S15 mỏng nhẹ có điểm nhấn thiết kế là viền cắt kim cương và có bốn màu sắc khác biệt, cho phép bạn thoải mái lựa chọn để thể hiện cá tính của mình. Cá tính của bạn còn được thể hiện rõ nét hơn khi mở máy vì phím Enter vàng nổi bật sẽ xuất hiện tạo điểm nhấn so với bàn phím truyền thống. VivoBook S15 sẽ giúp thể hiện cá tính của bạn, cả bên trong và bên ngoài.', '2021-08-23 09:18:38'),
(67, 55, 'ASUS ZenBook UX425EA KI439T', 'asus', 28400000, 20, 1, 'assets/images/asus/asus8_1.jpg', 'assets/images/asus/asus8_2.jpg', 'assets/images/asus/asus8_3.png', 'Sở hữu một thiết kế bên ngoài vô cùng bắt mắt của dòng Zenbook xưa nay, ASUS ZenBook UX425EA KI439T được tô điểm thêm bằng lớp sơn xám thông đem đến sự sang trọng từ những ánh nhìn. Mặt ngoài của ASUS ZenBook UX425EA KI439T tạo nên điểm nhấn vô cùng đặc khi vòm ánh sáng được quy tụ vào logo ASUS ánh bạc khẳng định nên thương hiệu của dòng notebook cao cấp này. Hướng đến sự thuận tiện khi làm việc trong môi trường văn phòng, ASUS ZenBook UX425EA KI439T có trọng lượng chỉ 1.17 kg và độ mỏng chỉ 1.39 cm, bạn có thể sử dụng chiếc laptop này chỉ bằng 1 tay.', '2021-08-23 09:24:29'),
(68, 56, 'Acer Swift 3 SF314 511 56G1', 'acer', 19690000, 20, 1, 'assets/images/acer/acer5_1.jpg', 'assets/images/acer/acer5_1.jpg', 'assets/images/acer/acer5_1.jpg', 'assets/images/acer/acer5_1.jpg', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `product_detail`
--

CREATE TABLE `product_detail` (
  `product_name` varchar(30) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `cpu` varchar(225) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `ram` varchar(225) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `mainboard` varchar(225) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `vga` varchar(225) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `ssd` varchar(225) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `hdd` varchar(225) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `psu` varchar(225) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `case_pc` varchar(225) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `creat_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `product_detail`
--

INSERT INTO `product_detail` (`product_name`, `cpu`, `ram`, `mainboard`, `vga`, `ssd`, `hdd`, `psu`, `case_pc`, `creat_at`, `id`) VALUES
('PC Yuumii - PcWorld', 'Intel Core i5 10400F / 12MB / 2.9GHz / 6 Nhân 12 Luồng / LGA 1200	', 'Kingston HyperX Fury Black DDR4 1x8GB bus 2666	', 'MSI B460M-A PRO	', 'MSI GTX 1660 Ventus XS 6G OC GDDR5	', 'SSD PNY CS900 120G 2.5\" Sata 3', '', 'Nguồn Gigabyte P550B - 80 Plus', 'Case Deepcool MATREXX 40 3FS	', '2021-08-23 07:52:42', 37),
('PC Minions - PcWorld', 'Intel Core i3 10105F / 6MB / 4 nhân 8 luồng / LGA 1200	', 'Kingston HyperX Fury Black DDR4 1x8GB bus 2666	', 'MSI B460M-A PRO	', 'GIGABYTE GeForce GTX 1660 Ti OC 6G	', 'SSD PNY CS900 120G 2.5\" Sata 3', '', 'Nguồn Gigabyte P550B - 80 Plus', 'XIGMATEK AERO 2F	', '2021-08-23 08:42:37', 38),
('PC Viper  - PcWorld', 'Intel Core i3 10105F / 6MB / 4.3GHZ / 4 nhân 8 luồng / LGA 1200	', 'Kingston HyperX Fury Black DDR4 1x8GB bus 2666	', 'GIGABYTE H510M H (rev. 1.0)	', 'MSI GTX 1660 Ventus XS 6G OC GDDR5	', 'SSD PNY CS900 120G 2.5\" Sata 3', '', 'Nguồn Gigabyte P550B - 80 Plus', 'Case XIGMATEK AERO 2F	', '2021-08-23 08:48:01', 39),
('PC Ivy - PcWorld', 'Intel Core i3 10105F / 6MB / 4 nhân 8 luồng / LGA 1200	', 'Kingston HyperX Fury Black DDR', 'ASUS PRIME H410M-E	', 'GIGABYTE GeForce GTX 1650 MINI ITX 4G	', 'SSD PNY CS900 120G 2.5\" Sata 3', '', 'Gigabyte P450B - 80 Plus Bronz', 'XIGMATEK AERO 2F	', '2021-08-23 08:49:03', 40),
('PC Garen - PcWorld', 'Intel Core i7 11700 / 16MB / 2.5GHZ / 8 nhân 16 luồng / LGA 1200	', 'G.SKILL Trident Z RGB DDR4 1x16G bus 3000	', 'GIGABYTE Z590 AORUS ELITE (rev', 'MSI GeForce RTX 3060 VENTUS 2X 12G OC V2 (LHR)	', 'SSD KINGSTON A2000 250GB M.2 NVME', '', 'Nguồn CoolerMaster MWE 750 BRO', 'Cooler Master MASTERBOX MB520 ', '2021-08-23 08:51:53', 41),
('PC Volibear- PcWorld', 'Intel Core i7 10700K / 16MB / 3.8GHz / 8 Nhân 16 Luồng / LGA 1200	', 'G.SKILL Trident Z RGB DDR4 16G bus 3000	', 'ASUS TUF GAMING Z490-PLUS	', 'MSI GeForce RTX 3060 VENTUS 2X 12G OC V2 (LHR)	', 'KINGSTON A2000 250GB M.2 NVMe ', '', 'Nguồn CoolerMaster MWE 750 BRO', 'MSI MPG GUNGNIR 110R (ATX)	', '2021-08-23 08:52:40', 42),
('PC Tinker - PcWorld', 'Intel Core i7 10700F / 16MB / 2.9GHz / 8 Nhân 16 Luồng / LGA 1200	', 'G.SKILL Trident Z RGB DDR4 1x16G bus 3000	', 'ASUS TUF GAMING Z490-PLUS', 'GIGABYTE GeForce RTX 2060 D6 6G	', 'KINGSTON A2000 250GB M.2 NVMe ', '', 'Nguồn CoolerMaster MWE 650 BRO', 'Deepcool MATREXX 50 ADD RGB 4F', '2021-08-23 08:53:31', 43),
('PC Phantom - PcWorld', 'Intel Core i5 10400F / 12MB / 2.9GHz / 6 Nhân 12 Luồng / LGA 1200	', 'Kingston HyperX Fury Black DDR4 1x8G bus 2666	', 'MSI MAG B560M MORTAR	', 'MSI GeForce RTX 3060 VENTUS 2X 12G OC V2 (LHR)	', 'KINGSTON A2000 250GB M.2 NVMe ', '', 'Nguồn CoolerMaster MWE 650 BRO', 'VO-DEE-MATREXX-50-ADD-RGB-4F	', '2021-08-23 08:54:16', 44),
('PC Aorus - PcWorld', 'Intel Core i9 11900 / 16MB / 2.5 GHZ / 8 nhân 16 luồng / LGA 1200	', 'AORUS RGB Memory 2x8GB bus 3333	', 'GIGABYTE Z590 AORUS ULTRA (rev. 1.0)	', 'GIGABYTE GeForce RTX 3080 Ti GAMING OC 12G	', 'Gigabyte SSD AORUS RGB M.2 NVME', '', 'Nguồn GIGABYTE P1000GM - 80 Pl', 'GIGABYTE AORUS C300 Glass	', '2021-08-23 08:55:27', 45),
('PC Phoenix - PcWorld', 'Intel Core i9 11900 / 16MB / 2.5 GHZ / 8 nhân 16 luồng / LGA 1200\n\n', 'Corsair Vengeance RGB PRO 2x8GB bus 3200 \n\n', 'MSI MPG Z590 GAMING CARBON WIFI\n\n', 'MSI GeForce RTX 3070 GAMING Z TRIO 8GB\n\n', 'SSD KINGSTON A2000 250GB M.2 NVMe\n\n', '', 'Nguồn NZXT C750W - 80 Plus Gol', 'MSI MPG GUNGNIR 110R (ATX)	', '2021-08-23 08:56:36', 46),
('PC Vision - PcWorld', 'Intel Core i7 11700K / 16MB / 3.6 GHZ / 8 nhân 16 luồng / LGA 1200	', 'AORUS RGB Memory 2x8GB bus 3333', 'GIGABYTE Z590 VISION G (rev. 1.0)	', 'GIGABYTE GeForce RTX 3080 Ti VISION OC 12G	', 'Gigabyte AORUS RGB M.2 NVMe 256GB', '', 'Nguồn GIGABYTE P750 GM - 80 Pl', 'DeepCool Macube 310P WHITE', '2021-08-23 08:57:23', 47),
('PC Predator - PcWorld', 'Intel Core i7 11700K / 16MB / 3.6 GHZ / 8 nhân 16 luồng / LGA 1200\n\n', 'G.SKILL Trident Z RGB DDR4 16G Bus 3000\n\n', 'GIGABYTE Z590 AORUS ELITE AX (rev. 1.0)\n\n', 'PALIT GeForce RTX 3080 GamingPro 10G\n\n', 'SSD KINGSTON A2000 250GB M.2 N', '', 'Nguồn NZXT C750W - 80 Plus Gol', 'Cooler Master MASTERBOX MB520 ', '2021-08-23 08:58:15', 48),
('PC Homework i3 - PcWorld', 'Intel Core i3 10105 / 6MB / 4 nhân 8 luồng / LGA 1200	', 'Kingston HyperX Fury Black DDR4 1x8GB bus 2666	', 'ASUS PRIME H410M-E	', 'Có thể nâng cấp.', 'SSD Lexar NS100 RB 2.5\' SATA3 ', '', 'Nguồn Deepcool DN450 - 80 Plus', 'Case Sama L1	', '2021-08-23 08:59:28', 49),
('PC Homework i5 - PcWorld', 'Intel Core i5 10400 / 12MB / 2.9GHz / 6 Nhân 12 Luồng / LGA 1200	', 'Kingston HyperX Fury Black DDR4 1x8GB bus 2666	', 'MSI B460M-A PRO	', 'Có thể nâng cấp.', 'SSD Lexar NS100 RB 2.5\' SATA3 ', '', 'Nguồn Gigabyte P450B - 80 Plus', 'Case XIGMATEK AERO 2F	', '2021-08-23 09:00:31', 50),
('PC Homework i7 - PcWorld', 'Intel Core i7 10700 / 16MB / 2.9GHz / 8 Nhân 16 Luồng / LGA 1200	', 'Kingston HyperX Fury Black DDR4 1x8GB bus 2666	', 'MSI MAG B560M MORTAR	', 'Có thể nâng cấp.', 'Lexar NS100 RB 2.5\' SATA3 128G', '', 'Nguồn Gigabyte P550B - 80 Plus', 'Case Deepcool MATREXX 40 3FS	', '2021-08-23 09:01:13', 51),
('PC Homework R5 - PcWorld', 'AMD Ryzen 5 3400G /6MB /3.7GHz /4 nhân 8 luồng	', 'G.SKILL Trident Z RGB DDR4 1x16G bus 3000	', 'ASUS TUF B450M Pro Gaming (Socket AM4)	', 'Có thể nâng cấp.', 'SSD Lexar NS100 RB 2.5\' SATA3 ', '', 'Nguồn Gigabyte P550B - 80 Plus', 'Case XIGMATEK AERO 2F	', '2021-08-23 09:02:06', 52);

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
(13, 'Huy Hoàng', 'sản phẩm này siêu xịn mịn !', 5, '2021-08-24 14:03:08', 40, 1),
(14, 'Huy Hoàng', 'sản phẩm này siêu xịn mịn !', 5, '2021-08-24 14:07:13', 40, 1),
(15, 'Huy Hoàng', 'vxcvxcv', 5, '2021-08-24 14:09:11', 40, 1),
(16, 'Huy Hoàng', 'hahhhahh', 5, '2021-08-24 14:12:08', 4, 1),
(17, 'Huy Hoàng', 'adasdasd', 5, '2021-08-24 14:15:19', 4, 1),
(18, 'Huy Hoàng', 'ádasdasd', 5, '2021-08-24 14:15:36', 4, 1),
(19, 'Huy Hoàng', 'ádasdasd', 5, '2021-08-24 14:19:00', 4, 1),
(38, 'Huy Hoàng', 'so Bad =))) ', 1, '2021-08-24 14:35:30', 4, 1),
(39, 'Huy Hoàng', 'so Bad =))) ', 1, '2021-08-24 14:35:41', 4, 0);

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
  `phone` text COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `creat_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `password2` int(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `user_guest`
--

INSERT INTO `user_guest` (`id`, `name`, `user`, `password`, `gender`, `address`, `email`, `phone`, `creat_at`, `password2`) VALUES
(2, 'tesssdasdad', 'test', '2', '1', '1 Hoàng Đạo Thúy, Thanh Xuân, Hà Nội', 'luongtuanminh02161@gmail.com', '215548524', '2021-08-05 09:54:20', 2),
(3, 'tesssdasdad', 'muoi123', '1', '1', 'long biên', 'muoi138065@nuce.edu.vn', '23144231', '2021-08-09 16:31:19', NULL),
(4, 'fđsdf', 'muoi123', '123456', '1', 'long biên', 'mueueue@gmail.com', '23144231', '2021-08-11 03:34:35', NULL),
(5, 'Huy Hoàng', 'huyhoang', '25042002', '1', 'Đông Anh', 'hoang25422@gmail.com', '0868450575', '2021-08-23 10:42:05', NULL),
(6, 'Huy Hoàng Đồng', 'huyhoang', '123456', '1', 'Đông Anh', 'acv@gmail.com', '0868450575', '2021-08-24 16:46:20', NULL),
(7, 'Huy Hoàng Đồng', 'huyhoang3', 'admin', '0', 'Đông Anh', 'maingocanh121221@gmail.com', 'admin', '2021-08-24 16:56:30', NULL),
(8, 'le xuan muoi', 'le', '123456', '1', 'dfsdf', 'muoi0886@gmail.com', '1312312', '2021-08-26 03:54:30', NULL);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `order_main`
--
ALTER TABLE `order_main`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2147483648;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `product_detail`
--
ALTER TABLE `product_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_guest`
--
ALTER TABLE `user_guest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
