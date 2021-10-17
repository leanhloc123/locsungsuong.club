-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 05, 2021 at 07:57 AM
-- Server version: 10.2.38-MariaDB-cll-lve
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `unbahckh_huuloc`
--

-- --------------------------------------------------------

--
-- Table structure for table `table_banks`
--

CREATE TABLE `table_banks` (
  `banks_id` int(11) NOT NULL,
  `banks_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `banks_images` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `banks_account_holder` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `banks_number_holder` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `banks_branch` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `banks_status` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `banks_time` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `table_banks`
--

INSERT INTO `table_banks` (`banks_id`, `banks_name`, `banks_images`, `banks_account_holder`, `banks_number_holder`, `banks_branch`, `banks_status`, `banks_time`) VALUES
(3, 'VIETCOMBANK', 'https://iweb.tatthanh.com.vn/pic/3/blog/y-nghia-thiet-ke-logo-cua-ngan-hang-vietcombank.jpg', 'DUONG DUY TUNG', '0351001238845', 'false', 'true', '1625181063'),
(4, 'MOMO', 'https://upload.wikimedia.org/wikipedia/vi/archive/f/fe/20201011055543%21MoMo_Logo.png', 'DUONG DUY TUNG', '0352350987', 'false', 'true', '1625181103');

-- --------------------------------------------------------

--
-- Table structure for table `table_buff_like`
--

CREATE TABLE `table_buff_like` (
  `buff_like_id` int(11) NOT NULL,
  `buff_like_username` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `buff_like_facebook_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `buff_like_facebook` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `buff_like_service` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `buff_like_content` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `buff_like_reaction` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `buff_like_amount` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `buff_like_comment` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `buff_like_type` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `buff_like_gender` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `buff_like_origin` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `buff_like_increased` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `buff_like_present` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `buff_like_payment` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `buff_like_status` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `buff_like_time` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `table_card`
--

CREATE TABLE `table_card` (
  `card_id` int(11) NOT NULL,
  `card_username` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `card_code` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `card_type` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `card_amount` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `card_serial` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `card_pin` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `card_origin` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `card_content` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `card_status` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `card_time` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `table_card`
--

INSERT INTO `table_card` (`card_id`, `card_username`, `card_code`, `card_type`, `card_amount`, `card_serial`, `card_pin`, `card_origin`, `card_content`, `card_status`, `card_time`) VALUES
(2, 'justintung', '94dd0902624818970a25d975affa78ed', 'Viettel', '20000', '10004958294', '1000495829422', '14600', '', 'progress', '1625212966'),
(3, 'justintung', '231bbe90250f5950b6504791894dbebc', 'Viettel', '20000', '10004958295', '1000948592844', '14600', '', 'fail', '1625213531');

-- --------------------------------------------------------

--
-- Table structure for table `table_history_account`
--

CREATE TABLE `table_history_account` (
  `history_account_id` int(11) NOT NULL,
  `history_account_username` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `history_account_content` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `history_account_ip` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `history_account_useragent` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `history_account_time` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `table_history_account`
--

INSERT INTO `table_history_account` (`history_account_id`, `history_account_username`, `history_account_content`, `history_account_ip`, `history_account_useragent`, `history_account_time`) VALUES
(49, 'text123', 'Đăng nhập vào tài khoản.', '206.189.148.130', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', '1625184634'),
(50, 'justintung', 'Đăng nhập vào tài khoản.', '206.189.148.130', 'Mozilla/5.0 (Linux; Android 10; RMX2032) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Mobile Safari/537.36', '1625185225'),
(51, 'justintung', 'Đăng nhập vào tài khoản.', '206.189.148.130', 'Mozilla/5.0 (Linux; Android 10; RMX2032) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Mobile Safari/537.36', '1625194684'),
(52, 'justintung', 'Đăng nhập vào tài khoản.', '171.240.71.240', 'Mozilla/5.0 (Linux; Android 10; RMX2032) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Mobile Safari/537.36', '1625199773'),
(53, 'justintung', 'Đăng nhập vào tài khoản.', '171.240.71.240', 'Mozilla/5.0 (Linux; Android 10; RMX2032) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Mobile Safari/537.36', '1625200148'),
(54, 'justintung', 'Đăng nhập vào tài khoản.', '171.240.71.240', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '1625212322'),
(55, 'justintung', 'Đăng nhập vào tài khoản.', '206.189.148.130', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '1625287098'),
(56, 'justintung', 'Đăng nhập vào tài khoản.', '206.189.148.130', 'Mozilla/5.0 (Linux; Android 10; RMX2032) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Mobile Safari/537.36', '1625355594'),
(57, 'justintung', 'Đăng nhập vào tài khoản.', '206.189.148.130', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '1625360700'),
(58, 'hungdavid', 'Đăng nhập vào tài khoản.', '206.189.148.130', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/95.0.150 Chrome/89.0.4389.150 Safari/537.36', '1625407299'),
(59, 'hungdavid', 'Đăng nhập vào tài khoản.', '206.189.148.130', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/95.0.150 Chrome/89.0.4389.150 Safari/537.36', '1625407301');

-- --------------------------------------------------------

--
-- Table structure for table `table_history_buy`
--

CREATE TABLE `table_history_buy` (
  `history_buy_id` int(11) NOT NULL,
  `history_buy_username` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `history_buy_content` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `history_buy_point` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `history_buy_balance` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `history_buy_ip` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `history_buy_time` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `table_history_buy`
--

INSERT INTO `table_history_buy` (`history_buy_id`, `history_buy_username`, `history_buy_content`, `history_buy_point`, `history_buy_balance`, `history_buy_ip`, `history_buy_time`) VALUES
(26, 'kenthudoan', 'Mua tăng like bài viết sales.', '750', '4998724050', '::1', '1612021525'),
(27, 'adminsite', 'Mua tăng theo dõi người dùng', '12500', '10000100', '27.67.128.30', '1618529649'),
(28, 'adminsite', 'Mua tăng theo dõi người dùng', '12500', '9987600', '27.67.128.30', '1618569160'),
(29, 'adminsite', 'Mua tăng theo dõi người dùng', '12000', '9975100', '27.67.128.30', '1618569190'),
(30, 'adminsite', 'Mua tăng theo dõi người dùng', '12500', '9963100', '27.67.128.30', '1618571184'),
(31, 'adminsite', 'Mua tăng theo dõi người dùng Tiktok.', '4000', '9950600', '27.67.128.30', '1618572400'),
(32, 'adminsite', 'Mua tăng theo dõi người dùng', '12000', '9946600', '27.67.128.30', '1618573695'),
(33, 'adminsite', 'Mua vip like clone người dùng.', '70000', '9934600', '27.67.128.30', '1618574035'),
(34, 'adminsite', 'Mua tăng theo dõi người dùng', '12000', '9864600', '27.67.128.30', '1618576047'),
(35, 'adminsite', 'Mua tăng like bài viết.', '150', '9852600', '125.235.62.149', '1618614691'),
(36, 'adminsite', 'Mua tăng like bài viết.', '150', '9852450', '125.235.62.149', '1618615550'),
(37, 'adminsite', 'Mua tăng like bài viết.', '0', '9852300', '125.235.62.149', '1618640886');

-- --------------------------------------------------------

--
-- Table structure for table `table_momo`
--

CREATE TABLE `table_momo` (
  `momo_id` int(11) NOT NULL,
  `momo_username` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `momo_request_id` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `momo_tran_id` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `momo_partner_id` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `momo_partner_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `momo_amount` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `momo_content` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `momo_status` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `momo_time` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `table_service`
--

CREATE TABLE `table_service` (
  `service_id` int(11) NOT NULL,
  `service_title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `service_slug` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `service_category` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `service_content` text COLLATE utf8_unicode_ci NOT NULL,
  `service_point` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `service_min_amount` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `service_max_amount` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `service_warranty` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `service_gender` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `service_reaction_love` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `service_reaction_care` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `service_reaction_haha` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `service_reaction_wow` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `service_reaction_sad` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `service_reaction_angry` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `service_status` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `service_time` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `table_service`
--

INSERT INTO `table_service` (`service_id`, `service_title`, `service_slug`, `service_category`, `service_content`, `service_point`, `service_min_amount`, `service_max_amount`, `service_warranty`, `service_gender`, `service_reaction_love`, `service_reaction_care`, `service_reaction_haha`, `service_reaction_wow`, `service_reaction_sad`, `service_reaction_angry`, `service_status`, `service_time`) VALUES
(1, 'Buff Sub Instagram', 'buff-sub-instagram', 'facebook', '<p><strong><em>Mục Giới T&iacute;nh Hiện Đang Bảo Tr&igrave;</em></strong></p>\n\n<p>- Like/Follow Instagram c&oacute; thể sẽ tụt trong l&uacute;c tăng hoặc sau khi tăng sau nhưng kh&ocirc;ng qu&aacute; nhiều, h&atilde;y mua dư ra từ 5 - 20% nh&eacute;, v&iacute; dụ 500 Follow th&igrave; mua 550, 570 Follow<br />\n- Mua loại bảo h&agrave;nh để được tăng dư ra ngẫu nhi&ecirc;n từ 5 - 10% v&agrave; được bảo h&agrave;nh trong 1 tuần nếu tụt từ 30% số lượng đ&atilde; mua!<br />\n- Quy định bảo h&agrave;nh l&agrave; nếu số lượng Like/Follow hiện tại thấp hơn số lượng Like/Follow ho&agrave;n th&agrave;nh th&igrave; sẽ được b&ugrave; trong tuần!<br />\n- Tự động chặn ID khi th&ecirc;m tối đa 10 ID giống nhau dẫn đến SPAM tr&ecirc;n mỗi dịch vụ<br />\n- Th&ecirc;m 1 ID phải đợi 7 ng&agrave;y sau mới th&ecirc;m được vui l&ograve;ng c&acirc;n nhắc!<br />\n- Hủy đơn v&agrave; ho&agrave;n tiền đối với c&aacute;c ID bị lỗi ( c&oacute; thể bị trừ ph&iacute; 5k ), c&oacute; thể xem số tiền đ&atilde; to&agrave;n tại mục&nbsp;lịch sử&nbsp;nh&eacute;!<br />\n- Tất cả đều l&agrave; người d&ugrave;ng việt 100% c&oacute; thể kiểm tra khi tăng<br />\n- Kh&ocirc;ng đổi&nbsp;USERNAME&nbsp;trong qu&aacute; tr&igrave;nh tăng theo d&otilde;i t&agrave;i khoản</p>\n', '85', '500', '100000', '130', '25', '35', '35', '40', '30', '50', '100', 'true', '2021-01-13 21:39:49'),
(2, 'Buff Like Ngon', 'buff-like-ngon', 'facebook', '<p>B&agrave;i viết lu&ocirc;n lu&ocirc;n ở chế độ C&ocirc;ng khai, đối với Page đang ở chế độ T&ugrave;y chỉnh th&igrave; cũng chuyển sang C&ocirc;ng khai!</p>\n', '70', '10', '500000', '95', '25', '35', '35', '40', '30', '50', '100', 'true', '2021-01-13 21:45:58'),
(3, 'Vip Like Clone Facebook', 'vip-like-clone-facebook', 'facebook', '<ul>\n	<li>Like Có AVT cứ đăng bài cách nhau 10-20 phút là chạy!</li>\n	<li>G&acirc;̀n như 99% sẽ kh&ocirc;ng tăng like cho post ảnh đại di&ecirc;̣n hoặc ảnh bìa!</li>\n	<li>Ch&uacute; &yacute; viplike chạy theo cơ chế v&iacute; dụ bạn mua g&oacute;i 100 like khi stt đ&oacute; hơn 100 like l&agrave; hệ thống dừng kh&ocirc;ng chạy th&ecirc;m nữa!</li>\n	<li>Like hoạt động từ 7h - 23h</li>\n	<li>Nếu gặp lỗi h&atilde;y nhắn tin hỗ trợ ph&iacute;a b&ecirc;n phải g&oacute;c m&agrave;n h&igrave;nh để được hỗ trợ tốt nhất!</li>\n</ul>\n\n<p>Ch&uacute; &yacute;:</p>\n\n<p>- Hệ thống chỉ tăng Like cho c&aacute;c b&agrave;i viết đăng mới, kh&ocirc;ng hỗ trợ c&aacute;c b&agrave;i viết th&ecirc;m h&igrave;nh ảnh v&agrave;o album đ&atilde; c&oacute; sẵn.</p>\n\n<p>- Nghi&ecirc;m cấm Buff c&aacute;c ID Seeding c&oacute; nội dung vi phạm ph&aacute;p luật, ch&iacute;nh trị, đồ trụy... Nếu cố t&igrave;nh buff bạn sẽ bị trừ hết tiền v&agrave; band khỏi hệ thống autofb vĩnh viễn, v&agrave; phải chịu ho&agrave;n to&agrave;n tr&aacute;ch nhiệm trước ph&aacute;p luật.</p>\n\n<p>- Hệ thống sử dụng 99% t&agrave;i khoản người VN, fb thật để tương t&aacute;c like, comment, share....</p>\n\n<p>- Vui l&ograve;ng lấy đ&uacute;ng id b&agrave;i viết, c&ocirc;ng khai v&agrave; check kỹ job tr&aacute;nh tạo nhầm, t&iacute;nh năng đang trong giai đoạn thử nghiệm n&ecirc;n sẽ kh&ocirc;ng ho&agrave;n tiền nếu bạn tạo nhầm</p>\n\n<p>- Nhập id lỗi hoặc trong thời gian chạy die id th&igrave; hệ thống kh&ocirc;ng ho&agrave;n lại tiền.</p>\n', '220', '50', '10000', '0', '0', '0', '0', '0', '0', '0', '0', 'true', '2021-01-16 09:20:59'),
(4, 'Buff Share Facebook', 'buff-share-facebook', 'facebook', '<p>B&agrave;i viết lu&ocirc;n lu&ocirc;n ở chế độ C&ocirc;ng khai, đối với Page đang ở chế độ T&ugrave;y chỉnh th&igrave; cũng chuyển sang C&ocirc;ng khai!</p>\n', '300', '5', '20000', '600', '20', '0', '0', '0', '0', '0', '0', 'true', '2021-01-16 16:25:40'),
(5, 'Buff Comment Facebook', 'buff-comment-facebook', 'facebook', '<p>- B&agrave;i viết lu&ocirc;n lu&ocirc;n ở chế độ C&ocirc;ng khai, đối với Page đang ở chế độ T&ugrave;y chỉnh th&igrave; cũng chuyển sang C&ocirc;ng khai!<br />\n- Mua loại bảo h&agrave;nh để được tăng dư ra ngẫu nhi&ecirc;n từ 5 - 10% v&agrave; được bảo h&agrave;nh trong 1 tuần nếu tụt từ 30% số lượng đ&atilde; mua!<br />\n- Quy định bảo h&agrave;nh l&agrave; nếu số lượng Like/CMT/Sub hiện tại thấp hơn số lượng Like/CMT/Sub ho&agrave;n th&agrave;nh th&igrave; sẽ được b&ugrave; trong tuần!<br />\n- Tự động chặn ID khi th&ecirc;m tối đa 10 ID giống nhau dẫn đến SPAM tr&ecirc;n mỗi dịch vụ<br />\n- Tất cả đều l&agrave; người d&ugrave;ng việt 100% c&oacute; thể kiểm tra khi tăng</p>\n', '650', '5', '1000', '850', '30', '0', '0', '0', '0', '0', '0', 'true', '2021-01-16 21:49:54'),
(6, 'Buff Follows Facebook', 'buff-follows-facebook', 'facebook', 'Bài viết luôn luôn ở chế độ Công khai, đối với Page đang ở chế độ Tùy chỉnh thì cũng chuyển sang Công khai!', '120', '100', '30000', '125', '100', '0', '0', '0', '0', '0', '0', 'true', '2021-01-16 22:56:15'),
(7, 'Buff Like Fanpage Facebook', 'buff-like-fanpage-facebook', 'facebook', '<p>- B&agrave;i viết lu&ocirc;n lu&ocirc;n ở chế độ C&ocirc;ng khai, đối với Page đang ở chế độ T&ugrave;y chỉnh th&igrave; cũng chuyển sang C&ocirc;ng khai!<br />\n- Mua loại bảo h&agrave;nh để được tăng dư ra ngẫu nhi&ecirc;n từ 5 - 10% v&agrave; được bảo h&agrave;nh trong 1 tuần nếu tụt từ 30% số lượng đ&atilde; mua!<br />\n- Quy định bảo h&agrave;nh l&agrave; nếu số lượng Like/CMT/Sub hiện tại thấp hơn số lượng Like/CMT/Sub ho&agrave;n th&agrave;nh th&igrave; sẽ được b&ugrave; trong tuần!<br />\n- Tự động chặn ID khi th&ecirc;m tối đa 10 ID giống nhau dẫn đến SPAM tr&ecirc;n mỗi dịch vụ<br />\n- Tất cả đều l&agrave; người d&ugrave;ng việt 100% c&oacute; thể kiểm tra khi tăng</p>\n', '130', '100', '30000', '140', '100', '0', '0', '0', '0', '0', '0', 'true', '2021-01-17 18:18:51'),
(10, 'Vip Like Fast Facebook', 'vip-like-fast-facebook', 'facebook', '<p>- VIP Like Nhanh l&agrave; loại Like c&oacute; Avatar, Th&ocirc;ng tin, Bạn B&egrave; đầy đủ gần giống như nick thật, tốc độ phụ thuộc khi mua v&agrave; kh&ocirc;ng thể cập nhật l&uacute;c đ&atilde; mua xong!<br />\n- Like chạy si&ecirc;u nhanh từ 3 - 7 ph&uacute;t sẽ đủ Like<br />\n- Loại Like n&agrave;y c&oacute; tụt nhưng kh&ocirc;ng đ&aacute;ng kể<br />\n- Đăng b&agrave;i xong đợi Like chạy đủ rồi đăng tiếp, đăng li&ecirc;n tục sẽ kh&ocirc;ng l&ecirc;n Like tất cả b&agrave;i viết<br />\n- Like chỉ chạy b&agrave;i đầu ti&ecirc;n tr&ecirc;n trang c&aacute; nh&acirc;n<br />\n- Giới hạn 5 - 7 b&agrave;i ng&agrave;y ( Nếu bị Facebook qu&eacute;t ) v&agrave; kh&ocirc;ng giới hạn nếu như Facebook kh&ocirc;ng c&oacute; t&igrave;nh trạng kh&oacute; xử n&agrave;o!</p>\n', '400', '50', '10000', '0', '0', '0', '0', '0', '0', '0', '0', 'true', '1611144563'),
(11, 'Buff Like Sales Facebook', 'buff-like-sales-facebook', 'facebook', '<p>- B&agrave;i viết lu&ocirc;n lu&ocirc;n ở chế độ C&ocirc;ng khai, đối với Page v&agrave; Group&nbsp;đang ở chế độ T&ugrave;y chỉnh th&igrave; cũng chuyển sang C&ocirc;ng khai!<br />\n- Tự động chặn ID khi th&ecirc;m tối đa 10 ID giống nhau dẫn đến SPAM tr&ecirc;n mỗi dịch vụ<br />\n- Tất cả đều l&agrave; người d&ugrave;ng việt 100% c&oacute; thể kiểm tra khi tăng</p>\n\n<p>Ch&uacute; &yacute;:</p>\n\n<p>- Nghi&ecirc;m cấm Buff c&aacute;c ID Seeding c&oacute; nội dung vi phạm ph&aacute;p luật, ch&iacute;nh trị, đồ trụy... Nếu cố t&igrave;nh buff bạn sẽ bị trừ hết tiền v&agrave; band khỏi hệ thống autofb vĩnh viễn, v&agrave; phải chịu ho&agrave;n to&agrave;n tr&aacute;ch nhiệm trước ph&aacute;p luật.</p>\n\n<p>- Hệ thống sử dụng 95% t&agrave;i khoản người VN, fb thật để tương t&aacute;c like, comment, share....</p>\n\n<p>- Mỗi ID c&oacute; thể&nbsp;Buff tối đa 10 lần tr&ecirc;n hệ thống để tr&aacute;nh Spam, cần mua th&ecirc;m vui l&ograve;ng li&ecirc;n hệ với admin để được giải quyết</p>\n\n<p>- Nhập id lỗi hoặc trong thời gian chạy die id th&igrave; hệ thống kh&ocirc;ng ho&agrave;n lại tiền.</p>\n', '10', '100', '100000', '12', '0', '12', '12', '12', '12', '12', '12', 'true', '1611897904'),
(12, 'Buff Follows Sales Facebook', 'buff-follows-sales-facebook', 'facebook', '<h4>H&Atilde;Y ĐỌC ĐỂ TR&Aacute;NH MẤT TIỀN KHI SỬ DỤNG!</h4>\n\n<ul>\n	<li>ID sub sẽ chạy sau khi mua từ 1-12h sau khi mua</li>\n	<li>1 ID KH&Ocirc;NG C&Agrave;I 2 ĐƠN C&Ugrave;NG L&Uacute;C TRONG HỆ THỐNG ! ĐƠN CŨ XONG MỚI C&Agrave;I ĐƠN MỚI ! CỐ T&Igrave;NH C&Agrave;I BỊ HỤT SỐ LƯỢNG SẼ KH&Ocirc;NG XỬ L&Yacute; !</li>\n	<li>Nếu ID đang chạy tr&ecirc;n hệ thống autofb m&agrave; bạn vẫn mua id đ&oacute; c&aacute; hệ thống b&ecirc;n kh&aacute;c, nếu c&oacute; t&igrave;nh trạng hụt số lượng giữa 2 b&ecirc;n th&igrave; sẽ kh&ocirc;ng được xử l&iacute;!</li>\n	<li>H&atilde;y ch&uacute; &yacute; khi mua m&agrave; sub ko tăng h&atilde;y nhấn v&agrave;o nhật k&iacute; order để theo d&otilde;i đơn h&agrave;ng</li>\n</ul>\n', '30', '100', '10000', '0', '0', '0', '0', '0', '0', '0', '0', 'true', '1611898830'),
(13, 'Buff Like Fanpage Sales Facebook', 'buff-like-fanpage-sales-facebook', 'facebook', '<h4>H&Atilde;Y ĐỌC ĐỂ TR&Aacute;NH MẤT TIỀN KHI SỬ DỤNG!</h4>\n\n<ul>\n	<li>Nếu ID đang chạy tr&ecirc;n hệ thống&nbsp;m&agrave; bạn vẫn mua id đ&oacute; c&aacute; hệ thống b&ecirc;n kh&aacute;c, nếu c&oacute; t&igrave;nh trạng hụt số lượng giữa 2 b&ecirc;n th&igrave; sẽ kh&ocirc;ng được xử l&iacute;!</li>\n	<li>T&ocirc;́c đ&ocirc;̣ tăng like page SV4 v&agrave; SV3 trong 1 ng&agrave;y l&ecirc;n từ 50-300 like! sẽ chạy sau khi mua từ 1-12h sau khi mua</li>\n	<li>1 ID KH&Ocirc;NG C&Agrave;I 2 ĐƠN C&Ugrave;NG L&Uacute;C TRONG HỆ THỐNG ! ĐƠN CŨ XONG MỚI C&Agrave;I ĐƠN MỚI ! CỐ T&Igrave;NH C&Agrave;I BỊ HỤT SỐ LƯỢNG SẼ KH&Ocirc;NG XỬ L&Yacute; !</li>\n	<li>H&atilde;y ch&uacute; &yacute; khi mua dịch vụ sau 1 - 5 tiếng m&agrave; dịch vụ kh&ocirc;ng chạy h&atilde;y nhấn v&agrave;o nhật k&iacute; order hoặc danh s&aacute;ch (c&oacute; thể mỗi tab hiện 1 kiểu) để theo d&otilde;i đơn h&agrave;ng xem hệ thống c&oacute; b&aacute;o lỗi kh&ocirc;ng. Nếu lỗi h&atilde;y li&ecirc;n hệ cho Admin để được sử l&yacute;.</li>\n	<li>Nếu gặp lỗi h&atilde;y nhắn tin hỗ trợ ph&iacute;a b&ecirc;n phải g&oacute;c m&agrave;n h&igrave;nh để được hỗ trợ tốt nhất!</li>\n</ul>\n', '32', '100', '10000', '0', '0', '0', '0', '0', '0', '0', '0', 'true', '1611899328'),
(14, 'Buff Like TikTok', 'buff-like-tiktok', 'tiktok', '<p>- B&agrave;i viết lu&ocirc;n lu&ocirc;n ở chế độ C&ocirc;ng khai, đối với Page đang ở chế độ T&ugrave;y chỉnh th&igrave; cũng chuyển sang C&ocirc;ng khai!<br />\n- Mua loại bảo h&agrave;nh để được tăng dư ra ngẫu nhi&ecirc;n từ 5 - 10% v&agrave; được bảo h&agrave;nh trong 1 tuần nếu tụt từ 30% số lượng đ&atilde; mua!<br />\n- Quy định bảo h&agrave;nh l&agrave; nếu số lượng Like/CMT/Sub hiện tại thấp hơn số lượng Like/CMT/Sub ho&agrave;n th&agrave;nh th&igrave; sẽ được b&ugrave; trong tuần!<br />\n- Tự động chặn ID khi th&ecirc;m tối đa 10 ID giống nhau dẫn đến SPAM tr&ecirc;n mỗi dịch vụ<br />\n- Tất cả đều l&agrave; người d&ugrave;ng việt 100% c&oacute; thể kiểm tra khi tăng</p>\n', '30', '100', '10000', '55', '0', '0', '0', '0', '0', '0', '0', 'true', '1612014695'),
(15, 'Buff Follows Tiktok', 'buff-follows-tiktok', 'tiktok', '<p>- B&agrave;i viết lu&ocirc;n lu&ocirc;n ở chế độ C&ocirc;ng khai, đối với Page đang ở chế độ T&ugrave;y chỉnh th&igrave; cũng chuyển sang C&ocirc;ng khai!<br />\n- Mua loại bảo h&agrave;nh để được tăng dư ra ngẫu nhi&ecirc;n từ 5 - 10% v&agrave; được bảo h&agrave;nh trong 1 tuần nếu tụt từ 30% số lượng đ&atilde; mua!<br />\n- Quy định bảo h&agrave;nh l&agrave; nếu số lượng Like/CMT/Sub hiện tại thấp hơn số lượng Like/CMT/Sub ho&agrave;n th&agrave;nh th&igrave; sẽ được b&ugrave; trong tuần!<br />\n- Tự động chặn ID khi th&ecirc;m tối đa 10 ID giống nhau dẫn đến SPAM tr&ecirc;n mỗi dịch vụ<br />\n- Tất cả đều l&agrave; người d&ugrave;ng việt 100% c&oacute; thể kiểm tra khi tăng</p>\n', '70', '50', '10000', '80', '0', '0', '0', '0', '0', '0', '0', 'true', '1612014747'),
(16, 'Buff View Tiktok', 'buff-view-tiktok', 'tiktok', '<p>- B&agrave;i viết lu&ocirc;n lu&ocirc;n ở chế độ C&ocirc;ng khai, đối với Page đang ở chế độ T&ugrave;y chỉnh th&igrave; cũng chuyển sang C&ocirc;ng khai!<br />\n- Mua loại bảo h&agrave;nh để được tăng dư ra ngẫu nhi&ecirc;n từ 5 - 10% v&agrave; được bảo h&agrave;nh trong 1 tuần nếu tụt từ 30% số lượng đ&atilde; mua!<br />\n- Quy định bảo h&agrave;nh l&agrave; nếu số lượng Like/CMT/Sub hiện tại thấp hơn số lượng Like/CMT/Sub ho&agrave;n th&agrave;nh th&igrave; sẽ được b&ugrave; trong tuần!<br />\n- Tự động chặn ID khi th&ecirc;m tối đa 10 ID giống nhau dẫn đến SPAM tr&ecirc;n mỗi dịch vụ<br />\n- Tất cả đều l&agrave; người d&ugrave;ng việt 100% c&oacute; thể kiểm tra khi tăng</p>\n', '10', '50', '10000', '20', '0', '0', '0', '0', '0', '0', '0', 'true', '1612014795'),
(18, 'Tăng Follow TikTok', 'tang-follow-tiktok', 'tiktok', '<p><strong>Phần Bảo H&agrave;nh Hiện Đang Bảo Tr&igrave;</strong><br />\n- Tự động chặn ID khi th&ecirc;m tối đa 10 ID giống nhau dẫn đến SPAM tr&ecirc;n mỗi dịch vụ<br />\n- Th&ecirc;m 1 ID phải đợi 7 ng&agrave;y sau mới th&ecirc;m được vui l&ograve;ng c&acirc;n nhắc!<br />\n- Hủy đơn v&agrave; ho&agrave;n tiền đối với c&aacute;c ID bị lỗi ( c&oacute; thể bị trừ ph&iacute; 5k ), c&oacute; thể xem số tiền đ&atilde; to&agrave;n tại mục&nbsp;lịch sử&nbsp;nh&eacute;!<br />\n- Tất cả đều l&agrave; người d&ugrave;ng việt 100% c&oacute; thể kiểm tra khi tăng<br />\n- Kh&ocirc;ng đổi&nbsp;USERNAME&nbsp;trong qu&aacute; tr&igrave;nh tăng theo d&otilde;i t&agrave;i khoản</p>\n', '55', '500', '10000', '99999', '10', '10', '10', '10', '10', '10', '10', 'true', '1618526642'),
(19, 'Buff Like Instagram', 'buff-like-instagram', 'facebook', '<p><strong><em>G&oacute;i Bảo H&agrave;nh Hiện Đang Bảo Tr&igrave;</em></strong></p>\n\n<p>- Like/Follow Instagram c&oacute; thể sẽ tụt trong l&uacute;c tăng hoặc sau khi tăng sau nhưng kh&ocirc;ng qu&aacute; nhiều, h&atilde;y mua dư ra từ 5 - 20% nh&eacute;, v&iacute; dụ 500 Follow th&igrave; mua 550, 570 Follow<br />\n- Mua loại bảo h&agrave;nh để được tăng dư ra ngẫu nhi&ecirc;n từ 5 - 10% v&agrave; được bảo h&agrave;nh trong 1 tuần nếu tụt từ 30% số lượng đ&atilde; mua!<br />\n- Quy định bảo h&agrave;nh l&agrave; nếu số lượng Like/Follow hiện tại thấp hơn số lượng Like/Follow ho&agrave;n th&agrave;nh th&igrave; sẽ được b&ugrave; trong tuần!<br />\n- Tự động chặn ID khi th&ecirc;m tối đa 10 ID giống nhau dẫn đến SPAM tr&ecirc;n mỗi dịch vụ<br />\n- Th&ecirc;m 1 ID phải đợi 7 ng&agrave;y sau mới th&ecirc;m được vui l&ograve;ng c&acirc;n nhắc!<br />\n- Hủy đơn v&agrave; ho&agrave;n tiền đối với c&aacute;c ID bị lỗi ( c&oacute; thể bị trừ ph&iacute; 5k ), c&oacute; thể xem số tiền đ&atilde; to&agrave;n tại mục&nbsp;lịch sử&nbsp;nh&eacute;!<br />\n- Tất cả đều l&agrave; người d&ugrave;ng việt 100% c&oacute; thể kiểm tra khi tăng<br />\n- Kh&ocirc;ng đổi&nbsp;USERNAME&nbsp;trong qu&aacute; tr&igrave;nh tăng theo d&otilde;i t&agrave;i khoản</p>\n', '40', '100', '100000', '70', '100', '100', '100', '100', '100', '100', '100', 'true', '1618575765');

-- --------------------------------------------------------

--
-- Table structure for table `table_settings`
--

CREATE TABLE `table_settings` (
  `settings_id` int(11) NOT NULL,
  `settings_title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `settings_logo` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `settings_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `settings_keyword` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `settings_domain` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `settings_card24h` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `settings_discount` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `settings_facebook` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `settings_fanpage` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `settings_noti` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `settings_mail_account` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `settings_mail_password` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `settings_token` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `settings_status` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `table_settings`
--

INSERT INTO `table_settings` (`settings_id`, `settings_title`, `settings_logo`, `settings_name`, `settings_keyword`, `settings_domain`, `settings_card24h`, `settings_discount`, `settings_facebook`, `settings_fanpage`, `settings_noti`, `settings_mail_account`, `settings_mail_password`, `settings_token`, `settings_status`) VALUES
(1, 'Textsun.net', '/views/v1/images/icon/service/GsJdpu6.png', 'TEXTSUN ● NET', 'textsun là hệ thống seeding mạng xã hội tại Việt Nam', 'https://textsun.net/', '1', '27', '100013034588090', 'https://www.facebook.com/duongduytung2001/', '<p style=\"text-align:center\"><br />\n<strong>Ch&agrave;o Mừng Bạn Đến Với Textsun.net&nbsp;Nếu Gặp Vấn Đề G&igrave; Th&igrave; H&atilde;y Li&ecirc;n Hệ Ngay Với Admin Qua<br />\n↪ SMS : 035.235.0987<br />\n↪ Facebook:<a href=\"https://www.facebook.com/duongduytung2001/\">Bấm V&agrave;o Đ&acirc;y</a><br />\nTr&acirc;n Trọng<br />\nAdmin<br />\n●▬▬▬▬๑۩۩๑▬▬▬▬▬●</strong></p>\n', 'hocvienfb@gmail.com', 'Trinhlinh06112003', 'EAAAAZAw4FxQIBAIHXPRevqRg1AtHo9UqoWOJiyNBfDy1AkUdqDVbXni7SORlnZCNzHSx7Abm2oL4nFjwnbU1QZA4x9WqTL2DHYAScnQSrV1z5K5Qe5vtZC7ZBCwZAPABx4qiPuTTZCdaGzGTenD3LIIHJZAeTaWf0olExnjLp14bUZCZAFpK1MxY1nZB1P8RgMR0YzxRg9GwMwQiwZDZD', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `table_user`
--

CREATE TABLE `table_user` (
  `user_id` int(11) NOT NULL,
  `user_username` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `user_password` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `user_point` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_facebook` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_location` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_ip` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_level` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `user_blocked` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_time_last` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `user_time` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `table_user`
--

INSERT INTO `table_user` (`user_id`, `user_username`, `user_password`, `user_email`, `user_point`, `user_facebook`, `user_location`, `user_ip`, `user_level`, `user_blocked`, `user_time_last`, `user_time`) VALUES
(9, 'justintung', '93463ca9c4f70bf9a7da77aa5a7cebf9', 'hocvienfb@gmail.com', '100', '100004703763930', 'Singapore', '206.189.148.130', '4', '0', '1625180162', '1625180162'),
(10, 'text123', '93463ca9c4f70bf9a7da77aa5a7cebf9', 'text123@gmail.com', '100', '10928283823', 'Singapore', '206.189.148.130', '1', '0', '1625184583', '1625184583'),
(11, 'loan2211', '412d9d8900c41a35e93776c288f14753', 'loantien22719@gmail.com', '100', '537789957574393', 'Bắc Ninh', '27.71.121.57', '1', '0', '1625201415', '1625201415'),
(12, 'fasfafaf', '2516a5a226cdd408215fb3114341d121', 'fasfafaf@gmail.com', '100', '4', 'Singapore', '206.189.148.130', '1', '0', '1625287540', '1625287540'),
(13, 'hungdavid', '03af277ad179d6d1cbad62d4a0e288c2', 'linhhunh28@gmail.com', '100', '1000022225655', 'Singapore', '206.189.148.130', '1', '0', '1625407263', '1625407263'),
(14, 'ngoc2k6', 'e52fc6f40ce053c992c8adef4ae2c049', 'vungocff@gmail.com', '100', '56860506606068', 'Singapore', '206.189.148.130', '1', '0', '1625435764', '1625435764');

-- --------------------------------------------------------

--
-- Table structure for table `table_vip_like`
--

CREATE TABLE `table_vip_like` (
  `vip_like_id` int(11) NOT NULL,
  `vip_like_username` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `vip_like_facebook_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `vip_like_facebook` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `vip_like_service` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `vip_like_content` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `vip_like_speed` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `vip_like_reaction` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `vip_like_amount` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `vip_like_amount_post` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `vip_like_expires` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `vip_like_status` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `vip_like_time` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `table_banks`
--
ALTER TABLE `table_banks`
  ADD PRIMARY KEY (`banks_id`),
  ADD KEY `banks_number_holder` (`banks_number_holder`);

--
-- Indexes for table `table_buff_like`
--
ALTER TABLE `table_buff_like`
  ADD PRIMARY KEY (`buff_like_id`),
  ADD KEY `buff_like_username` (`buff_like_username`);

--
-- Indexes for table `table_card`
--
ALTER TABLE `table_card`
  ADD PRIMARY KEY (`card_id`),
  ADD KEY `card_username` (`card_username`);

--
-- Indexes for table `table_history_account`
--
ALTER TABLE `table_history_account`
  ADD PRIMARY KEY (`history_account_id`),
  ADD KEY `history_account_username` (`history_account_username`);

--
-- Indexes for table `table_history_buy`
--
ALTER TABLE `table_history_buy`
  ADD PRIMARY KEY (`history_buy_id`),
  ADD KEY `history_buy_username` (`history_buy_username`);

--
-- Indexes for table `table_momo`
--
ALTER TABLE `table_momo`
  ADD PRIMARY KEY (`momo_id`),
  ADD KEY `momo_username` (`momo_username`);

--
-- Indexes for table `table_service`
--
ALTER TABLE `table_service`
  ADD PRIMARY KEY (`service_id`),
  ADD KEY `service_slug` (`service_slug`);

--
-- Indexes for table `table_settings`
--
ALTER TABLE `table_settings`
  ADD PRIMARY KEY (`settings_id`);

--
-- Indexes for table `table_user`
--
ALTER TABLE `table_user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_username` (`user_username`),
  ADD UNIQUE KEY `user_email` (`user_email`);

--
-- Indexes for table `table_vip_like`
--
ALTER TABLE `table_vip_like`
  ADD PRIMARY KEY (`vip_like_id`),
  ADD KEY `vip_like_username` (`vip_like_username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `table_banks`
--
ALTER TABLE `table_banks`
  MODIFY `banks_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `table_buff_like`
--
ALTER TABLE `table_buff_like`
  MODIFY `buff_like_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `table_card`
--
ALTER TABLE `table_card`
  MODIFY `card_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `table_history_account`
--
ALTER TABLE `table_history_account`
  MODIFY `history_account_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `table_history_buy`
--
ALTER TABLE `table_history_buy`
  MODIFY `history_buy_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `table_momo`
--
ALTER TABLE `table_momo`
  MODIFY `momo_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `table_service`
--
ALTER TABLE `table_service`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `table_settings`
--
ALTER TABLE `table_settings`
  MODIFY `settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `table_user`
--
ALTER TABLE `table_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `table_vip_like`
--
ALTER TABLE `table_vip_like`
  MODIFY `vip_like_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
