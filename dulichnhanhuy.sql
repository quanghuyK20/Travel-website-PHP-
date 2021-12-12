-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 12, 2021 lúc 03:32 PM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dulichnhanhuy`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_11_09_141028_create_tbl_admin_table', 1),
(6, '2021_11_10_031201_create_tbl_tourpackages', 2),
(7, '2021_11_12_084534_create_tbl_user', 3),
(8, '2021_11_15_140725_create_tbl_booking', 4),
(9, '2021_11_18_124148_create_tbl_payment', 5),
(10, '2021_11_18_124513_create_tbl_order_details', 5),
(11, '2021_11_21_020838_create_tbl_gallery', 6),
(12, '2021_11_21_131101_create_tbl_contact', 7),
(13, '2021_11_22_143448_create_tbl_tintuc', 8),
(14, '2021_11_23_131007_create_tbl_ykien', 9),
(15, '2021_11_24_072143_create_tbl_gioithieu', 10),
(16, '2021_11_25_040354_create_tbl_services', 11);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
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
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminid` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updationDate` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminid`, `username`, `password`, `updationDate`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', NULL, '2021-11-09 14:25:16', NULL),
(2, 'huy', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_booking`
--

CREATE TABLE `tbl_booking` (
  `booking_id` int(10) UNSIGNED NOT NULL,
  `usid` int(11) NOT NULL,
  `customer_name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buy_in_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fromdate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `todate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancelby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_booking`
--

INSERT INTO `tbl_booking` (`booking_id`, `usid`, `customer_name`, `buy_in_date`, `package_name`, `total`, `email`, `fromdate`, `todate`, `note`, `status`, `cancelby`, `created_at`, `updated_at`) VALUES
(30, 1, 'huy', '20/11/2021', 'Du lịch bụi', '103,500,000 VND', 'huy@gmail.com', '2021-10-20', '2021-10-05', 'huy dzai', '1', NULL, '2021-11-20 14:01:13', NULL),
(31, 13, 'hoang', '20/11/2021', 'Du lich', '69,000 VND', 'lehoang@gmail.com', '2021-10-20', '2021-10-06', 'hoangdzai', '1', NULL, '2021-11-20 14:02:06', NULL),
(32, 1, 'hong', '23/11/2021', '4', '127,777,777,778 VND', 'huy@gmail.com', '2021-10-20', '2021-10-06', 'huy dzai', '1', NULL, '2021-11-23 09:13:17', NULL),
(33, 1, '11111', '25/11/2021', '4', '127,777,777,778 VND', 'huy@gmail.com', '2021-10-20', '2021-10-06', 'ggggggggggggggggggggggggggggg', '1', NULL, '2021-11-25 13:58:02', NULL),
(34, 1, 'huy', '30/11/2021', 'Khám Phá Khu Du Lịch Suối Khoáng Nóng Thanh Tân', '793,500 VND', 'huy@gmail.com', '2021-12-01', '2021-12-22', 'huy dzai', '1', NULL, '2021-11-30 15:18:20', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `contact_id` int(10) UNSIGNED NOT NULL,
  `usid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_contact`
--

INSERT INTO `tbl_contact` (`contact_id`, `usid`, `contact_name`, `email`, `mobile_number`, `content`, `main_content`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Quang Huy Lê', 'huy@gmail.com', NULL, 's', 's', '2021-11-21 14:38:21', NULL),
(2, NULL, 'Quang Huy Lê', 'huy@gmail.com', NULL, 's', '44', '2021-11-21 14:42:39', NULL),
(3, NULL, 'Quang Huy Lê', 'huy@gmail.com', NULL, 's', 's', '2021-11-21 14:45:43', NULL),
(4, NULL, 'Quang Huy Lê', 'quanghuy.qh6@gmail.com', NULL, 's', 'h', '2021-11-21 14:49:20', NULL),
(5, NULL, 'Quang Huy Lê', 'huyquang748@gmail.com', NULL, 's', '4', '2021-11-21 14:50:01', NULL),
(6, NULL, 'Quang Huy Lê', 'quanghuy.qh6@gmail.com', NULL, 's', 's', '2021-11-21 14:50:54', NULL),
(7, NULL, 'Quang Huy Lê', 'huy@gmail.com', NULL, 's', '4', '2021-11-22 13:42:41', NULL),
(8, NULL, 'Hoàng', 'hoangvanloi05102000@gmail.com', NULL, 's', 'koko', '2021-11-24 14:01:09', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_gallery`
--

CREATE TABLE `tbl_gallery` (
  `gallery_id` int(10) UNSIGNED NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_infor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_gallery` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery_mt1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery_mt2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery_mt3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_gallery`
--

INSERT INTO `tbl_gallery` (`gallery_id`, `location`, `location_infor`, `image_gallery`, `gallery_mt1`, `gallery_mt2`, `gallery_mt3`, `created_at`, `updated_at`) VALUES
(5, 'BẮC NINH', NULL, 'jpg817.jpg', 'BẮC NINH', NULL, NULL, '2021-11-29 05:58:55', '2021-11-29 06:03:55'),
(6, 'CÔN ĐẢO', NULL, 'jpg1093.jpg', 'CÔN ĐẢO', NULL, NULL, '2021-11-29 05:59:28', '2021-11-29 06:04:21'),
(7, 'CÙ LAO CHÀM', NULL, 'jpg21.jpg', 'CÙ LAO CHÀM', NULL, NULL, '2021-11-29 06:00:00', '2021-11-29 06:04:41'),
(8, 'HUẾ', NULL, 'jpg277.jpg', 'HUẾ', NULL, NULL, '2021-11-29 06:01:01', '2021-11-29 06:04:49'),
(9, 'PHÚ QUỐC', NULL, 'jpg53.jpg', 'PHÚ QUỐC', NULL, NULL, '2021-11-29 06:01:17', '2021-11-29 06:04:56'),
(10, 'ĐÀ LẠT', NULL, 'jpg597.jpg', 'ĐÀ LẠT', NULL, NULL, '2021-11-29 06:01:31', '2021-11-29 06:05:03'),
(11, 'ĐÀ NẴNG', NULL, 'jpg897.jpg', 'ĐÀ NẴNG', NULL, NULL, '2021-11-29 06:01:52', '2021-11-29 06:05:15'),
(12, 'HỘI AN', NULL, 'jpg1083.jpg', 'HỘI AN', NULL, NULL, '2021-11-29 06:06:33', NULL),
(13, 'NHA TRANG', NULL, 'jpg565.jpg', 'NHA TRANG', NULL, NULL, '2021-11-29 06:07:07', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_gioithieu`
--

CREATE TABLE `tbl_gioithieu` (
  `gtid` int(10) UNSIGNED NOT NULL,
  `tieu_de` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `noi_dung` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_gt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order_details`
--

CREATE TABLE `tbl_order_details` (
  `booking_details_id` int(10) UNSIGNED NOT NULL,
  `booking_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `package_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order_details`
--

INSERT INTO `tbl_order_details` (`booking_details_id`, `booking_id`, `package_id`, `package_name`, `package_price`, `created_at`, `updated_at`) VALUES
(9, 30, 14, 'Du lịch bụi', '90000000', '2021-11-20 14:01:13', NULL),
(10, 31, 13, 'Du lich', '60000', '2021-11-20 14:02:06', NULL),
(11, 32, 18, '4', '111111111111', '2021-11-23 09:13:17', NULL),
(12, 33, 18, '4', '111111111111', '2021-11-25 13:58:02', NULL),
(13, 34, 30, 'Khám Phá Khu Du Lịch Suối Khoáng Nóng Thanh Tân', '690000', '2021-11-30 15:18:20', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `payment_id` int(10) UNSIGNED NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_payment`
--

INSERT INTO `tbl_payment` (`payment_id`, `payment_method`, `payment_status`, `created_at`, `updated_at`) VALUES
(11, 'visa', '1', '2021-11-20 14:01:13', NULL),
(12, 'visa', '1', '2021-11-20 14:02:06', NULL),
(13, 'visa', '1', '2021-11-23 09:13:17', NULL),
(14, 'visa', '1', '2021-11-25 13:58:02', NULL),
(15, 'visa', '1', '2021-11-30 15:18:20', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_services`
--

CREATE TABLE `tbl_services` (
  `svid` int(10) UNSIGNED NOT NULL,
  `ten_dich_vu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `noi_dung` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_dv` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_tintuc`
--

CREATE TABLE `tbl_tintuc` (
  `id_baiviet` int(10) UNSIGNED NOT NULL,
  `ten_bai_viet` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `noi_dung_ngan` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_tintuc`
--

INSERT INTO `tbl_tintuc` (`id_baiviet`, `ten_bai_viet`, `image`, `noi_dung_ngan`, `link`, `created_at`, `updated_at`) VALUES
(7, 'Du khách quốc tế đến Việt Nam từ ngày 20/11 cần những điều kiện gì?', 'jpg1209.jpg', 'Với giai đoạn 1 trong lộ trình đón du khách quốc tế, đại diện Bộ VHTT&DL cho biết, dự kiến bắt đầu từ 20/11/2021 đến 20/12/2021, Kiên Giang thử nghiệm quy trình đón du khách quốc tế.', 'https://cafef.vn/du-khach-quoc-te-den-viet-nam-tu-ngay-20-11-can-nhung-dieu-kien-gi-20211107085238775.chn', '2021-11-23 08:55:36', NULL),
(8, 'Chuyến du hành khắc nghiệt của những người làm du lịch ở Việt Nam', 'jpg1303.jpg', 'Tiêu đề bài hát “What doesn’t kill you make you stronger” (tạm dịch: Điều gì không giết chết bạn sẽ khiến bạn mạnh mẽ hơn) của Kelly Clarkson có lẽ khắc hoạ chính xác nhất hình ảnh của...', 'https://cafef.vn/chuyen-du-hanh-khac-nghiet-cua-nhung-nguoi-lam-du-lich-o-viet-nam-20211103091808315.chn', '2021-11-23 09:00:12', NULL),
(9, 'Lào Cai mời đầu tư khu dân cư kết hợp dịch vụ du lịch hơn 430 tỷ đồng', 'jpg1156.jpg', 'Dự án đầu tư xây dựng khu dân cư và dịch vụ du lịch (Đồng Sín Chải), xã Na Hối, đô thị Bắc Hà, huyện Bắc Hà, tỉnh Lào Cai có quy mô 8.66 ha với tổng chi phí thực hiện 432,1 tỷ đồng...', 'https://cafef.vn/lao-cai-moi-dau-tu-khu-dan-cu-ket-hop-dich-vu-du-lich-hon-430-ty-dong-20211118005723097.chn', '2021-11-29 05:32:13', '2021-11-29 05:41:22'),
(10, 'Sa Pa sẵn sàng tâm thế “phá băng” du lịch sau đại dịch', 'jpg1578.jpg', '\"Cơn khát\" được \"phá băng\", phục hồi du lịch sau đỉnh dịch trong bối cảnh bình thường mới đang là mong mỏi của những lao động du lịch vùng cao.', 'https://cafef.vn/sa-pa-san-sang-tam-the-pha-bang-du-lich-sau-dai-dich-20211115143916711.chn', '2021-11-29 05:33:43', NULL),
(11, 'HSBC: Du lịch Việt bắt đầu \'rã đông\'', 'jpg1516.jpg', 'Việc mở cửa biên giới và hồi sinh ngành du lịch của Việt Nam khá dè dặt và thận trọng nhưng đã có những tác động không nhỏ đối với nền kinh tế, đặc biệt là thị trường lao động và thặng...', 'https://cafef.vn/hsbc-du-lich-viet-bat-dau-ra-dong-20211109172843907.chn', '2021-11-29 05:34:33', '2021-11-29 05:41:03'),
(12, 'Du lịch “chuyển mình”, chủ động thích ứng trong tình hình mới', 'jpg1316.jpg', 'Mở của đón khách sẽ không tránh được những sóng gió. Tuy nhiên để du lịch phát triển bền vững, các đơn vị cần có sự liên kết chặt chẽ, thích ứng để sống chung với dịch.', 'https://cafef.vn/du-lich-chuyen-minh-chu-dong-thich-ung-trong-tinh-hinh-moi-20211101142626699.chn', '2021-11-29 05:35:12', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_tourpackages`
--

CREATE TABLE `tbl_tourpackages` (
  `package_id` int(10) UNSIGNED NOT NULL,
  `package_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_features` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_details` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_image1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_image2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_image3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_image4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mota1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mota2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mota3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mota4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_tourpackages`
--

INSERT INTO `tbl_tourpackages` (`package_id`, `package_name`, `package_type`, `package_location`, `package_price`, `package_features`, `package_details`, `package_image`, `package_image1`, `package_image2`, `package_image3`, `package_image4`, `mota1`, `mota2`, `mota3`, `mota4`, `created_at`, `updated_at`) VALUES
(21, 'Combo du lịch Đà Nẵng Vinpearl Riverfront 5 sao', 'Gia đình /  cặp đôi', 'Vinwonder Hội An', '899000', 'Điểm xuất phát: Đà Nẵng / Thời gian tour: 2 Ngày 1 đêm / Phương tiện: Xe bus đi VinWonders Hội An miễn phí (2 chiều)', 'Một đêm ngủ hạng phòng Studio\r\nMiễn phí bữa sáng hàng ngày\r\nMiễn phí Tham quan Vinwonders Hội An\r\nMiễn phí xe đưa đón đi Vinwonders Hội An hằng ngày\r\nMiễn phí nước uống detox thanh lọc/ giải nhiệt khi check-in\r\nMiễn phí wifi, trà, cà phê\r\nMiễn phí sử dụng hồ bơi trong nhà và hồ bơi vô cực ngoài trời, phòng gym\r\nƯu đãi đặc biệt Vinpearl Condotel Riverfront Đà Nẵng dành cho miền Trung\r\nĐối tượng áp dụng: Huế – Đà Nẵng – Quảng Nam – Quảng Ngãi – Quảng Bình – Quảng Trị – Kontum – Bình Định – Phú Yên – Gia Lai – Đăk Lăk – Đăk Nông – Nghệ An – Hà Tĩnh\r\nVinpearl Condotel Riverfront Đà Nẵng sẽ miễn phí 1 bữa ăn gia đình set menu Việt buổi trưa hoặc tối sử dụng tại khách sạn.\r\nLƯU Ý\r\nĐiều kiện áp dụng:\r\nĐặt tối thiểu 2 khách/ phòng\r\nThời gian đặt: từ nay – 24/05/2021\r\nHạn lưu trú: từ nay – 24/05/2021\r\nPhụ thu:\r\nTối đa 2 trẻ mỗi phòng dưới 4 tuổi miễn phí khi ở chung với bố mẹ\r\nTừ 4 tuổi đến 12 tuổi phụ thu 423,000đ/1 trẻ/1 đêm\r\nTừ 12 tuổi tuổi trở lên, yêu cầu giường phụ được áp dụng với giá 969,000đ/đêm bao gồm ăn sáng\r\nPhụ thu bữa ăn:\r\nTừ 4 – 12 tuổi: phụ thu 100,000vnd/khách\r\nTrên 12 tuổi: phụ thu 300,000vnd/khách', 'jpg163.jpg', 'jpg723.jpg', 'jpg175.jpg', 'jpg1040.jpg', 'jpg329.jpg', 'River Safari Nam Hội An', 'Vinpearl Condotel Riverfront Đà Nẵng', 'River Safari Nam Hội An', 'Vinwonder Nam Hội An', '2021-11-28 20:14:23', '2021-11-29 04:43:07'),
(22, '[An Giang] Đi Xe Ba Gác Tham Quan Cù Lao Ông Hổ', 'Gia đình / cặp đôi', 'Cù Lao Ông Hổ', '1010000', 'Điểm xuất phát: An Giang / Thời gian tour: 1 Ngày / Phương tiện: Phà, Xe ba gác', 'An Giang là một tỉnh thuộc đồng bằng sông Cửu Long, nơi này nổi tiếng với nhiều địa điểm du lịch như Cù Lao Ông Hổ, khu lưu niệm Tôn Đức Thắng, Đền thờ Bác Tôn. Khi tới đây du khách có thể trải nghiệm những hoạt động như  đi tham quan bằng xe ba gác, ăn hoa quả tùy thích ở vườn trái  cây của người dân địa phương. Trên đây là những địa điểm, hoạt đông độc đáo mà chúng tôi muốn giới thiện đến ban. Hãy cùng Tadivui khám phá những đại điểm trên nhé ! \r\n\r\n8h00 đón khách tạibến phà Trà Ôn.\r\n\r\nQuý khách lên phà vượt sông Hậu sang Cù Lao Ông Hổ – Xã Mỹ Hòa Hưng.\r\n\r\nĐến Cù Lao Ông Hổ, quý khách lên xe Ba Gác đi một vòng cù lao ngắm cảnh và thưởng ngoạn cuộc sống của người dân địa phương.ĐếnKhu lưu niệm Chủ tịch Tôn Đức Thắng: viếng Đền thờ Bác Tôn, tham quan Nhà trưng bày thân thế và sự nghiệp Bác Tôn, Nhà lưu niệm Bác Tôn.\r\n\r\nĂn trưa tại Vườn trái cây của người dân địa phương.\r\n\r\nSau đó, quý khách lên xe ba gác về lại bến phà Trà Ôn, xuống phà về Long Xuyên. Tiễn đoàn và hẹn gặp lại!', 'jpg839.jpg', 'jpg542.jpg', 'jpg260.jpg', 'jpg21.jpg', 'jpg929.jpg', 'Phà vượt sông Hậu sang Cù Lao Ông Hổ – Xã Mỹ Hòa Hưng.', 'Nhà trưng bày thân thế và sự nghiệp Bác Tôn.', 'Nhà lưu niệm Bác Tôn.', 'Vườn trái cây của người dân địa phương.', '2021-11-28 20:56:21', '2021-11-29 13:27:54'),
(23, '[Cần Thơ] Du Lịch Cần Thơ City- Một Ngày Tây Đô', 'Gia đình / cặp đôi', 'Cần Thơ City', '550000', 'Điểm xuất phát: Cần Thơ / Thời gian tour: 1 Ngày / Phương tiện: Xe du lịch, Thuyền tham quan', 'Sáng : 07h00: Quý khách tập trung tại bến Ninh Kiều xuống tàu du lịch tham quan chợ nổi Cái Răng, chợ nổi bán sĩ lớn nhất Miền Tây. Len lỏi giữa hàng trăm chiếc ghe bán hàng nông sản, quý khách có thể thưởng thức những đặc sản địa phương tại ghe. Qúy khách có thể lên tàu địa phương hoặc các bè trái cây để mua về làm quà cho người thân.\r\n\r\n08h30: Thuyền tiếp tục vào rạch nhỏ tham quan nhà vườn. Tự do thưởng thức các trái cây đặc sản địa phương (theo mùa như: mận, bưởi, dâu Hạ Châu…).\r\n\r\n11h00: Quý khách trở về bến Ninh Kiều, về khách sạn nghỉ ngơi. Ăn uống tự túc.\r\n\r\n Chiều: 14h00: Xe đón đoàn tại khách sạn di chuyển tham quan Nhà Cổ Bình Thủy – ngôi nhà hơn 140 năm tuổi có sự giao thia hài hoà giữa hai nét văn hoá kiến trúc Đông Tây, ngoài ra ngôi nhà còn là phim trường chính của những bộ phim nổi tiếng như: Người Đẹp Tây Đô, Những Nẻo Đường Phù Sa, Người Tình…\r\n\r\nSau khi tìm hiểu Nhà Cổ đoàn sẽ tiếp tục di chuyển đến bến phà Cô Bắc. Đò ngang sẽ xuôi dòng sông Hậu đưa Qúy khách đến với làng cá bè Cồn Sơn tại đây đoàn sẽ được tham quan mô hình nuôi cá bè với khoảng 50 bè cá, cùng người địa phương cho cá ăn, chụp ảnh lưu niệm.\r\n\r\nRời bè cá, Quý khách tiếp tục di chuyển trên sông Hậu. Đò ngang đưa đoàn đến rạch Vàm Hồ sau đó trải nghiệm xuồng chèo, quý khách tự tay chèo len lỏi theo con rạch để đến Cồn Sơn. Quý khách sẽ  được  người dân Cồn Sơn mến khách chào đón bằng loại  nước mát đặc trưng được nấu từ lá cây Sa Kê và Đinh Lăng trong vườn nhà, trải nghiệm làm các loại bánh ngon dân dã mang đậm chất Nam Bộ.\r\n\r\nĐoàn di chuyển tham quan Vườn chôm chôm/bưởi hay vú sữa tùy vào từng thởi điểm.\r\n\r\nTrong suốt hình trình khám phá và tìm hiểu về người và đất Cồn Sơn quý khách sẽ được thưởng thức các trái cây đặc sản địa phương (theo mùa như: vú sữa, ổi, bưởi…)\r\n\r\n18h00: Quý khách trở về đất liền, HDV đưa quý khách về điểm đón ban đầu, chào tạm biệt và hẹn gặp lại quý khách.', 'png539.png', 'png524.png', 'jpg219.jpg', 'jpg883.jpg', 'jpg540.jpg', 'Chợ nổi Cái Răng.', 'Nhà Cổ Bình Thủy .', 'Cồn Sơn.', 'Vườn chôm chôm/bưởi hay vú sữa tùy vào từng thởi điểm.', '2021-11-28 21:06:00', '2021-11-29 13:27:58'),
(24, '[Bà Rịa-Vũng Tàu] Du Lịch Côn Đảo Tâm Linh', 'Gia đình / cặp đôi', 'Côn đảo', '2100000', 'Điểm xuất phát: Bà Rịa-Vũng Tàu / Thời gian tour: 2 Ngày 1 Đêm / Phương tiện: Xe du lịch chất lượng cao', 'NGÀY 1: SÂN BAY CỎ ỐNG – CÔN ĐẢO (Ăn trưa, tối)\r\n\r\nSáng: Xe đón đoàn tại sân bay Cỏ Ống/bến tàu, đưa đoàn về thị trấn Côn Sơn. Quý khách sẽ được nghe thuyết minh các điểm trên đường về như: làng Cỏ Ống, Lò Vôi, Nghĩa trang Hàng Keo,cụm đảo nhỏ phía ngoài khơi,đời sống văn hóa và lịch sử về Côn Đảo…\r\n\r\nĐến thị trấn dùng cơm trưa và nhận phòng, nghỉ ngơi.\r\n\r\nChiều14h00:Xe và HDV đón Quý khách tham quan di tích lịch sử Côn Đảo theo trình tự sau:\r\n\r\nTrại Phú Hải:Là trại tù cổ kính và lâu đời do thực dân Pháp xây dựng. Nơi đây nổi tiếng với hầm xay lúa, khu biệt giam và khu đập đá Côn Lôn.\r\nChuồng cọp kiểu Pháp: Hay còn gọi là trại Phú Thọ, là tâm điểm nhà tù Côn Đảo. Khám phá hệ thống Chuồng Cọp kiên cố được xây dựng ẩn giữa các tòa nhà như mê cung. Xem chuồng cọp và nghe mô tả các hình thức tra tấn thể xác các tù nhân.\r\nChuồng cọp kiểu Mỹ:Hay còn gọi là trại Phú Bình với các dãy phòng giam nhỏ hẹp và ẩm thấp được xây dựng vào năm 1971. Nơi đây chủ yếu tra tấn tù nhân về tinh thần, là nơi nhận được tin Sài Gòn giải phóng đầu tiên.\r\nMiếu bà Phi Yến: hay còn có tên chữ là An Sơn Miếu. Bà Phi Yến là thứ phi của chúa Nguyễn Ánh, là 1 trong 2 người phụ nữ bảo trợ tâm linh cho người dân Côn Đảo. Viếng Miếu, nghe kể chuyện về Bà và tìm hiểu câu hát ru “Gió đưa cây cải về trời, rau răm ở lại chịu đời đắng cay”.\r\nVề lại khách sạn tắm biển tự do nghỉ ngơi và dùng cơm tối.\r\n\r\nTối tự do dạo phố biển Côn Đảo.\r\n\r\nTối 23h00:Đưa đoàn viếng thắp hương tại Nghĩa trang Hàng Dương nơi có gần 2000 ngôi mộ được yên nghỉ nơi đây. Viếng đài tưởng niệm liệt sĩ và viếng mộ chị Võ Thị Sáu là nữ tử tù đầu tiên tại Côn Đảo,nổi tiếng linh thiêng và huyền bí.\r\n\r\nNGÀY 2: THAM QUAN CÔN ĐẢO (Ăn sáng,trưa,chiều)\r\n\r\nSáng: Quý khách dùng điểm tâm sáng.\r\n\r\nXe và HDV đón Quý khách tham quan theo trình tự sau:\r\n\r\nViếng chùa Núi Một:Hay còn gọi là Vân Sơn Tự. Một di tích và danh thắng mới được trùng tu xây dựng lại với kinh phí trên 100 tỷ đồng. Quý khách có thể ngắm toàn cảnh đẹp Côn Đảo từ trên cao,ngôi chùa mang hoàn toàn lối kiến trúc Miền Bắc.\r\nTham quan mua sắm tại khu trưng bày,bày bán ngọc trai Côn Đảo,tìm hiểu cách nuôi cấy ngọc tại vùng biển dưới môi trường nước mặn.\r\nNgắm cảnhMũi Cá Mập. Viếng bia tưởng niệm cuộc vượt ngục vũ trang lớn nhất Côn Đảo. Ngắm cảnhBãi Nhát – bãi biển cấu tạo bằng hàng triệu viên đá cuội, một bãi cát trắng tinh lộ ra khi thủy triều xuống, đỉnh Tình Yêu.\r\nCảng Bến Đầm: Tham quan cảng lớn nhất và là cảng kinh tế chính của Côn Đảo. Ngắm cảnh đẹp hòn Bà và núi Thánh Giá.\r\nQuay về khách sạn nghỉ ngơi, trả phòng,ăn trưa.\r\n\r\nTham quan Bảo Tàng Côn Đảo – một công trình chào mừng đại lễ 1 ngàn năm Thăng Long Hà Nội do UBND Thành phố Hà Nội xây dựng tặng cho Côn Đảo,đây là nơi lưu giữ những chứng tích tội ác cùa chế độ tù đày tại nhà tù Côn Đảo.\r\n\r\nXe đưa đoàn đi mua sắm đặc sản Côn Đảovề làm quà cho người thân.\r\n\r\nXe khách sạn đưa đoàn ra sân bay Cỏ Ống/bến tàu. Chia tay đoàn hẹn ngày gặp lại.', 'jpg20.jpg', 'jpg827.jpg', 'jpg830.jpg', 'jpg661.jpg', 'jpg1031.jpg', 'Trại Phú Hải', 'Chuồng cọp kiểu Pháp', 'Miếu bà Phi Yến', 'Bảo Tàng Côn Đảo', '2021-11-28 21:14:35', '2021-11-29 13:28:03'),
(25, 'Đà Nẵng – Hội An – Cù Lao Chàm –  Huế', 'Gia đình / cặp đôi', 'Hội An, Ngũ Hành Sơn, Cù Lao Chàm, Bà Nà Hills, Động Thiên Đường, Động Phong Nha', '5595000', 'Điểm xuất phát: Đà Nẵng / Thời gian tour: 5 Ngày 4 Đêm / Phương tiện: Xe Du Lịch Cáp Treo Khứ Hồi Tàu Hỏa Leo Núi Tàu Cao Tốc Thuyền sông Son/ Xe Điện Động Thiên Đường', 'Ngày 01:  Đà Nẵng – Ngũ Hành Sơn – Hội An (Ăn trưa, tối)\r\n\r\nSáng: Xe và hướng dẫn đón quý khách tại sân bay đưa du khách ăn trưa tại nhà hàng khách sạn. Sau đó, nhận phòng nghỉ trưa.\r\n\r\nChiều: 15h30 khởi hành đi Hội An. Trên đường đi, quý khách sẽ được chiêm ngưỡng:\r\n\r\nNgũ hành sơn – là hệ thống 5 ngọn núi gồm nhiều hang động đẹp. Đến với Ngũ Hành Sơn du khách còn có cơ hội tìm hiểu làng nghề đá Non Nước và mua những món quà lưu niệm cho chuyến du lịch của mình.\r\nĐến Hội An khoảng 16h00, quý khách bách bộ tham quan Phố Cổ Hội An –  một thương cảng sầm uất của xứ Đàng Trong vào thế kỷ 16-18 với Hội quán Phúc Kiến, Nhà cổ Tấn Ký hoặc Phùng Hưng, Chùa Cầu hơn 400 năm tuổi – là biểu tượng đặc trưng của Thành phố Hội An ngày nay.\r\nTối: Ăn tối tại nhà hàng phố cổ. Khoảng 20h khởi hành về Đà Nẵng. Quý khách tự do hòa mình vào không khí phố đèn lồng, hoa đăng của Đà Nẵng về đêm.\r\n\r\nNgày 02: Bà Nà Hills (Ăn sáng, trưa, tối)\r\n\r\nSáng: Sau khi dùng điểm tâm. 7h30 xe và HDV đến đón quý khách khởi hành đi khu du lịch Bà Nà – Núi Chúa, nơi mà quý khách khám phá những khoảnh khắc giao mùa bất ngờ Xuân – Hạ – Thu – Đông trong 1 ngày.\r\n\r\nNgồi cáp treo dài nhất thế giới (gần 6.000m), tham quan Đồi Vọng Nguyệt, chùa Linh Ứng, Thích Ca Phật Đài, khu chuồng ngựa cũ của Pháp, vườn tịnh tâm và đỉnh nhà rông.\r\nTiếp tục ngồi  cáp treo đến đỉnh Nghinh Phong, biệt thự Lệ Nim, Lầu Vọng Nguyệt, Cầu Treo Bà Nà và chinh phục đỉnh núi Chúa ở độ cao 1.487m so với mực nước biển để thưởng thức quang cảnh núi rừng Bà Nà và toàn cảnh Đà Nẵng và Quảng Nam trên cao.\r\nTrưa: Ăn trưa tại nhà hàng Bà Nà.\r\n\r\nChiều: Tiếp tục tham gia các trò chơi tại khu vui chơi giải trí Fantasy park với cảm giác phiêu lưu mới lạ, ngộ nghĩnh, hấp dẫn, hiện đại như: vòng quay tình yêu, Phi công Skiver, Đường đua lửa, Xe điện đụng Ngôi nhà ma...\r\n\r\n16h quay về lại thành phố Đà Nẵng.\r\n\r\nTối: Ăn tối tại nhà hàng khách sạn. Quý khách tự do tham quan thành phố về đêm.\r\n\r\nNgày 03: Cù Lao Chàm – Huế (Ăn sáng, trưa, tối)\r\n\r\nSáng: Dùng Buffet sáng tại khách sạn.Quý trả phòng khách sạn.\r\n\r\n7h30: Xe và hướng dẫn đón quý khách tại khách sạn. Khởi hành vào Cửa Đại – Hội An. Quý khách lên tàu Cao Tốc ra Cù Lao Chàm. Tham quan:\r\n\r\nKhu dự trữ sinh quyển Thế giới gồm cụm đảo ngoài khơi biển Đông cách Hội An 12 hải lý.\r\nTham quan chùa Hải Tạng hơn 400 năm tuổi, Âu thuyền – khu vực tránh bão của ngư dân, Khu dân cư & các lăng miếu cổ.\r\nTrưa: Ăn trưa tại nhà Cù Lao Chàm với cá món đặc sản Biển.\r\n\r\nChiều: Tiếp tục thăm quan:\r\n\r\nKhu bảo tồn biển tại bãi Bắc, hòn Dài và tham gia các hoạt động: Lặn biển (Snokelling) khám phá san hô, cá cảnh, câu cá, bắt ốc, giăng lưới, tắm biển,…\r\n15h quay về lại khách sạn để quý khách lấy hành lý. 16h30 xe và HDV quay lại đón quý khách khởi hành về Huế. Khoảng 19h đến Huế. Nhận phòng khách sạn, nghỉ ngơi.\r\n\r\nTối: Ăn tối tại khách sạn. Tự do khám phá thành phố Huế về đêm.\r\n\r\nNgày 04: Huế – Động Phong Nha (Ăn sáng, trưa, tối)\r\n\r\nSáng: Dùng điểm tâm tại khách sạn. 6h30 xe và HDV đón khách tại khách sạn khởi hành đi thăm vườn quốc gia Phong Nha – Kẻ Bàng.\r\n\r\nTrên đường đi tham quan Thánh địa La Vang (được mệnh danh là tiểu vương Cung Thánh Đường)\r\nTiếp tục hành trinh quý khách được giới thiệu về các địa danh lịch sử Cách Mạng như: Thành cổ Quảng Trị, Căn Cứ Dốc Miếu, cầu Hiền Lương, song Bến Hải,… Đến Quảng Bình, tham quan vườn quốc gia Phong Nha – Kẻ Bàng. Ăn trưa tại nhà hàng.\r\nChiều: Quý khách lên thuyền:\r\n\r\nDu thuyền trên song Son thăm động Phong Nha (hang Bi Kí, Động Tiên, động Cung Đình).Tất cả sự kỳ vỹ và huyền diệu của nó đang chờ du khách đến khám phá và thưởng ngoạn.\r\nQuý khách tiếp tục theo đường Hồ Chí Minh khởi hành về Huế. 19h30 đến Huế.\r\n\r\nTối: Ăn tối tại khách sạn. Tự do khám phá thanh phố Huế về đêm.\r\n\r\nNgày 05: Huế City Tour (Ăn sáng, trưa)\r\n\r\nSáng: Dùng Buffet sáng tại khách sạn.Qúy khách làm thủ tục trả phòng và gửi hành lý tại lễ tân. 7h30 Xe và Hướng dẫn viên đón khách tại khách sạn, khởi hành đi tham quan các địa danh nổi tiếng tại Huế.\r\n\r\nTrong một buổi sáng quý khách sẽ có cơ hội tham quan 3 lăng tiêu biểu nhất của vương triều Nguyễn gồm: Lăng Minh Mạng, Lăng Khải Định, Lăng Tự Đức.\r\nĐặc biệt quý khách sẽ được trực tiếp xem biểu diễn võ thuật phái Võ Kinh Vạn An. Của ông tổ Trương Ngọc Giai, vốn là Đội trưởng đội thị vệ triều Nguyễn dưới thời vua Tự Đức.\r\nĂn trưa tại nhà hàng. Quý khách thưởng thức đầy đủ các món ăn đặc sản Huế trong một bữa trưa Buffet hoành tráng.\r\n\r\nChiều: Quý khách tham quan:\r\n\r\nĐại Nội (Hoàng Cung của 13 vị vua triều Nguyễn, triều đại phong kiến cuối cùng của Việt Nam) Quý khách sẽ tham quan: Ngọ Môn, Điện Thái Hoà, Tử Cấm Thành, Thế Miếu, Hiển Lâm Các, Cửu Đỉnh).\r\nXe tiếp tục đưa quý khách tham quan chùa Thiên Mụ. Chùa Thiên Mụ được xem là biểu tượng của Huế – sự cổ kính và vẻ đẹp của chùa đã làm cho biết bao nhiêu mặc khách giai nhân lưu luyến vùng đất này.Tiếp tục, quý khách du thuyền rồng trên sông Hương.\r\n17h xe dón quý khách tại bến thuyền du lịch Tòa Khâm về khách sạn lấy hành lý và tiễn quý khách ra sân bay Phú Bài lúc 18h. Kết thúc chương trình. Xin chào và hẹn gặp lại quý khách trong các chương trình sau.', 'jpg240.jpg', 'jpg898.jpg', 'jpeg542.jpeg', 'jpg834.jpg', 'jpg589.jpg', 'Phố Cổ Hội An', 'khu du lịch Bà Nà – Núi Chúa', 'Cù Lao Chàm', 'Đại Nội', '2021-11-28 21:40:56', '2021-11-29 13:28:05'),
(26, 'Kỳ nghỉ tại COCOBAY   Đà Nẵng cho 2 người', 'Gia đình / cặp đôi', 'Cocobay Đà Nẵng', '1600000', 'Điểm xuất phát: Đà Nẵng / Thời gian tour: 2 ngày - 1 đêm / Phương tiện: Không', 'Nghỉ dưỡng 2 ngày 1 đêm tại phòng Superior (checkin 14h – check out 12h hôm sau)\r\nHỗ trợ nhận phòng sớm nếu còn phòng trống\r\nĂn sáng #buffet tại Nhà hàng Chợ Xưa dành cho 2 người lớn và 2 bé dưới 5 tuổi.\r\nĐi xe lửa xuyên hầm sang bãi biển riêng của #Cocobay\r\nVui chơi thỏa thích và tham gia các trò chơi tương tác do đội vũ công đường phố của Cocobay tổ chức.\r\nThưởng thức nhạc nước và phun lửa biểu diễn theo khung giờ từ sáng đến tối\r\nSử dụng 2 bể bơi free, 1 bể trong khu khách sạn, 1 bể tại khu vực bãi biển riêng Vanessa\r\nĐược sử dụng xe buggy đi lại trong khu và ra bãi biển free.\r\nXem vũ công biểu diễn âm nhạc từ 16h-22h đêm tại phố đi bộ\r\nTự do tham quan, checkin khu cocobay với cảnh quan đẹp, sang chảnh và không đụng hàng\r\nThưởng thức các món ăn 3 miền VN và các món ăn quốc tế( Mexico, Hàn, Nhật….) tại phố ẩm thực (chi phí tự túc)\r\nTham quan các điểm du lịch trong thành phố bằng xe bus 2 tầng Cocobus Tour ( chi phí tự túc )\r\nĐẶC BIỆT : COCOBAY luôn đồng hành cùng mọi sự kiện đặc biệt của đất nước, có mặt ở đây thì chắc chắn sẽ Auto VUI đấy ạ ! Và hơn thế nữa là chuỗi sự kiện Coco Planet 2019.\r\nLễ hội té nước #Aqualeague vào tháng 7\r\nPhòng tại #Cocobay được thiết kế tối giản với diện tích nhỏ tuy nhiên các nhà thiết kế chú trọng vào sự thoải mái với giường nệm tiêu chuẩn 5* đảm bảo giấc ngủ ngon cho quý khách !!!', 'jpg800.jpg', 'jpg749.jpg', 'jpg41.jpg', 'jpg218.jpg', 'jpg179.jpg', 'Cocobay Boutique Hotels Đà Nẵng', 'Cocobay Boutique Hotels Đà Nẵng', 'Làng Việt', 'Cocobay Boutique Hotels Đà Nẵng', '2021-11-29 04:54:41', '2021-11-30 15:26:30'),
(27, 'CASA MARINA QUY NHƠN RESORT', 'Gia đình / cặp đôi', 'Kỳ Co – Eo Gió, Casa Marina Resort', '1050000', 'Điểm xuất phát: Quy Nhơn / Thời gian tour: 2 Ngày 1 Đêm / Phương tiện: Xe du lịch chất lượng cao', 'Casa Marina Resort là resort nhỏ nhắn, hấp dẫn mang đậm nét quyến rũ với bãi biển dài xanh trong ngập tràn ánh nắng tại đảo Hòn Đất và đảo Hòn Ngang thuộc Ghềnh Ráng, Quy Nhơn. Đây là khu vực thích hợp cho việc nghỉ dưỡng bên cạnh làng chài Bãi Xếp rất thú vị.\r\n\r\nHệ thống phòng của Casa Marina Resort mang màu sắc chủ đạo là trắng và xanh tạo cảm giác thân thiện nhưng không kém phần phóng khoáng, mới mẻ. Được trang bị đầy đủ tiện nghi, sạch sẽ.\r\n\r\nToàn bộ Resort như một ốc đảo nằm giữa rừng giừa xanh cao vút với tầm nhìn hướng thẳng ra biển, bao gồm hệ thống khách sạn và bungalow nằm đối diện nhau. Bể bơi ngoài trời tạo không gian thư giãn vô cùng thoải mái và sang chảnh nhé.  Quý khách có thể vừa tắm mình dưới ánh nắng vàng dịu dàng vừa lắng nghe tiếng sóng biển vỗ rầm rì vào bãi cát trắng muốt, nhâm nhi một ly cocktail từ nhà hàng của Resort và thả hồn phiêu lãng vào khung cảnh thiên nhiên tươi đẹp.\r\n\r\nĐặc biệt, Quý khách được trải nghiệm Tour Kỳ Co – Eo Gió 1 ngày. Kỳ Co là một trong những bãi tắm đẹp nhất Miền Trung với bờ cát trải dài cùng làn nước trong xanh 2 màu tuyệt đẹp, đến với Kỳ Co quý khách sẽ được trải nghiệm cảm giác vi vu lướt sóng trên cano siêu tốc, cùng ngắm biển đảo hùng vĩ Nhơn Lý. Sau đó chiêm ngưỡng sự hùng vĩ của Eo Gió, một trong những Eo biển đẹp nhất hiện nay và được mệnh danh là “Nơi ngắm hoàng hôn đẹp nhất Việt Nam”.', 'jpg190.jpg', 'jpg1043.jpg', 'jpg72.jpg', 'jpg149.jpg', 'jpg361.jpg', 'Casa Marina Resort', 'Hệ thống phòng của Casa Marina Resort', 'làng chài Bãi Xếp', 'Kỳ Co – Eo Gió', '2021-11-29 05:01:44', '2021-11-29 13:28:10'),
(28, 'Khám Phá Khu Du Lịch Bạch Mã Village Huế', 'Gia đình / cặp đôi', 'Khu Du Lịch Bạch Mã Village Huế', '435000', 'Điểm xuất phát: Huế / Thời gian tour: 1 Ngày / Phương tiện: Xe du lịch chất lượng cao', 'Sáng: 07h30 Xe và HDV của Tadivui sẽ đón quý khách tại điểm hẹn, khởi hành đi tham quan Bạch Mã Valliage.\r\n\r\n08h30 Đến Bạch Mã quý khách dừng tại nhà trưng bày để làm thủ tục và nghe hdv giới thiệu về Bạch Mã.\r\n\r\nQuý khách tham quan:\r\n\r\nVùng rìa là rừng của vườn quốc gia Bạch Mã, nơi đây “lọt thỏm” giữa rừng núi bạt ngàn, nơi xa rời sự ồn ào – xô bồ của chốn thị thành đông đúc. Tiếng thác đổ, tiếng suối chảy, tiếng chim hót hay tiếng gió rì rào…\r\nKhu cắm trại trên mặt cỏ xanh mướt, với hệ thống lều trại cao cấp chống nắng, chống mưa bên trong bố trí chăn màn và cả một chiếc quạt để bạn cùng người có giấc ngủ thoải mái.\r\nKhu lửa trại được bố trí gần đó. Cứ mỗi tối – bên những ánh đèn vàng, bên ngọn lựa bập bùng cháy – mọi người quay quần bên nhau để tham gia nhảy lửa, hát những bài hát tình ca hay pha trò ngộ nghĩnh,…\r\nKhu nhà hàng với sức chứa lên đến 500 khách/ lượt với loại hình ẩm thực đa dạng, các món đặc sản nướng và lẫu sẵn sàng phục vụ bạn.\r\nQuầy Bar café với công suất đồng thời lên đến 150 khách, phục vụ nhu cầu giải khát và uống bia cùng mồi khô (mực khô, cá khô, bò khô, xiêng nướng…)\r\nVới không gian núi rừng cùng hệ thống chiếu sang và các khu đồi cỏ xanh mướt, đây là điểm thích hợp cho các chương trình lửa trại &Teambuiling cho các công ty.\r\n11h00: Quý khách dùng bữa trưa tại nhà hàng.\r\n\r\nChiều: Quý khách sẽ được trải nghiệm dịchvụ tắm suối thiên nhiên cùng các thác trượt, nhà nấm, hồ tắm khô, hệ thống ghế nằm và áo phao miễn phí…\r\n\r\n15h30: Quý khách chia tay khu du lịch Bạch Mã Villa\r\n\r\nĐoàn khởi hành về tại điểm đón ban đầu. Kết thúc chương trình. Xin chào và hẹn gặp lại quý khách trong các chương trình sau.', 'png25.png', 'jpg102.jpg', 'jpg1069.jpg', 'jpg1064.jpg', 'jpg48.jpg', 'Villiage Bạch Mã', 'Khu cắm trại', 'Lửa trại', 'Vùng rìa Bạch Mã', '2021-11-29 05:25:04', '2021-11-29 13:28:13'),
(29, 'Bà Nà – Đường Lên Tiên Cảnh', 'Gia đình / cặp đôi', 'Bà Nà, Fantasy Park', '970000', 'Điểm xuất phát: Đà Nẵng /  Thời gian tour: 1 Ngày / Phương tiện: Xe Du Lịch, Cáp Treo Khứ Hồi, Tàu Hỏa Leo Núi', 'Khu du lịch Bà nà Hills được xem là “lá phổi xanh” của Đà Nẵng, là “hòn ngọc về khí hậu” của Việt Nam…. Bà Nà trở thành một trong những nơi nghỉ mát nổi tiếng và lớn nhất Đông Dương thu hút nhiều du khách du lịch trong và ngoài nước.\r\n\r\n\r\nSáng: 7h30 – 8h00 Xe cùng HDV đón quý khách tại điểm hẹn. Khởi hành lên Bà Nà Hills – nơi mà quý khách khám phá những khoảnh khắc giao mùa bất ngờ Xuân – Hạ – Thu – Đông trong một ngày. Dọc theo tuyến đường du lịch Nguyễn Tất Thành, tuyến đường biển đẹp nhất miền Trung, ngắm cầu treo Thuận Phước, bãi biển Xuân Thiều.\r\n\r\n\r\nQuý khách bước vào cabin khởi hành từ ga Suối Mơ trên tuyến cáp treo đạt 2 kỷ lục thế giới (gần 6.000m). 20 phút du ngoạn trên cáp treo, quý khách sẽ được chiêm ngưỡng Suối Mơ hùng vĩ, cảnh núi rừng nguyên sinh của khu bảo tồn thiên nhiên Bà Nà với hệ sinh thái phong phú và đa dạng, tận hưởng sự thay đổi thời tiết rõ rệt khi đi qua Cổng Trời hay có cơ hội trải nghiệm cảm giác phiêu lưu đầy ấn tượng chìm trong sương mờ.\r\n\r\n\r\nTham quan khu Le Jardin với các di tích của người Pháp như: khu buộc ngựa của Pháp, vết tích các khu biệt thự cổ. Viếng chùa Linh Ứng Bà Nà chiêm ngưỡng tượng Phật Thích Ca cao 27m và thả mình vào khung cảnh thanh tịnh của chốn thiền môn, tham quan Vườn Lộc Uyển, Quan Âm Các, biệt thự Lệ Nim, Lầu Vọng Nguyệt và chinh phục đỉnh núi Chúa ở độ cao 1.487m so với mực nước biển để thưởng thức quang cảnh núi rừng Bà Nà và toàn cảnh Đà Nẵng trên cao.\r\n\r\n\r\nQuý khách dùng Buffet trưa tại nhà hàng Bà Nà.\r\n\r\nChiều: HDV đưa đoàn vào khu vui chơi Fantasy Park – tham gia các trò chơi phiêu lưu mới lạ, ngộ nghĩnh, hấp dẫn, hiện đại như: Vòng quay tình yêu, Phi công Skiver, Đường đua lửa, Xe điện đụng, Ngôi nhà ma…\r\n\r\n15h00 Đón chuyến cáp và xuống lại ga Suối Mơ xuất phát về Đà Nẵng. 17h30 HDV và lái xe trả khách về tại điểm hẹn – Tiễn khách về sân bay / bến xe /nhà ga.', 'jpg1024.jpg', 'jpg78.jpg', 'jpg46.jpg', 'jpeg788.jpeg', 'jpg270.jpg', 'ga Suối Mơ', 'khu Le Jardin', 'nhà hàng Bà Nà.', 'Bà Nà Hills', '2021-11-29 05:10:56', '2021-11-29 13:28:16'),
(30, 'Khám Phá Khu Du Lịch Suối Khoáng Nóng Thanh Tân', 'Gia đình / cặp đôi', 'Khu Du Lịch Suối Khoáng Nóng Thanh Tân', '690000', 'Điểm xuất phát: Huế / Thời gian tour: 1 Ngày / Phương tiện: Xe du lịch chất lượng cao', 'Sáng: 9h00 Xe và hướng dẫn đón Quý khách tại khách sạn, khởi hành đến KDL Suối khoáng nóng Thanh Tân. Ngâm tắm mình dưới dòng nước khoáng Thanh Tân cùng thư giãn với các suối khoáng nóng, hồ khoáng bùn, hồ Trượt, hồ Sóng biển.\r\n\r\nQuý khách có thể tham gia 2 trò chơi mạo hiểm lớn nhất Việt Nam vừa được đưa vào hoạt động tại Khu du lịch Alba Thanh Tân Resort là Zipline hoặc Highwire)_ Thử sức với đường trượt cáp Zipline tự dovới độ cao 45.5m và chiều dài 560m, trò chơi sẽ mang đến cho bạn một cảm giác lướt gió mạnh không thể tuyệt vời hơn (chi phí tự túc). Hãy để cơ thể bạn lao vút trong gió, trên những thảm rừng xanh như những chú chim đại bàng sải cánhhoặc tự do thư giãn, xoa bóp, bấm huyệt và tham gia các dịch vụ giải trí như : massage, leo núi, câu cá, bida, cầu lông…. (Chi phí tự túc).\r\n\r\n12h30: Ăn trưa tại nhà hàng Thanh Tân.\r\n\r\nChiều:13h30 Tản bộ trong khuôn viên Khu du lịch, hòa mình vào thiên nhiên trong lành, cảm nhận mùi hương của các loài cây rừng và nghe tiếng của các loài chim hót. Tự do thư giãn hoặc xoa bóp, bấm huyệt và tham gia các dịch vụ giải trí như : massage, leo núi, câu cá, bida, cầu lông,…(Chi phí tự túc).\r\n\r\n15h30 Quý khách chuẩn bị tư trang, khởi hành về lại Huế. Kết thúc chương trình.Xin chào và hẹn gặp lại trong các chương trình sau.', 'jpg640.jpg', 'jpg668.jpg', 'jpg248.jpg', 'jpg172.jpg', 'jpg818.jpg', 'Trò chơi Zipline', 'Trò chơi Highwire', 'Suối khoáng nóng Thanh Tân', 'khuôn viên Khu du lịch', '2021-11-29 05:16:03', '2021-11-29 13:28:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_user`
--

CREATE TABLE `tbl_user` (
  `usid` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobienumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_user`
--

INSERT INTO `tbl_user` (`usid`, `name`, `mobienumber`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'huy', '0911111111', 'huy@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2021-11-12 09:09:52', '2021-11-22 02:52:31'),
(13, 'Le Hoang', '0147258369', 'lehoang@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2021-11-18 14:18:26', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_ykien`
--

CREATE TABLE `tbl_ykien` (
  `isid` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chu_de` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `noi_dung` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_ykien`
--

INSERT INTO `tbl_ykien` (`isid`, `email`, `chu_de`, `noi_dung`, `status`, `created_at`, `updated_at`) VALUES
(1, 'huy@gmail.com', 'Trải nghiệm', 'khong thích đó thì sao nào uuuuu', '1', NULL, NULL),
(2, 'huy@gmail.com', 'Chi phí', 'quá đắt, đi méo có tiền', '1', NULL, NULL),
(3, 'huy@gmail.com', 'Trải nghiệm', 'khong thích đó thì sao nào uuuuu', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminid`);

--
-- Chỉ mục cho bảng `tbl_booking`
--
ALTER TABLE `tbl_booking`
  ADD PRIMARY KEY (`booking_id`);

--
-- Chỉ mục cho bảng `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Chỉ mục cho bảng `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  ADD PRIMARY KEY (`gallery_id`);

--
-- Chỉ mục cho bảng `tbl_gioithieu`
--
ALTER TABLE `tbl_gioithieu`
  ADD PRIMARY KEY (`gtid`);

--
-- Chỉ mục cho bảng `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD PRIMARY KEY (`booking_details_id`);

--
-- Chỉ mục cho bảng `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Chỉ mục cho bảng `tbl_services`
--
ALTER TABLE `tbl_services`
  ADD PRIMARY KEY (`svid`);

--
-- Chỉ mục cho bảng `tbl_tintuc`
--
ALTER TABLE `tbl_tintuc`
  ADD PRIMARY KEY (`id_baiviet`);

--
-- Chỉ mục cho bảng `tbl_tourpackages`
--
ALTER TABLE `tbl_tourpackages`
  ADD PRIMARY KEY (`package_id`);

--
-- Chỉ mục cho bảng `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`usid`);

--
-- Chỉ mục cho bảng `tbl_ykien`
--
ALTER TABLE `tbl_ykien`
  ADD PRIMARY KEY (`isid`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_booking`
--
ALTER TABLE `tbl_booking`
  MODIFY `booking_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `contact_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  MODIFY `gallery_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `tbl_gioithieu`
--
ALTER TABLE `tbl_gioithieu`
  MODIFY `gtid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  MODIFY `booking_details_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `payment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `tbl_services`
--
ALTER TABLE `tbl_services`
  MODIFY `svid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_tintuc`
--
ALTER TABLE `tbl_tintuc`
  MODIFY `id_baiviet` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `tbl_tourpackages`
--
ALTER TABLE `tbl_tourpackages`
  MODIFY `package_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `usid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `tbl_ykien`
--
ALTER TABLE `tbl_ykien`
  MODIFY `isid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
