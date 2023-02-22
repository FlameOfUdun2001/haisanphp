-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 19, 2021 lúc 05:14 PM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `php_mvc_banhang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adminEmail` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `adminUser` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adminPass` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminName`, `adminEmail`, `adminUser`, `adminPass`, `level`) VALUES
(1, 'MINHADMIN', 'minh@gmail.com', 'minh', '202cb962ac59075b964b07152d234b70', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brandId` int(11) UNSIGNED NOT NULL,
  `brandName` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandId`, `brandName`) VALUES
(16, 'Alaska'),
(17, 'Nauy'),
(18, 'Sapa'),
(19, 'Japan'),
(20, 'IceLand'),
(22, 'Nauy');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartId` int(11) NOT NULL,
  `productId` int(11) UNSIGNED NOT NULL,
  `sId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catId` int(11) UNSIGNED NOT NULL,
  `catName` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `catName`) VALUES
(20, 'Cua'),
(21, 'Cá'),
(22, 'Tôm'),
(23, 'Mực'),
(24, 'Ốc');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_compare`
--

CREATE TABLE `tbl_compare` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) UNSIGNED NOT NULL,
  `productId` int(11) UNSIGNED NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `zipcode` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `name`, `address`, `city`, `country`, `zipcode`, `phone`, `email`, `password`) VALUES
(7, 'Hoa', '56 hàng Hoa', 'HaNOI', 'hn', 'BB', '0895877496', '1@gmail.com', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `productId` int(11) UNSIGNED NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customer_id` int(11) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `date_order` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `productId` int(11) UNSIGNED NOT NULL,
  `productName` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `product_code` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `productQuantity` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `product_soldout` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `product_remain` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `catId` int(11) UNSIGNED NOT NULL,
  `brandId` int(11) UNSIGNED NOT NULL,
  `product_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`productId`, `productName`, `product_code`, `productQuantity`, `product_soldout`, `product_remain`, `catId`, `brandId`, `product_desc`, `type`, `price`, `image`) VALUES
(40, 'Bào Ngư', '', '', '0', '', 24, 22, '<p>\"Do đặc t&iacute;nh của sản phẩm n&ecirc;n trọng lượng thực tế c&oacute; thể ch&ecirc;nh lệch so với số lượng bạn đặt h&agrave;ng. Hải Sản Ho&agrave;ng Gia sẽ x&aacute;c nhận lại với bạn khi c&oacute; sự thay đổi.\"</p>', 1, '120000', '90b75c52a2.jpg'),
(41, 'Ốc vòi voi', '', '', '0', '', 24, 18, '<p>\"Do đặc t&iacute;nh của sản phẩm n&ecirc;n trọng lượng thực tế c&oacute; thể ch&ecirc;nh lệch so với số lượng bạn đặt h&agrave;ng. Hải Sản Ho&agrave;ng Gia sẽ x&aacute;c nhận lại với bạn khi c&oacute; sự thay đổi.\"</p>', 0, '130000', 'cec270f8c3.jpg'),
(42, 'Nghêu Hai Cồi', '', '', '0', '', 24, 18, '<p>\"Do đặc t&iacute;nh của sản phẩm n&ecirc;n trọng lượng thực tế c&oacute; thể ch&ecirc;nh lệch so với số lượng bạn đặt h&agrave;ng. Hải Sản Ho&agrave;ng Gia sẽ x&aacute;c nhận lại với bạn khi c&oacute; sự thay đổi.\"</p>', 1, '34000', 'fe1f9c7564.jpg'),
(43, 'Sò Bơ', '', '', '0', '', 24, 17, '<p>\"Do đặc t&iacute;nh của sản phẩm n&ecirc;n trọng lượng thực tế c&oacute; thể ch&ecirc;nh lệch so với số lượng bạn đặt h&agrave;ng. Hải Sản Ho&agrave;ng Gia sẽ x&aacute;c nhận lại với bạn khi c&oacute; sự thay đổi.\"</p>', 1, '34000', '111216bc70.jpg'),
(44, 'Ốc Bulot', '', '', '0', '', 24, 18, '<p>\"Do đặc t&iacute;nh của sản phẩm n&ecirc;n trọng lượng thực tế c&oacute; thể ch&ecirc;nh lệch so với số lượng bạn đặt h&agrave;ng. Hải Sản Ho&agrave;ng Gia sẽ x&aacute;c nhận lại với bạn khi c&oacute; sự thay đổi.\"</p>', 1, '10000', 'af668f2e53.jpg'),
(45, 'Sò Điệp Hokkaido', '', '', '0', '', 24, 19, '<p>\"Do đặc t&iacute;nh của sản phẩm n&ecirc;n trọng lượng thực tế c&oacute; thể ch&ecirc;nh lệch so với số lượng bạn đặt h&agrave;ng. Hải Sản Ho&agrave;ng Gia sẽ x&aacute;c nhận lại với bạn khi c&oacute; sự thay đổi.\"</p>', 1, '14000', '11f3be1e15.jpg'),
(46, 'Hàu Bắc Mỹ', '', '', '0', '', 24, 16, '<p>\"Do đặc t&iacute;nh của sản phẩm n&ecirc;n trọng lượng thực tế c&oacute; thể ch&ecirc;nh lệch so với số lượng bạn đặt h&agrave;ng. Hải Sản Ho&agrave;ng Gia sẽ x&aacute;c nhận lại với bạn khi c&oacute; sự thay đổi.\"</p>', 1, '20000', 'a6eefbef7a.jpg'),
(47, 'Sò Dương', '', '', '0', '', 24, 18, '<p>\"Do đặc t&iacute;nh của sản phẩm n&ecirc;n trọng lượng thực tế c&oacute; thể ch&ecirc;nh lệch so với số lượng bạn đặt h&agrave;ng. Hải Sản Ho&agrave;ng Gia sẽ x&aacute;c nhận lại với bạn khi c&oacute; sự thay đổi.\"</p>', 1, '22000', '04bb66c387.jpg'),
(48, 'Cua lông HongKong', '', '', '0', '', 20, 19, '<p>\"Do đặc t&iacute;nh của sản phẩm n&ecirc;n trọng lượng thực tế c&oacute; thể ch&ecirc;nh lệch so với số lượng bạn đặt h&agrave;ng. Hải Sản Ho&agrave;ng Gia sẽ x&aacute;c nhận lại với bạn khi c&oacute; sự thay đổi.\"</p>', 1, '560000', '3ac844885e.jpg'),
(49, 'Cua ngọt SaPa', '', '', '0', '', 20, 18, '<p>\"Do đặc t&iacute;nh của sản phẩm n&ecirc;n trọng lượng thực tế c&oacute; thể ch&ecirc;nh lệch so với số lượng bạn đặt h&agrave;ng. Hải Sản Ho&agrave;ng Gia sẽ x&aacute;c nhận lại với bạn khi c&oacute; sự thay đổi.\"</p>', 1, '120000', 'e1973367ce.jpg'),
(50, 'Cua Nâu Ireland', '', '', '0', '', 20, 22, '<p>\"Do đặc t&iacute;nh của sản phẩm n&ecirc;n trọng lượng thực tế c&oacute; thể ch&ecirc;nh lệch so với số lượng bạn đặt h&agrave;ng. Hải Sản Ho&agrave;ng Gia sẽ x&aacute;c nhận lại với bạn khi c&oacute; sự thay đổi.\"</p>', 1, '450000', '9b834151aa.jpg'),
(51, 'Ghẹ sống', '', '', '0', '', 20, 18, '<p>\"Do đặc t&iacute;nh của sản phẩm n&ecirc;n trọng lượng thực tế c&oacute; thể ch&ecirc;nh lệch so với số lượng bạn đặt h&agrave;ng. Hải Sản Ho&agrave;ng Gia sẽ x&aacute;c nhận lại với bạn khi c&oacute; sự thay đổi.\"</p>', 1, '130000', '538ec6cebb.jpg'),
(52, 'Cua Hoàng Đế', '', '', '0', '', 20, 16, '<p>\"Do đặc t&iacute;nh của sản phẩm n&ecirc;n trọng lượng thực tế c&oacute; thể ch&ecirc;nh lệch so với số lượng bạn đặt h&agrave;ng. Hải Sản Ho&agrave;ng Gia sẽ x&aacute;c nhận lại với bạn khi c&oacute; sự thay đổi.\"</p>', 0, '12000000', '56feff4979.jpg'),
(53, 'Tôm tít', '', '', '0', '', 22, 18, '<p>\"Do đặc t&iacute;nh của sản phẩm n&ecirc;n trọng lượng thực tế c&oacute; thể ch&ecirc;nh lệch so với số lượng bạn đặt h&agrave;ng. Hải Sản Ho&agrave;ng Gia sẽ x&aacute;c nhận lại với bạn khi c&oacute; sự thay đổi.\"</p>', 1, '70000', '7f588e18a8.jpg'),
(54, 'Tôm Càng Xanh', '', '', '0', '', 22, 19, '<p>\"Do đặc t&iacute;nh của sản phẩm n&ecirc;n trọng lượng thực tế c&oacute; thể ch&ecirc;nh lệch so với số lượng bạn đặt h&agrave;ng. Hải Sản Ho&agrave;ng Gia sẽ x&aacute;c nhận lại với bạn khi c&oacute; sự thay đổi.\"</p>', 1, '100000', '8751f9ec1d.jpg'),
(55, 'Tôm mũ ni', '', '', '0', '', 22, 20, '<p>\"Do đặc t&iacute;nh của sản phẩm n&ecirc;n trọng lượng thực tế c&oacute; thể ch&ecirc;nh lệch so với số lượng bạn đặt h&agrave;ng. Hải Sản Ho&agrave;ng Gia sẽ x&aacute;c nhận lại với bạn khi c&oacute; sự thay đổi.\"</p>', 1, '700000', '2df598aeb2.jpg'),
(56, 'Tôm hùm bông', '', '', '0', '', 22, 17, '<p>\"Do đặc t&iacute;nh của sản phẩm n&ecirc;n trọng lượng thực tế c&oacute; thể ch&ecirc;nh lệch so với số lượng bạn đặt h&agrave;ng. Hải Sản Ho&agrave;ng Gia sẽ x&aacute;c nhận lại với bạn khi c&oacute; sự thay đổi.\"</p>', 1, '500000', '8fc8909284.jpg'),
(57, 'Tôm sú', '', '', '0', '', 22, 16, '<p>\"Do đặc t&iacute;nh của sản phẩm n&ecirc;n trọng lượng thực tế c&oacute; thể ch&ecirc;nh lệch so với số lượng bạn đặt h&agrave;ng. Hải Sản Ho&agrave;ng Gia sẽ x&aacute;c nhận lại với bạn khi c&oacute; sự thay đổi.\"</p>', 1, '45000', '1e77ee6649.jpg'),
(58, 'Tôm hùm Canada', '', '', '0', '', 22, 16, '<p>\"Do đặc t&iacute;nh của sản phẩm n&ecirc;n trọng lượng thực tế c&oacute; thể ch&ecirc;nh lệch so với số lượng bạn đặt h&agrave;ng. Hải Sản Ho&agrave;ng Gia sẽ x&aacute;c nhận lại với bạn khi c&oacute; sự thay đổi.\"</p>', 0, '2300000', 'd9e17dcd99.jpg'),
(59, 'Cá Mú chân trâu', '', '', '0', '', 21, 18, '<p>\"Do đặc t&iacute;nh của sản phẩm n&ecirc;n trọng lượng thực tế c&oacute; thể ch&ecirc;nh lệch so với số lượng bạn đặt h&agrave;ng. Hải Sản Ho&agrave;ng Gia sẽ x&aacute;c nhận lại với bạn khi c&oacute; sự thay đổi.\"</p>', 1, '79000', 'bf8ace5b11.jpg'),
(60, 'Cá chim', '', '', '0', '', 21, 19, '<p>\"Do đặc t&iacute;nh của sản phẩm n&ecirc;n trọng lượng thực tế c&oacute; thể ch&ecirc;nh lệch so với số lượng bạn đặt h&agrave;ng. Hải Sản Ho&agrave;ng Gia sẽ x&aacute;c nhận lại với bạn khi c&oacute; sự thay đổi.\"</p>', 1, '50000', 'e7b1ae1617.jpg'),
(61, 'Cá chình', '', '', '0', '', 21, 20, '<p>\"Do đặc t&iacute;nh của sản phẩm n&ecirc;n trọng lượng thực tế c&oacute; thể ch&ecirc;nh lệch so với số lượng bạn đặt h&agrave;ng. Hải Sản Ho&agrave;ng Gia sẽ x&aacute;c nhận lại với bạn khi c&oacute; sự thay đổi.\"</p>', 1, '45000', '66086db05a.jpg'),
(62, 'Cá Tầm ', '', '', '0', '', 21, 19, '<p>\"Do đặc t&iacute;nh của sản phẩm n&ecirc;n trọng lượng thực tế c&oacute; thể ch&ecirc;nh lệch so với số lượng bạn đặt h&agrave;ng. Hải Sản Ho&agrave;ng Gia sẽ x&aacute;c nhận lại với bạn khi c&oacute; sự thay đổi.\"</p>', 0, '45000', '985721b71a.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `sliderId` int(11) NOT NULL,
  `sliderName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slider_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_warehouse`
--

CREATE TABLE `tbl_warehouse` (
  `id_warehouse` int(11) NOT NULL,
  `id_sanpham` int(11) UNSIGNED NOT NULL,
  `sl_nhap` varchar(50) NOT NULL,
  `sl_ngaynhap` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_wishlist`
--

CREATE TABLE `tbl_wishlist` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) UNSIGNED NOT NULL,
  `productId` int(11) UNSIGNED NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Chỉ mục cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brandId`);

--
-- Chỉ mục cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartId`),
  ADD KEY `productId` (`productId`);

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catId`);

--
-- Chỉ mục cho bảng `tbl_compare`
--
ALTER TABLE `tbl_compare`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`,`productId`),
  ADD KEY `customer_id_2` (`customer_id`,`productId`),
  ADD KEY `productId` (`productId`);

--
-- Chỉ mục cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productId` (`productId`,`customer_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productId`),
  ADD KEY `catId` (`catId`,`brandId`),
  ADD KEY `brandId` (`brandId`);

--
-- Chỉ mục cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`sliderId`);

--
-- Chỉ mục cho bảng `tbl_warehouse`
--
ALTER TABLE `tbl_warehouse`
  ADD PRIMARY KEY (`id_warehouse`),
  ADD KEY `id_sanpham` (`id_sanpham`);

--
-- Chỉ mục cho bảng `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`,`productId`),
  ADD KEY `productId` (`productId`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brandId` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catId` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `tbl_compare`
--
ALTER TABLE `tbl_compare`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `productId` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `sliderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `tbl_warehouse`
--
ALTER TABLE `tbl_warehouse`
  MODIFY `id_warehouse` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD CONSTRAINT `tbl_cart_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `tbl_product` (`productId`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `tbl_compare`
--
ALTER TABLE `tbl_compare`
  ADD CONSTRAINT `tbl_compare_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `tbl_customer` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `tbl_compare_ibfk_2` FOREIGN KEY (`productId`) REFERENCES `tbl_product` (`productId`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD CONSTRAINT `tbl_order_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `tbl_customer` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `tbl_order_ibfk_2` FOREIGN KEY (`productId`) REFERENCES `tbl_product` (`productId`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD CONSTRAINT `tbl_product_ibfk_1` FOREIGN KEY (`catId`) REFERENCES `tbl_category` (`catId`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `tbl_product_ibfk_2` FOREIGN KEY (`brandId`) REFERENCES `tbl_brand` (`brandId`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `tbl_warehouse`
--
ALTER TABLE `tbl_warehouse`
  ADD CONSTRAINT `tbl_warehouse_ibfk_1` FOREIGN KEY (`id_sanpham`) REFERENCES `tbl_product` (`productId`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  ADD CONSTRAINT `tbl_wishlist_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `tbl_product` (`productId`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `tbl_wishlist_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `tbl_customer` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
