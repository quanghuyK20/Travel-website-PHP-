-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 13, 2021 lúc 04:26 AM
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
-- Cơ sở dữ liệu: `tms`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `adminid` int(11) NOT NULL,
  `UserName` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `Password` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`adminid`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2020-05-11 11:18:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblabout`
--

CREATE TABLE `tblabout` (
  `aid` int(11) NOT NULL,
  `idea` varchar(255) DEFAULT NULL,
  `maincontent` varchar(255) DEFAULT NULL,
  `demuc` varchar(255) DEFAULT NULL,
  `content1` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tblabout`
--

INSERT INTO `tblabout` (`aid`, `idea`, `maincontent`, `demuc`, `content1`, `image`) VALUES
(8, 'usid', 'Lorem illum facere aperiam sequi optio consectetur adipisicing elitFuga, suscipit totam animi consequatur saepe blanditiis.Lorem ipsum dolor sit amet,Ea consequuntur illum facere aperiam sequi optio consectetur adipisicing elit. Fuga, suscipit totam animi', 'l', 'l', 'Screenshot 2021-11-06 103103.png'),
(10, 'ABOUT OUR SPRYSTORE', 'Excepteur sint occaecat non proident, sunt in culpa quis. Phasellus lacinia id erat eu ullamcorper. Nunc id ipsum fringilla, gravida felis vitae. Phasellus lacinia id, sunt in culpa quis. Phasellus lacinia  Excepteur sint occaecat non proident, sunt in cu', '01. Visit Store', 'Lorem illum facere aperiam sequi optio consectetur adipisicing elitFuga, suscipit totam animi consequatur', 'photo1636249852156-16362498522531102977302.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblbooking`
--

CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `PackageId` int(11) DEFAULT NULL,
  `UserEmail` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `FromDate` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `ToDate` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `Comment` mediumtext CHARACTER SET utf8mb4 DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL,
  `CancelledBy` varchar(5) CHARACTER SET utf8mb4 DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `PackageId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(8, 1, 'huy@gmail.com', '2021-10-20', '2021-10-06', 'ggggggggggggggggggggggggggggg', '2021-11-06 08:20:35', 2, 'u', '2021-11-06 08:37:26'),
(9, 2, 'huy@gmail.com', '2021-10-20', '2021-10-06', 'ggggggggggggggggggggggggggggg', '2021-11-06 08:30:53', 2, 'a', '2021-11-06 08:31:07'),
(10, 2, 'huy@gmail.com', '2021-11-06', '2021-10-19', 'ggggggggggggggggggggggggggggg', '2021-11-06 08:34:44', 2, 'a', '2021-11-20 07:55:36'),
(11, 1, 'huy@gmail.com', '2021-10-20', '2021-10-06', 'ggggggggggggggggggggggggggggg', '2021-11-13 09:15:23', 1, NULL, '2021-11-20 07:55:46'),
(12, 1, 'huy@gmail.com', '2021-10-20', '2021-10-06', 's', '2021-11-20 07:45:26', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `eid` int(11) NOT NULL,
  `usid` int(11) NOT NULL,
  `FullName` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `EmailId` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_nopad_ci DEFAULT NULL,
  `MobileNumber` char(10) CHARACTER SET utf8mb4 DEFAULT NULL,
  `Subject` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `Description` mediumtext CHARACTER SET utf8mb4 DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tblenquiry`
--

INSERT INTO `tblenquiry` (`eid`, `usid`, `FullName`, `EmailId`, `MobileNumber`, `Subject`, `Description`, `PostingDate`, `Status`) VALUES
(8, 0, 'Quang Huy Lê', 'huy@gmail.com', NULL, 'aaaaaaa', 'f', '2021-11-03 03:33:48', NULL),
(9, 0, 'usid', 'huy@gmail.com', NULL, 'nnh', 'n', '2021-11-03 03:34:25', NULL),
(10, 0, 'usid', 'huy@gmail.com', NULL, 'nnh', 'n', '2021-11-03 03:45:04', NULL),
(11, 0, '', '', NULL, '', 's', '2021-11-03 07:04:09', NULL),
(12, 0, '', '', NULL, '', 's', '2021-11-03 07:06:31', NULL),
(13, 0, 'usid', 'huy@gmail.com', NULL, 's', 'jjjj', '2021-11-03 07:06:39', NULL),
(14, 0, 'usid', 'huy@gmail.com', NULL, 's', 'jjjj', '2021-11-03 07:07:29', NULL),
(15, 0, 'usid', 'huy@gmail.com', NULL, 's', 'jjjj', '2021-11-03 07:07:43', NULL),
(16, 0, 'usid', 'huy@gmail.com', NULL, 's', 'jjjj', '2021-11-03 07:08:59', NULL),
(17, 0, '', '', NULL, '', 's', '2021-11-03 07:09:03', NULL),
(18, 0, '', '', NULL, '', 's', '2021-11-03 07:09:35', NULL),
(19, 0, '', '', NULL, '', 's', '2021-11-03 07:09:46', NULL),
(20, 0, '', '', NULL, '', 's', '2021-11-03 07:09:53', NULL),
(21, 0, '', '', NULL, '', 's', '2021-11-03 07:10:01', NULL),
(22, 0, 'adminid', 'huy@gmail.com', NULL, 'nnh', 'aaa', '2021-11-03 15:17:17', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblgioithieu`
--

CREATE TABLE `tblgioithieu` (
  `gtid` int(11) NOT NULL,
  `tentieude` varchar(255) DEFAULT NULL,
  `noidunggioithieu` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblissues`
--

CREATE TABLE `tblissues` (
  `isid` int(11) NOT NULL,
  `UserEmail` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `Issue` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `Description` mediumtext CHARACTER SET utf8mb4 DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext CHARACTER SET utf8 DEFAULT NULL,
  `AdminremarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tblissues`
--

INSERT INTO `tblissues` (`isid`, `UserEmail`, `Issue`, `Description`, `PostingDate`, `AdminRemark`, `AdminremarkDate`) VALUES
(19, 'huy@gmail.com', 'Booking Issues', 'hhhhhhhhhh', '2021-11-06 08:38:35', NULL, NULL),
(20, 'huy@gmail.com', 'Booking Issues', 'hhhhhhhhhh', '2021-11-06 08:41:29', NULL, NULL),
(21, 'huy@gmail.com', 'Booking Issues', 'hhhhhhhhhh', '2021-11-21 13:23:09', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblnew`
--

CREATE TABLE `tblnew` (
  `lid` int(11) NOT NULL,
  `imagenew` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `nameidea` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblservice`
--

CREATE TABLE `tblservice` (
  `sid` int(11) NOT NULL,
  `namesv` varchar(255) DEFAULT NULL,
  `svcontent` varchar(2555) DEFAULT NULL,
  `svimage` varchar(255) DEFAULT NULL,
  `svnew` varchar(255) DEFAULT NULL,
  `newinfor` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbltintuc`
--

CREATE TABLE `tbltintuc` (
  `tintucid` int(11) NOT NULL,
  `tenbaiviet` varchar(255) DEFAULT NULL,
  `noidungngan` varchar(255) DEFAULT NULL,
  `links` varchar(255) DEFAULT NULL,
  `ngaydang` timestamp NULL DEFAULT current_timestamp(),
  `ngaycapnhat` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbltourpackages`
--

CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(200) CHARACTER SET utf8mb4 DEFAULT NULL,
  `PackageType` varchar(150) CHARACTER SET utf8mb4 DEFAULT NULL,
  `PackageLocation` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `PackagePrice` int(11) DEFAULT NULL,
  `PackageFetures` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `PackageDetails` mediumtext CHARACTER SET utf8mb4 DEFAULT NULL,
  `PackageImage` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `img1` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `img2` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `img3` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `img4` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `mota1` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `mota2` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `mota3` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `mota4` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tbltourpackages`
--

INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`, `img1`, `img2`, `img3`, `img4`, `mota1`, `mota2`, `mota3`, `mota4`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Du lịch Hà Giang', 'Gia đình', 'Hà Giang, Việt Nam', 456, 'Đẹp', 'Rất đẹp', 'g5.jpg', '6b04b76b3b2134b685a2fb4f77895f78.jpg', '40.jpg', '41.jpg', '42.jpg', NULL, NULL, NULL, NULL, '2021-11-02 15:50:15', '2021-11-03 15:15:58'),
(2, 'Du lịch Hội An', 'Gia đình', 'Hội An, Quảng Nam, Việt Nam', 456, 'Đẹp', 'kk', 'g2.jpg', 'genshin-impact-1.3-hu-tao.jpg', '2zlYOmHI_400x400.jpg', '2zlYOmHI_400x400.jpg', 'genshin-impact-1.3-hu-tao.jpg', 'Đẹp', '??p', '??p', '??p', '2021-11-03 13:48:03', '2021-11-03 15:29:26'),
(3, 'Du lịch Cửa Lò - Nghê An', 'Gia đình', 'Nghệ An, Việt Nam', 1230000, 'Đẹp', 'đẹp', 'g1.jpg', '[2021] Hình nền Macbook 4k, đẹp miễn phí cho fan Apple.png', '2zlYOmHI_400x400.jpg', '2zlYOmHI_400x400.jpg', '2zlYOmHI_400x400.jpg', 'Đẹp', 'đẹp', 'đẹp', 'đẹp', '2021-11-03 15:11:58', '2021-11-04 04:14:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblusers`
--

CREATE TABLE `tblusers` (
  `usid` int(11) NOT NULL,
  `FullName` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `MobileNumber` char(10) CHARACTER SET utf8mb4 DEFAULT NULL,
  `EmailId` varchar(70) CHARACTER SET utf8mb4 DEFAULT NULL,
  `Password` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tblusers`
--

INSERT INTO `tblusers` (`usid`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(1, 'Quang Huy Lê', '111111', 'huy@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2021-10-08 01:12:50', '2021-11-02 14:42:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblview`
--

CREATE TABLE `tblview` (
  `vid` int(11) NOT NULL,
  `imagename` varchar(200) NOT NULL,
  `viewinfor` mediumtext NOT NULL,
  `viewimage` varchar(100) NOT NULL,
  `imgdes` varchar(255) NOT NULL,
  `mt1` varchar(255) NOT NULL,
  `mt2` varchar(255) NOT NULL,
  `mt3` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tblview`
--

INSERT INTO `tblview` (`vid`, `imagename`, `viewinfor`, `viewimage`, `imgdes`, `mt1`, `mt2`, `mt3`, `status`) VALUES
(1, 'Vịnh Hạ Long', 'hạ long bay ', 'vinh-ha-long-1.jpg', '', 'Thiên nhiên hùng vĩ', 'Du thuyền tuyệt đẹp', 'Giá vé cực đắt', 0),
(2, 'Đảo Lan Châu - Nghệ  An', 'Đảo Lan chau', 'bna_lanchau_vansong_27647628_1972019.jpg', '', 'Hoàng hôn yên bình', 'Biển sạch - đẹp', 'Nhiều người chặt chém ', 0),
(3, 'Cầu Vàng Đà Nẵng ', 'Cầu vàng', '40692162_9381807_image_a_23_1616-1616460198504.jpg', '', ' ', ' ', ' ', 0),
(7, 'Cột mốc ngã ba Đông Dương', '1', '658_nhung_cot_moc_bien_gioi_quan_trong_cua_viet_nam.jpg', '', '', '', '', 0),
(8, ' Cao nguyên đá Đồng Văn - Hà Giang', 'Cao nguyên ', 'ha-giang-pys-travel-01.jpg', '', '', '', '', 0),
(9, 'Cột cờ Lũng Cú ', 'ssss', '6b04b76b3b2134b685a2fb4f77895f78.jpg', '', '', '', '', 0),
(10, 'Phố cổ Hội An', '12', 'du-lich-viet-nam-dung-dau-khu-vuc-chau-a-ve-di-san-am-thuc-va-van-hoa-2020.jpg', '', '', '', '', 0),
(11, 'Thác Bản Dốc - Cao Bằng', '12', 'dia-diem-du-lich-viet-nam.jpg', '', '', '', '', 0),
(12, 'Tràng An - Ninh Bình', '13', 'Quan-the-trang-an.jpg.jpg', '', '', '', '', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminid`);

--
-- Chỉ mục cho bảng `tblabout`
--
ALTER TABLE `tblabout`
  ADD PRIMARY KEY (`aid`);

--
-- Chỉ mục cho bảng `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`BookingId`),
  ADD KEY `PackageId` (`PackageId`);

--
-- Chỉ mục cho bảng `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`eid`),
  ADD KEY `usid` (`usid`);

--
-- Chỉ mục cho bảng `tblgioithieu`
--
ALTER TABLE `tblgioithieu`
  ADD PRIMARY KEY (`gtid`);

--
-- Chỉ mục cho bảng `tblissues`
--
ALTER TABLE `tblissues`
  ADD PRIMARY KEY (`isid`);

--
-- Chỉ mục cho bảng `tblnew`
--
ALTER TABLE `tblnew`
  ADD PRIMARY KEY (`lid`);

--
-- Chỉ mục cho bảng `tblservice`
--
ALTER TABLE `tblservice`
  ADD PRIMARY KEY (`sid`);

--
-- Chỉ mục cho bảng `tbltintuc`
--
ALTER TABLE `tbltintuc`
  ADD PRIMARY KEY (`tintucid`);

--
-- Chỉ mục cho bảng `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- Chỉ mục cho bảng `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`usid`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

--
-- Chỉ mục cho bảng `tblview`
--
ALTER TABLE `tblview`
  ADD PRIMARY KEY (`vid`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `adminid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tblabout`
--
ALTER TABLE `tblabout`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `eid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `tblgioithieu`
--
ALTER TABLE `tblgioithieu`
  MODIFY `gtid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tblissues`
--
ALTER TABLE `tblissues`
  MODIFY `isid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `tblnew`
--
ALTER TABLE `tblnew`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tblservice`
--
ALTER TABLE `tblservice`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `tbltintuc`
--
ALTER TABLE `tbltintuc`
  MODIFY `tintucid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `usid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `tblview`
--
ALTER TABLE `tblview`
  MODIFY `vid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
