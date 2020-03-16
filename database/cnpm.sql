-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 16, 2020 at 01:31 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cnpm`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  `display` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_name`, `url`, `position`, `display`) VALUES
(13, 'Lamp', '', 3, 0),
(12, 'Decorations', '', 2, 0),
(10, 'Chair', '', 1, 0),
(14, 'Table', '', 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(255) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `product_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `product_price` decimal(15,2) NOT NULL,
  `selling_price` decimal(15,2) NOT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `introduce` text COLLATE utf8_unicode_ci NOT NULL,
  `made_in` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `post_on` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `cat_id`, `product_name`, `product_price`, `selling_price`, `image`, `introduce`, `made_in`, `post_on`) VALUES
(39, 10, 'Classroom Chair\r\n', '500000.00', '500000.00', 'our-team.jpeg', '<p>Good</p>\r\n', 'India', '2019-10-17 23:40:24'),
(33, 12, 'Cute trash', '500000.00', '500000.00', 'news_19.jpeg', '<p>Good</p>\r\n', 'India', '2019-10-17 23:34:05'),
(34, 12, 'Round Clock', '4000000.00', '3800000.00', 'saleoff_03.png', '<p>Good</p>\r\n', 'India', '2019-10-17 23:35:26'),
(35, 12, 'Ornamental Plants', '1200000.00', '1200000.00', 'product_20.png', '<p>Good</p>\r\n', 'India', '2019-10-17 23:36:53'),
(36, 10, 'Chair', '2500000.00', '2500000.00', 'news_04.jpeg', '<p>Good</p>\r\n', 'India', '2019-10-17 23:38:10'),
(37, 10, 'Sofa', '3000000.00', '2800000.00', 'news_07.jpeg', '<p>Good</p>\r\n', 'India', '2019-10-17 23:38:54'),
(38, 10, 'Gray Working Chair', '3000000.00', '2900000.00', 'product_04.png', '<p>Good</p>\r\n', 'India', '2019-10-17 23:39:46'),
(32, 12, 'Desktop Painting', '1500000.00', '1500000.00', 'instagram_08.jpeg', '<p>Good</p>\r\n', 'India', '2019-10-17 23:31:58'),
(31, 12, 'Beautiful clock', '5000000.00', '4500000.00', 'news_22.jpeg', '<p>Good</p>\r\n', 'India', '2019-10-17 23:31:11'),
(30, 12, 'Wall Clock Calendar', '8000000.00', '8000000.00', 'news_11.jpeg', '<p>Good</p>\r\n', 'India', '2019-10-17 23:29:57'),
(29, 13, 'Reverse Hanging Lights', '3000000.00', '3000000.00', 'slide_10.png', '<p>Good</p>\r\n', 'India', '2019-10-17 23:28:25'),
(28, 13, 'Fashion Hanging Lamp', '4000000.00', '3500000.00', 'product_36.png', '<p>Good</p>\r\n', 'India', '2019-10-17 23:27:22'),
(27, 13, 'Decorative lights', '4500000.00', '4300000.00', 'product_26.png', '<p>Good</p>\r\n', 'India', '2019-10-17 23:26:19'),
(26, 13, 'Nightlight black', '3500000.00', '3400000.00', 'product_24.png', '<p>Good</p>\r\n', 'India', '2019-10-17 23:25:06'),
(25, 13, 'Lamp', '3400000.00', '3400000.00', 'product_09.png', '<p>Good</p>\r\n', 'India', '2019-10-17 23:23:46'),
(24, 13, 'Diamond Lights', '5000000.00', '5000000.00', 'product_05.png', '<p>Good</p>\r\n', 'India', '2019-10-17 23:23:04'),
(40, 10, 'Long Sofa', '8000000.00', '8000000.00', 'product_12.png', '<p>Good</p>\r\n', 'India', '2019-10-17 23:41:01'),
(41, 10, 'Relaxing chair', '5000000.00', '5000000.00', 'product_18.png', '<p>Good</p>\r\n', 'India', '2019-10-17 23:41:46'),
(42, 10, 'White Relaxing Chair', '4500000.00', '4300000.00', 'product_22.jpeg', '<p>Good</p>\r\n', 'India', '2019-10-17 23:42:27'),
(43, 10, 'Diamond chair', '700000.00', '700000.00', '77306_350_200_W.png', '<p> Diamond chairs are made of stainless steel and stainless steel pvc leather. & nbsp; </p>\r\n<p>Ghế Diamond c&oacute; 2 m&agrave;u : đen, đỏ&nbsp;</p>\r\n\r\n<p>K&iacute;ch thước : 85 x 68 x 44 cm&nbsp;</p>\r\n', 'India', '2019-10-29 01:29:37'),
(44, 10, 'Sofa G002', '4500000.00', '4000000.00', '74134_350_200_W.jpg', '<p> Sofas are made up of stainless steel and stainless steel; pvc leather. & nbsp; </p>\r\n\r\n<p> Sofas c & oacute; 2 m & u: black, red & nbsp; </p>\r\n\r\n<p> Dimensions: 85 x 68 x 44 cm & nbsp; </p>', 'India', '2019-10-29 01:34:45'),
(45, 10, 'Sofa G003', '7000000.00', '6000000.00', '74132_350_200_W.jpg', '<p> SOFA chairs are made up of stainless steel and stainless steel; pvc leather. & nbsp; </p>\r\n\r\n<p> SOFA chairs & nbsp; c & oacute; 2 m & u: black, red & nbsp; </p>\r\n\r\n<p> Dimensions: 85 x 68 x 44 cm & nbsp; </p>', 'India', '2019-10-29 01:36:15'),
(46, 10, 'Cafe chairs', '1500000.00', '1500000.00', '77285_350_200_W.png', '<p> The chair is made up of stainless steel and stainless steel; pvc leather. & nbsp; </p>\r\n<p>Ghế c&oacute; 2 m&agrave;u : đen, đỏ&nbsp;</p>\r\n\r\n<p>K&iacute;ch thước : 85 x 68 x 44 cm&nbsp;</p>\r\n', 'India', '2019-10-29 01:37:28'),
(47, 10, 'Sofa G004', '6500000.00', '5000000.00', '74130_350_200_W.jpg', '<p> SOFA chairs are made up of stainless steel and stainless steel; pvc leather. & nbsp; </p>\r\n\r\n<p> SOFA chairs & nbsp; c & oacute; 2 m & u: black, red & nbsp; </p>\r\n\r\n<p> Dimensions: 85 x 68 x 44 cm & nbsp; </p>', 'India', '2019-10-29 01:38:27'),
(48, 10, 'Single sofa MH 002', '3400000.00', '3400000.00', '74136_350_200_W.jpg', '<p> SOFA chairs are made up of stainless steel and stainless steel; pvc leather. & nbsp; </p>\r\n<p>Ghế SOFA&nbsp;c&oacute; 2 m&agrave;u : đen, đỏ&nbsp;</p>\r\n\r\n<p>K&iacute;ch thước : 85 x 68 x 44 cm&nbsp;</p>\r\n', 'India', '2019-10-29 01:39:10'),
(49, 10, 'Sofa G005', '6500000.00', '6500000.00', '74128_350_200_W.jpg', '<p> SOFA chairs are made up of stainless steel and stainless steel; pvc leather. & nbsp; </p>\r\n\r\n<p> SOFA chairs & nbsp; c & oacute; 2 m & u: black, red & nbsp; </p>\r\n\r\n<p> Dimensions: 85 x 68 x 44 cm & nbsp; </p>', 'India', '2019-10-29 01:40:02'),
(50, 10, 'Tolix GA01 Morechair chair', '500000.00', '400001.00', '77309_350_200_W.png', '<p> SOFA chairs are made up of stainless steel and stainless steel; pvc leather. & nbsp; </p>\r\n\r\n<p> SOFA chairs & nbsp; c & oacute; 2 m & u: black, red & nbsp; </p>\r\n\r\n<p> Dimensions: 85 x 68 x 44 cm & nbsp; </p>', 'India', '2019-10-29 01:40:56'),
(51, 10, 'Eames chair GE-08', '1200000.00', '1200000.00', '77307_350_200_W.png', '<p> Seats & nbsp; are made of stainless steel and stainless steel; pvc leather. & nbsp; </p>\r\n\r\n<p> Seats c & oacute; 2 m & u: black, red & nbsp; </p>\r\n\r\n<p> Dimensions: 85 x 68 x 44 cm & nbsp; </p>', 'India', '2019-10-29 01:41:40'),
(52, 10, 'Kennedy Chair DC-08', '2300000.00', '2300000.00', '77234_350_200_W.png', '<p> Cafe chairs & nbsp; are made of stainless steel and stainless steel; pvc leather. & nbsp; </p>\r\n\r\n<p> Cafe chairs & nbsp; c & oacute; 2 m & u: black, red & nbsp; </p>\r\n\r\n<p> Dimensions: 85 x 68 x 44 cm & nbsp; </p>', 'India', '2019-10-29 01:42:52'),
(53, 13, 'Chandeliers', '6500000.00', '6500000.00', 'đèn-chùm.jpg', '<p> In a space where a & aacute; a & ugrave; are usually installed in a position; center or area of ​​the area for reception. The only technology that brings only a & aute for customers\' space c & ograve; n l & agrave; Highlight collection & everyone. When placing a & a & rsquo; board room, it creates a luxurious, quirky look. must allow interior decoration. </p>\r\n\r\n<p> What to do to see what a & aacute; l & agrave; one of these types of e & agrave; The most beautiful looking beauty is the most beautiful beauty in the world. Special special products In line with the classic design, T&C classic. A suggestive & yacute; ho & agrave; n l & agrave; you c & oacute; can use these designs & nbsp; <a href=\"https://blog.noithat9x.vn/den-page-tri/\" target=\"_blank\"> <strong> site & iacute; </strong> & nbsp; </a> for & aacute; to increase luxury & agrave; Eye catching. </p>', 'India', '2019-10-29 01:47:10'),
(54, 13, 'LED ceiling lights', '4500000.00', '400000.00', 'Đèn-led-âm-trần.jpg', '<p> Type e & tgrave; n & agrave; y c & oacute; Characteristic l & agrave; covered in ceiling tiles. with & aacute; lighting & agrave; Bring modern & modern space to the world. For many modern products, the model is equipped with a modern equipment. n & agrave; y are used very popular. As soon as you set up space and space, you will feel the simplicity, spaciousness and breadth of space. g & agrave; ng. </p>\r\n\r\n<p> An additional feature that makes it easy to work with an eye ch & iacute; Products for ceiling tiles c & oacute; gi & aacute; th & aggrave; well suited. We have obsolete & outdated technology as well as problems. want to like drop-down, drop-down, </p>\r\n\r\n<p> Complete page & page of page; Non-porous ceiling panel type, no ceiling & ceiling panel. In & quot & aacute; impressive & c & oacute; Be able to manage m & m t & tgrave; drop or egrave; drop. We will work together. a relative combination of h & ograve; a. </p>', 'India', '2019-10-29 01:47:52'),
(55, 13, 'Drop light', '4000000.00', '4000000.00', 'đèn-thả.jpg', '<p> If you are l & agrave; one of the furniture of the sophisticated and modern style of modern furniture. d & lgrave; Select v & ocirc; c & ugrave; perfect cough. You won\'t have to worry about the type of drop-out that makes the space look ugly. or glitzy. On the contrary, the freshness of this design will take both the owner and the owner. t & iacute; most. </p>\r\n\r\n<p> Contemporary & ecirc; n, with design type & timel; og og og ch ch ch ch y y y og,,,,, og og og og og og og og og og og og og og og og og og og og og og og og og og og og og og og og og og og og og ph ph ph ph ph ph ph ph ph ph ph ph ph ph ph ph ph ph ph ph ph ph ph ph ph ph ph ph ph ph ph ch ph combine eating & yacute; between the cars v & ocirc; c & ugrave; ng required. For impressive impression, you c & oacute; Simple usable from 1 & ndash; 3 pieces for drop or one set for drop-on set enough. </p>', 'India', '2019-10-29 01:48:35'),
(56, 13, 'Downlight', '2000000.00', '1500000.00', 'Đèn-downlight.jpg', '<p>Đ&acirc;y l&agrave; loại đ&egrave;n trang tr&iacute; ph&ograve;ng kh&aacute;ch tuy &iacute;t được nhắc đến nhưng lại c&oacute; được một chỗ đứng trong thiết kế trang tr&iacute; nội thất. Loại đ&egrave;n n&agrave;y được lắp tr&ecirc;n trần nh&agrave; với hệ thống &acirc;m trần hoặc lắp nổi.</p>\r\n\r\n<p>Điều đặc biệt l&agrave; &aacute;nh s&aacute;ng của đ&egrave;n c&oacute; t&aacute;n quang hoặc định hướng, thứ &aacute;nh s&aacute;ng n&agrave;y tỏa ra nhiều kh&ocirc;ng gian rộng r&atilde;i. Mang đến cho&nbsp;<a href=\"https://vietnamembassy-iran.org/noi-that/\" target=\"_blank\"><strong>nội thất nh&agrave; cửa</strong></a>&nbsp;sự nổi bật v&agrave; ấn tượng nhất. Ch&uacute;ng đặc biệt ph&ugrave; hợp khi gia đ&igrave;nh tổ chức những sự kiện đặc biệt.</p>\r\n', 'India', '2019-10-29 01:49:12'),
(57, 13, 'Tree lights / table lamp', '3500000.00', '3500000.00', 'Đèn-cây-đèn-bàn.jpg', '<p> A & tgrave; A & aacute; This form is larger than the head per person or a model for both adaption; can bring great effects. T & ugrave & mr & o; you c & oacute; Can design v & agrave; press nh & aacute; Use & uacute; ng. </p>', 'India', '2019-10-29 01:49:50'),
(58, 13, 'Lamb', '1000000.00', '1000000.00', 'Đèn-dây.jpg', '<p> Equipped for special occasions, this LED lighting will give you endless inspiration for a beautiful & glamorous room. </ p>', 'India', '2019-10-29 01:50:28'),
(60, 12, 'GS 046 interior wall mirror', '4500000.00', '4500000.00', 'guong-treo-tuong-trang-tri-noi-that-gs-046-6.jpg', '<p> * Material: Metal </p>\r\n\r\n<p> * Size: 70cm </p>', 'India', '2019-10-29 01:56:10'),
(61, 12, 'Wall art paintings for interior decoration', '5700000.00', '5000000.00', 'tranh-decor-phong-cach-a-dong-lich-lam-ts-271.jpg', '<p> * Material: Metal </p>\r\n\r\n<p> * Size: 160x90cm </p>', 'India', '2019-10-29 03:24:36'),
(62, 12, 'Unique interior decoration TS 331', '4500000.00', '4500000.00', 'decor-trang-tri-noi-that-doc-dao-ts-331-1.jpg', '<p> * Material: Metal </p>\r\n\r\n<p> * Size: 160cm </p>', 'India', '2019-10-29 01:57:59'),
(63, 12, 'Decorative painting of apricot flowers TS 329', '4500000.00', '4500000.00', 'tranh-decor-hoa-mai-trang-tri-ts-329-4.jpg', '<p> * Material: Metal </p>\r\n\r\n<p> * Size: 130cm </p>', 'India', '2019-10-29 01:59:21'),
(64, 12, 'Banana leaf decor, interior decoration TS 325', '5600000.00', '5000000.00', 'la-chuoi-decor-trang-tri-noi-that-ts-325-9.jpg', '<p> * Material: Metal </p>\r\n\r\n<p> * Size: 55cm = & nbsp; <strong> 2,500,000 VND & nbsp; </strong> ------- 65cm = & nbsp; <strong> 3,000,000 VND </strong> </p>\r\n\r\n<p> * Size: 75cm = & nbsp; <strong> 3,500,000 VND </strong> & nbsp; -------- 85cm = & nbsp; <strong> 4000,000 VND </strong> </p>', 'India', '2019-10-29 02:00:26'),
(65, 12, 'Wall art decor TS 323', '4000000.00', '4000000.00', 'decor-nghe-thuat-gan-tuong-ts-323-7.jpg', '<p> * Material: Metal </p>\r\n\r\n<p> * Size: 100cm </p>', 'India', '2019-10-29 02:01:04'),
(66, 12, 'Leaves decor impressive interior decoration TS 311', '5000000.00', '4500000.00', 'la-decor-trang-tri-noi-that-an-tuong-ts-311-6.jpg', '<p> * Material: Metal </p>', 'India', '2019-10-29 02:02:33'),
(67, 12, 'Iron art painting fern TS 309', '4500000.00', '4500000.00', 'tranh-nghe-thuat-sat-cay-duong-xi-ts-309-5.jpg', '<p> * Material: Metal </p>\r\n\r\n<p> * Size: 140cm </p>', 'India', '2019-10-29 02:03:16'),
(68, 12, 'Interior decoration senior TS 290', '6000000.00', '5000000.00', 'decor-trang-tri-noi-that-cao-cap-ts-290-1.jpg', '<p> * Size: 160cm </p>', 'India', '2019-10-29 02:04:07'),
(69, 12, 'Decorative paintings Asian decor TS 289', '3500000.00', '3500000.00', 'tranh-decor-trang-tri-a-dong-ts-289-1.jpg', '<p> * Material: Metal </p>\r\n\r\n<p> * Size: 150x53cm </p>', 'India', '2019-10-29 02:04:52'),
(70, 12, 'Ginko leaf painting in interior decoration TS 287', '3500000.00', '3500000.00', 'tranh-la-ginko-trang-tri-noi-that-ts-287-10.jpg', '<p> * Material: Metal </p>\r\n\r\n<p> * Size: 120x65cm </p>', 'India', '2019-10-29 02:05:38'),
(71, 12, 'Wall mounted decor for living room TS 286', '4000000.00', '3499999.00', 'decor-gan-tuong-trang-tri-phong-khach-ts-286-4.jpg', '<p> * Material: Metal </p>\r\n\r\n<p> * Size: 80cm = & nbsp; <strong> 4,000,000 VND </strong> </p>\r\n\r\n<p> * Size: 110cm = & nbsp; <strong> 5,000,000 VND </strong> </p>', 'India', '2019-10-29 02:06:16'),
(72, 12, 'Interior decoration flower paintings TS 285', '3400000.00', '3400000.00', 'tranh-decor-hoa-trang-tri-noi-that-ts-285-1.jpg', '<p> * Material: Metal </p>\r\n\r\n<p> * Size: 160cm </p>', 'India', '2019-10-29 02:07:00'),
(73, 12, 'Unique decorative wall decor TS 280', '4500000.00', '4500000.00', 'decor-trang-tri-treot-tuong-doc-dao-ts-280-1.jpg', '<p> * Material: Metal </p>\r\n\r\n<p> * Size: 80cm = & nbsp; <strong> 3,500,000 VND </strong> </p>\r\n\r\n<p> * Size: 110cm = <strong> & nbsp; 4,500,000 VND </strong> </p>', 'India', '2019-10-29 02:07:48'),
(74, 12, 'Iron leaf painting interior decoration TS 270', '5500000.00', '5000000.00', 'tranh-sat-la-tia-trang-tri-noi-that-ts-270-1.jpg', '<p> * Material: Metal </p>\r\n\r\n<p> * Size: 130x60cm = & nbsp; <strong> 5,500,000 VND </strong> </p>\r\n\r\n<p> * Size: 160x70cm = & nbsp; <strong> 6,000,000 VND </strong> </p>', 'India', '2019-10-29 02:09:44');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `role` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `permission` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `role`, `permission`) VALUES
(1, 'Admin', 'login,add_category,delete_user,delete_role,edit_role,add_role,edit_category'),
(2, 'Member', 'login'),
(8, 'User', '');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `slide_id` int(255) NOT NULL,
  `slide_image` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `post_on` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`slide_id`, `slide_image`, `description`, `post_on`) VALUES
(11, 'slide_03.jpeg', '<p>Slide 3</p>\r\n', '2019-10-17 23:16:35'),
(10, 'slide_02.jpeg', '<p>Slide 2</p>\r\n', '2019-10-17 23:16:16'),
(9, 'slide_01.jpeg', '<p>Slide 1</p>\r\n', '2019-10-17 23:15:55');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `transaction_id` int(255) NOT NULL,
  `transaction_code` int(255) NOT NULL,
  `customer_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `customer_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `customer_phone` int(11) NOT NULL,
  `customer_address` text COLLATE utf8_unicode_ci NOT NULL,
  `product` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `subtotal` decimal(15,2) NOT NULL,
  `time_order` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`transaction_id`, `transaction_code`, `customer_name`, `customer_email`, `customer_phone`, `customer_address`, `product`, `quantity`, `subtotal`, `time_order`) VALUES
(14, 595306, 'Ajit Jadhav', 'tientu99865@gmail.com', 358828585, 'Nam Hưng - Nam Sách', 'Ghế Làm Việc', 1, '2500000.00', '2019-10-27 19:30:26'),
(12, 595306, 'Ajit Jadhav', 'tientu99865@gmail.com', 358828585, 'Nam Hưng - Nam Sách', 'Đèn Treo Thời Trang', 3, '10500000.00', '2019-10-27 19:30:25'),
(13, 595306, 'Ajit Jadhav', 'tientu99865@gmail.com', 358828585, 'Nam Hưng - Nam Sách', 'Cây Cảnh Treo', 1, '1200000.00', '2019-10-27 19:30:26'),
(16, 722596, 'Dhanaji Yadav', 'tinhnt.gha@gmail.com', 123456789, 'Thanh Hóa', 'Đèn ngủ', 1, '3400000.00', '2019-10-27 22:52:53'),
(17, 722596, 'Dhanaji Yadav', 'tinhnt.gha@gmail.com', 123456789, 'Thanh Hóa', 'Tranh Để Bàn', 1, '1500000.00', '2019-10-27 22:52:53'),
(18, 722596, 'Dhanaji Yadav', 'tinhnt.gha@gmail.com', 123456789, 'Thanh Hóa', 'Ghế Làm Việc', 2, '5000000.00', '2019-10-27 22:52:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_account` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_account`, `user_password`, `role_id`) VALUES
(3, 'Admin', 'tinhnt.gha@gmail.com', 'f865b53623b121fd34ee5426c792e5c33af8c227', 2),
(2, 'Tiến Tú ', 'admin@gmail.com', 'f865b53623b121fd34ee5426c792e5c33af8c227', 1),
(10, 'Phuong', 'tientu99865@gmail.com', 'f865b53623b121fd34ee5426c792e5c33af8c227', 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`),
  ADD UNIQUE KEY `tu` (`role`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`slide_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `tu` (`user_account`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `slide_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `transaction_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
