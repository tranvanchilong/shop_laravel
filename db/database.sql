-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 22, 2022 lúc 06:31 PM
-- Phiên bản máy phục vụ: 10.4.18-MariaDB
-- Phiên bản PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `database1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_email`, `admin_password`, `admin_name`, `admin_phone`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'long', '0932023992', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brand_id` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_brand`
--

INSERT INTO `tbl_brand` (`brand_id`, `brand_name`, `brand_slug`, `brand_desc`, `brand_status`, `created_at`, `updated_at`) VALUES
(1, 'Sony', 'sony', 'Sony', 0, NULL, NULL),
(2, 'Samsung', 'samsung', 'Samsung ok lắm ,xài rât ổn định', 0, NULL, NULL),
(3, 'Dell', 'dell', 'Dell ok lắm dùng rất bền', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category_product`
--

CREATE TABLE `tbl_category_product` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_category_product` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category_product`
--

INSERT INTO `tbl_category_product` (`category_id`, `meta_keywords`, `category_name`, `slug_category_product`, `category_desc`, `category_status`, `created_at`, `updated_at`) VALUES
(1, 'xbox game,mua game xbox ,xbox 360', 'Xbox one', 'xbox-one', 'Xbox 360 là thế hệ thứ 2 của dòng máy chơi game console do Microsoft phát triển, cạnh tranh trực tiếp với Playstation 3 của Sony.', 0, NULL, NULL),
(2, 'ps4,may choi game ps4', 'Máy PS4', 'may-ps4', 'PS4 là game cầm tay hay nhất mọi thời đại', 0, NULL, NULL),
(3, 'tay cam ps4,tay cầm ps4', 'Tay cầm chơi game', 'tay-cam-choi-game', 'Tay cầm chơi game hạng nhất từ các hãng sản xuất số 1 hàng đầu châu mỹ', 0, NULL, NULL),
(5, 'dia-ps4-gaming', 'Đĩa PS4 gaming', 'dia-ps4-gaming', 'Dia cd ps4', 0, NULL, NULL),
(6, 'Màn hình gaming,gaming', 'Màn hình gaming', 'man-hinh-gaming', 'Màn hình gaming', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_coupon`
--

CREATE TABLE `tbl_coupon` (
  `coupon_id` int(11) NOT NULL,
  `coupon_name` varchar(150) NOT NULL,
  `coupon_time` int(50) NOT NULL,
  `coupon_condition` int(11) NOT NULL,
  `coupon_number` int(11) NOT NULL,
  `coupon_code` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_coupon`
--

INSERT INTO `tbl_coupon` (`coupon_id`, `coupon_name`, `coupon_time`, `coupon_condition`, `coupon_number`, `coupon_code`) VALUES
(1, 'Giảm giá 30/4', 10, 1, 10, 'HDH375Y'),
(4, 'Giảm giá Covid', 5, 2, 100000, 'COVID99'),
(5, 'fd', 1, 2, 1234, 'fd');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customers`
--

CREATE TABLE `tbl_customers` (
  `customer_id` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_customers`
--

INSERT INTO `tbl_customers` (`customer_id`, `customer_name`, `customer_email`, `customer_password`, `customer_phone`, `created_at`, `updated_at`) VALUES
(8, 'Trần Long', 'abc@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '0977293389', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `order_status` int(20) NOT NULL,
  `order_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `customer_id`, `shipping_id`, `order_status`, `order_code`, `created_at`, `updated_at`) VALUES
(17, 8, 18, 1, 'c390b', '2022-02-22 16:45:42', NULL),
(18, 8, 19, 1, 'efe84', '2022-02-22 17:03:24', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order_details`
--

CREATE TABLE `tbl_order_details` (
  `order_details_id` bigint(20) UNSIGNED NOT NULL,
  `order_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_sales_quantity` int(11) NOT NULL,
  `product_coupon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_feeship` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order_details`
--

INSERT INTO `tbl_order_details` (`order_details_id`, `order_code`, `product_id`, `product_name`, `product_price`, `product_sales_quantity`, `product_coupon`, `product_feeship`, `created_at`, `updated_at`) VALUES
(16, '3790e', 11, 'Tay cầm chơi game PS4 màu trắng', '500000', 2, 'COVID99', '50000', NULL, NULL),
(17, '3790e', 10, 'Tay cầm chơi game PS4 màu đỏ', '60000', 2, 'COVID99', '50000', NULL, NULL),
(18, '3790e', 9, 'Máy PS4 màu đỏ', '5000000', 1, 'COVID99', '50000', NULL, NULL),
(19, '3790e', 7, 'Tay cầm chơi game PS4 màu đỏ', '60000', 2, 'COVID99', '50000', NULL, NULL),
(20, '3790e', 8, 'Tay cầm chơi game PS4 màu trắng', '500000', 2, 'COVID99', '50000', NULL, NULL),
(21, '699d7', 11, 'Tay cầm chơi game PS4 màu trắng', '500000', 2, 'COVID99', '50000', NULL, NULL),
(22, '699d7', 10, 'Tay cầm chơi game PS4 màu đỏ', '60000', 6, 'COVID99', '50000', NULL, NULL),
(23, '699d7', 9, 'Máy PS4 màu đỏ', '5000000', 4, 'COVID99', '50000', NULL, NULL),
(24, '699d7', 7, 'Tay cầm chơi game PS4 màu đỏ', '60000', 3, 'COVID99', '50000', NULL, NULL),
(25, '699d7', 8, 'Tay cầm chơi game PS4 màu trắng', '500000', 2, 'COVID99', '50000', NULL, NULL),
(26, '346b1', 11, 'Tay cầm chơi game PS4 màu trắng', '500000', 1, 'HDH375Y', '10000', NULL, NULL),
(27, '346b1', 12, 'Máy PS4 màu đỏ', '5000000', 1, 'HDH375Y', '10000', NULL, NULL),
(28, 'b0374', 11, 'Tay cầm chơi game PS4 màu trắng', '500000', 1, 'no', '10000', NULL, NULL),
(29, 'b0374', 10, 'Tay cầm chơi game PS4 màu đỏ', '60000', 1, 'no', '10000', NULL, NULL),
(30, '2c7fc', 11, 'Tay cầm chơi game PS4 màu trắng', '500000', 1, 'no', '10000', NULL, NULL),
(31, 'baca3', 11, 'Tay cầm chơi game PS4 màu trắng', '500000', 1, 'no', '10000', NULL, NULL),
(32, 'baca3', 12, 'Máy PS4 màu đỏ', '5000000', 1, 'no', '10000', NULL, NULL),
(33, 'a094f', 10, 'Tay cầm chơi game PS4 màu đỏ', '60000', 1, 'no', '10000', NULL, NULL),
(34, 'a094f', 8, 'Tay cầm chơi game PS4 màu trắng', '500000', 1, 'no', '10000', NULL, NULL),
(35, '168cf', 14, 'Xbox 11233', '1500000', 1, 'COVID99', '50000', NULL, NULL),
(36, '168cf', 12, 'Máy PS4 màu đỏ', '5000000', 1, 'COVID99', '50000', NULL, NULL),
(37, '168cf', 11, 'Tay cầm chơi game PS4 màu trắng', '500000', 1, 'COVID99', '50000', NULL, NULL),
(38, 'd8ba7', 2, 'Tay cầm chơi game PS4 màu trắng', '500000', 10, 'COVID99', '25000', NULL, NULL),
(39, 'd8ba7', 11, 'Tay cầm chơi game PS4 màu trắng', '500000', 3, 'COVID99', '25000', NULL, NULL),
(40, 'd8ba7', 14, 'Xbox 11233', '1500000', 5, 'COVID99', '25000', NULL, NULL),
(41, 'd8ba7', 7, 'Tay cầm chơi game PS4 màu đỏ', '60000', 4, 'COVID99', '25000', NULL, NULL),
(42, 'd8ba7', 9, 'Máy PS4 màu đỏ', '5006000', 8, 'COVID99', '25000', NULL, NULL),
(43, '9681f', 2, 'Tay cầm chơi game PS4 màu trắng', '500000', 6, 'HDH375Y', '50000', NULL, NULL),
(44, '9681f', 1, 'Tay cầm chơi game PS4 màu đỏ', '60000', 5, 'HDH375Y', '50000', NULL, NULL),
(45, '9681f', 7, 'Tay cầm chơi game PS4 màu đỏ', '60000', 10, 'HDH375Y', '50000', NULL, NULL),
(46, '9681f', 5, 'Tay cầm chơi game PS4 màu trắng', '500000', 5, 'HDH375Y', '50000', NULL, NULL),
(47, 'c390b', 15, 'ss a50 gfdgfdg', '1200000', 1, 'no', '10000', NULL, NULL),
(48, 'efe84', 9, 'Máy PS4 màu đỏ', '5006000', 1, 'COVID99', '10000', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_quantity` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_sold` int(11) NOT NULL,
  `product_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `product_name`, `product_quantity`, `product_sold`, `product_slug`, `category_id`, `brand_id`, `product_desc`, `product_content`, `product_price`, `product_image`, `product_status`, `created_at`, `updated_at`) VALUES
(1, 'Tay cầm chơi game PS4 màu đỏ', '5', 5, 'tay-cam-ps4-1', 3, 1, 'Tay cầm chơi game PS4 màu đỏ', 'Tay cầm chơi game PS4 màu đỏ', '60000', 'Tay-cầm-PS4-Slim-Chính-Hãng-Màu-Đỏ-Dualshock-4-red-GameStation8.jpg', 0, NULL, NULL),
(2, 'Tay cầm chơi game PS4 màu trắng', '44', 6, 'tay-cam-choi-game-ps4-mau-trang-1', 3, 1, 'Tay cầm chơi game PS4 màu trắng', 'Tay cầm chơi game PS4 màu trắng', '500000', 'Tay-cầm-PS4-Slim-Chính-Hãng-Màu-Trắng-Dualshock-4-white-GameStation89.jpg', 0, NULL, NULL),
(3, 'Máy PS4 màu đỏ', '30', 0, 'may-ps4-mau-do', 2, 1, 'Máy PS4 màu đỏ', 'Máy PS4 màu đỏ', '3500000', 'sony-tung-ra-thi-truong-may-ps4-pro-marvels-spider-man-phien-ban-gioi-han-anh-382.jpg', 0, NULL, NULL),
(4, 'Tay cầm chơi game PS4 màu đỏ', '30', 0, 'tay-cam-ps4-2', 3, 1, 'Tay cầm chơi game PS4 màu đỏ', 'Tay cầm chơi game PS4 màu đỏ', '60000', 'Tay-cầm-PS4-Slim-Chính-Hãng-Màu-Đỏ-Dualshock-4-red-GameStation8.jpg', 0, NULL, NULL),
(5, 'Tay cầm chơi game PS4 màu trắng', '15', 5, 'tay-cam-choi-game-ps4-mau-trang-2', 3, 1, 'Tay cầm chơi game PS4 màu trắng', 'Tay cầm chơi game PS4 màu trắng', '500000', 'Tay-cầm-PS4-Slim-Chính-Hãng-Màu-Trắng-Dualshock-4-white-GameStation89.jpg', 0, NULL, NULL),
(6, 'Máy PS4 màu đỏ', '70', 0, 'may-ps4-mau-do', 2, 1, 'Máy PS4 màu đỏ', 'Máy PS4 màu đỏ', '5600000', 'sony-tung-ra-thi-truong-may-ps4-pro-marvels-spider-man-phien-ban-gioi-han-anh-382.jpg', 0, NULL, NULL),
(7, 'Tay cầm chơi game PS4 màu đỏ', '70', 127, 'tay-cam-ps4-3', 3, 1, 'Tay cầm chơi game PS4 màu đỏ', 'Tay cầm chơi game PS4 màu đỏ', '60000', 'Tay-cầm-PS4-Slim-Chính-Hãng-Màu-Đỏ-Dualshock-4-red-GameStation8.jpg', 0, NULL, NULL),
(8, 'Tay cầm chơi game PS4 màu trắng', '50', 20, 'tay-cam-choi-game-ps4-mau-trang-3', 3, 1, 'Tay cầm chơi game PS4 màu trắng', 'Tay cầm chơi game PS4 màu trắng', '500000', 'Tay-cầm-PS4-Slim-Chính-Hãng-Màu-Trắng-Dualshock-4-white-GameStation89.jpg', 0, NULL, NULL),
(9, 'Máy PS4 màu đỏ', '30', 27, 'may-ps4-mau-do', 2, 1, 'Máy PS4 màu đỏ', 'Máy PS4 màu đỏ', '5006000', 'sony-tung-ra-thi-truong-may-ps4-pro-marvels-spider-man-phien-ban-gioi-han-anh-382.jpg', 0, NULL, NULL),
(10, 'Tay cầm chơi game PS4 màu đỏ', '20', 30, 'tay-cam-ps4-4', 3, 1, 'Tay cầm chơi game PS4 màu đỏ', 'Tay cầm chơi game PS4 màu đỏ', '60000', 'Tay-cầm-PS4-Slim-Chính-Hãng-Màu-Đỏ-Dualshock-4-red-GameStation8.jpg', 0, NULL, NULL),
(11, 'Tay cầm chơi game PS4 màu trắng', '9', 11, 'tay-cam-choi-game-ps4-mau-trang-4', 3, 1, 'Tay cầm chơi game PS4 màu trắng', 'Tay cầm chơi game PS4 màu trắng', '500000', 'Tay-cầm-PS4-Slim-Chính-Hãng-Màu-Trắng-Dualshock-4-white-GameStation89.jpg', 0, NULL, NULL),
(12, 'Máy PS4 màu đỏ', '49', 1, 'may-ps4-mau-do', 2, 1, 'Máy PS4 màu đỏ', 'Máy PS4 màu đỏ', '5000000', 'sony-tung-ra-thi-truong-may-ps4-pro-marvels-spider-man-phien-ban-gioi-han-anh-382.jpg', 0, NULL, NULL),
(14, 'Xbox 11233', '19', 1, 'xbox-1-1', 1, 1, '<p>dasdasd</p>', '<p>asdasd</p>', '1500000', '471937-microsoft-xbox-one-x69.jpg', 0, NULL, NULL),
(15, 'ss a50 gfdgfdg', '1', 1, '3', 6, 3, '<p>gdf</p>', '<p>gfd</p>', '1200000', 'iphone-12-pro-xam-new-600x600-600x60031.jpg', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `shipping_id` int(10) UNSIGNED NOT NULL,
  `shipping_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_notes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_method` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`shipping_id`, `shipping_name`, `shipping_address`, `shipping_phone`, `shipping_email`, `shipping_notes`, `shipping_method`, `created_at`, `updated_at`) VALUES
(18, 'gbf', 'fds', '0397348596', 'abc@gmai.com', 'dsa', 0, NULL, NULL),
(19, 'long', 'fds', '0397348596', 'abc@gmai.com', 'bgc', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `slider_id` int(11) NOT NULL,
  `slider_name` varchar(255) NOT NULL,
  `slider_status` int(11) NOT NULL,
  `slider_image` varchar(100) NOT NULL,
  `slider_desc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_slider`
--

INSERT INTO `tbl_slider` (`slider_id`, `slider_name`, `slider_status`, `slider_image`, `slider_desc`) VALUES
(1, 'Slider 1', 1, 'slider149.jpg', 'Thông tin khuyến mãi nạp thẻ game'),
(2, 'Slider 1', 1, 'slider188.jpg', 'dasdasdasdasdasd'),
(3, 'Slider 2', 1, 'slider275.jpg', 'dsadasdas'),
(4, 'Slider 3', 0, 'slider318.jpg', 'dasdasdasd');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_tinhthanhpho`
--

CREATE TABLE `tbl_tinhthanhpho` (
  `matp` varchar(5) CHARACTER SET utf8 NOT NULL,
  `name_city` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `tbl_tinhthanhpho`
--

INSERT INTO `tbl_tinhthanhpho` (`matp`, `name_city`, `type`) VALUES
('01', 'Thành phố Hà Nội', 'Thành phố Trung ương'),
('02', 'Tỉnh Hà Giang', 'Tỉnh'),
('04', 'Tỉnh Cao Bằng', 'Tỉnh'),
('06', 'Tỉnh Bắc Kạn', 'Tỉnh'),
('08', 'Tỉnh Tuyên Quang', 'Tỉnh'),
('10', 'Tỉnh Lào Cai', 'Tỉnh'),
('11', 'Tỉnh Điện Biên', 'Tỉnh'),
('12', 'Tỉnh Lai Châu', 'Tỉnh'),
('14', 'Tỉnh Sơn La', 'Tỉnh'),
('15', 'Tỉnh Yên Bái', 'Tỉnh'),
('17', 'Tỉnh Hoà Bình', 'Tỉnh'),
('19', 'Tỉnh Thái Nguyên', 'Tỉnh'),
('20', 'Tỉnh Lạng Sơn', 'Tỉnh'),
('22', 'Tỉnh Quảng Ninh', 'Tỉnh'),
('24', 'Tỉnh Bắc Giang', 'Tỉnh'),
('25', 'Tỉnh Phú Thọ', 'Tỉnh'),
('26', 'Tỉnh Vĩnh Phúc', 'Tỉnh'),
('27', 'Tỉnh Bắc Ninh', 'Tỉnh'),
('30', 'Tỉnh Hải Dương', 'Tỉnh'),
('31', 'Thành phố Hải Phòng', 'Thành phố Trung ương'),
('33', 'Tỉnh Hưng Yên', 'Tỉnh'),
('34', 'Tỉnh Thái Bình', 'Tỉnh'),
('35', 'Tỉnh Hà Nam', 'Tỉnh'),
('36', 'Tỉnh Nam Định', 'Tỉnh'),
('37', 'Tỉnh Ninh Bình', 'Tỉnh'),
('38', 'Tỉnh Thanh Hóa', 'Tỉnh'),
('40', 'Tỉnh Nghệ An', 'Tỉnh'),
('42', 'Tỉnh Hà Tĩnh', 'Tỉnh'),
('44', 'Tỉnh Quảng Bình', 'Tỉnh'),
('45', 'Tỉnh Quảng Trị', 'Tỉnh'),
('46', 'Tỉnh Thừa Thiên Huế', 'Tỉnh'),
('48', 'Thành phố Đà Nẵng', 'Thành phố Trung ương'),
('49', 'Tỉnh Quảng Nam', 'Tỉnh'),
('51', 'Tỉnh Quảng Ngãi', 'Tỉnh'),
('52', 'Tỉnh Bình Định', 'Tỉnh'),
('54', 'Tỉnh Phú Yên', 'Tỉnh'),
('56', 'Tỉnh Khánh Hòa', 'Tỉnh'),
('58', 'Tỉnh Ninh Thuận', 'Tỉnh'),
('60', 'Tỉnh Bình Thuận', 'Tỉnh'),
('62', 'Tỉnh Kon Tum', 'Tỉnh'),
('64', 'Tỉnh Gia Lai', 'Tỉnh'),
('66', 'Tỉnh Đắk Lắk', 'Tỉnh'),
('67', 'Tỉnh Đắk Nông', 'Tỉnh'),
('68', 'Tỉnh Lâm Đồng', 'Tỉnh'),
('70', 'Tỉnh Bình Phước', 'Tỉnh'),
('72', 'Tỉnh Tây Ninh', 'Tỉnh'),
('74', 'Tỉnh Bình Dương', 'Tỉnh'),
('75', 'Tỉnh Đồng Nai', 'Tỉnh'),
('77', 'Tỉnh Bà Rịa - Vũng Tàu', 'Tỉnh'),
('79', 'Thành phố Hồ Chí Minh', 'Thành phố Trung ương'),
('80', 'Tỉnh Long An', 'Tỉnh'),
('82', 'Tỉnh Tiền Giang', 'Tỉnh'),
('83', 'Tỉnh Bến Tre', 'Tỉnh'),
('84', 'Tỉnh Trà Vinh', 'Tỉnh'),
('86', 'Tỉnh Vĩnh Long', 'Tỉnh'),
('87', 'Tỉnh Đồng Tháp', 'Tỉnh'),
('89', 'Tỉnh An Giang', 'Tỉnh'),
('91', 'Tỉnh Kiên Giang', 'Tỉnh'),
('92', 'Thành phố Cần Thơ', 'Thành phố Trung ương'),
('93', 'Tỉnh Hậu Giang', 'Tỉnh'),
('94', 'Tỉnh Sóc Trăng', 'Tỉnh'),
('95', 'Tỉnh Bạc Liêu', 'Tỉnh'),
('96', 'Tỉnh Cà Mau', 'Tỉnh');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Chỉ mục cho bảng `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `tbl_coupon`
--
ALTER TABLE `tbl_coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Chỉ mục cho bảng `tbl_customers`
--
ALTER TABLE `tbl_customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD PRIMARY KEY (`order_details_id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Chỉ mục cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Chỉ mục cho bảng `tbl_tinhthanhpho`
--
ALTER TABLE `tbl_tinhthanhpho`
  ADD PRIMARY KEY (`matp`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brand_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tbl_coupon`
--
ALTER TABLE `tbl_coupon`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_customers`
--
ALTER TABLE `tbl_customers`
  MODIFY `customer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  MODIFY `order_details_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `shipping_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
