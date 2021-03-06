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
(49, 'text123', '????ng nh???p v??o t??i kho???n.', '206.189.148.130', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', '1625184634'),
(50, 'justintung', '????ng nh???p v??o t??i kho???n.', '206.189.148.130', 'Mozilla/5.0 (Linux; Android 10; RMX2032) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Mobile Safari/537.36', '1625185225'),
(51, 'justintung', '????ng nh???p v??o t??i kho???n.', '206.189.148.130', 'Mozilla/5.0 (Linux; Android 10; RMX2032) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Mobile Safari/537.36', '1625194684'),
(52, 'justintung', '????ng nh???p v??o t??i kho???n.', '171.240.71.240', 'Mozilla/5.0 (Linux; Android 10; RMX2032) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Mobile Safari/537.36', '1625199773'),
(53, 'justintung', '????ng nh???p v??o t??i kho???n.', '171.240.71.240', 'Mozilla/5.0 (Linux; Android 10; RMX2032) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Mobile Safari/537.36', '1625200148'),
(54, 'justintung', '????ng nh???p v??o t??i kho???n.', '171.240.71.240', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '1625212322'),
(55, 'justintung', '????ng nh???p v??o t??i kho???n.', '206.189.148.130', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '1625287098'),
(56, 'justintung', '????ng nh???p v??o t??i kho???n.', '206.189.148.130', 'Mozilla/5.0 (Linux; Android 10; RMX2032) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Mobile Safari/537.36', '1625355594'),
(57, 'justintung', '????ng nh???p v??o t??i kho???n.', '206.189.148.130', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '1625360700'),
(58, 'hungdavid', '????ng nh???p v??o t??i kho???n.', '206.189.148.130', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/95.0.150 Chrome/89.0.4389.150 Safari/537.36', '1625407299'),
(59, 'hungdavid', '????ng nh???p v??o t??i kho???n.', '206.189.148.130', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/95.0.150 Chrome/89.0.4389.150 Safari/537.36', '1625407301');

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
(26, 'kenthudoan', 'Mua t??ng like b??i vi???t sales.', '750', '4998724050', '::1', '1612021525'),
(27, 'adminsite', 'Mua t??ng theo d??i ng?????i d??ng', '12500', '10000100', '27.67.128.30', '1618529649'),
(28, 'adminsite', 'Mua t??ng theo d??i ng?????i d??ng', '12500', '9987600', '27.67.128.30', '1618569160'),
(29, 'adminsite', 'Mua t??ng theo d??i ng?????i d??ng', '12000', '9975100', '27.67.128.30', '1618569190'),
(30, 'adminsite', 'Mua t??ng theo d??i ng?????i d??ng', '12500', '9963100', '27.67.128.30', '1618571184'),
(31, 'adminsite', 'Mua t??ng theo d??i ng?????i d??ng Tiktok.', '4000', '9950600', '27.67.128.30', '1618572400'),
(32, 'adminsite', 'Mua t??ng theo d??i ng?????i d??ng', '12000', '9946600', '27.67.128.30', '1618573695'),
(33, 'adminsite', 'Mua vip like clone ng?????i d??ng.', '70000', '9934600', '27.67.128.30', '1618574035'),
(34, 'adminsite', 'Mua t??ng theo d??i ng?????i d??ng', '12000', '9864600', '27.67.128.30', '1618576047'),
(35, 'adminsite', 'Mua t??ng like b??i vi???t.', '150', '9852600', '125.235.62.149', '1618614691'),
(36, 'adminsite', 'Mua t??ng like b??i vi???t.', '150', '9852450', '125.235.62.149', '1618615550'),
(37, 'adminsite', 'Mua t??ng like b??i vi???t.', '0', '9852300', '125.235.62.149', '1618640886');

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
(1, 'Buff Sub Instagram', 'buff-sub-instagram', 'facebook', '<p><strong><em>M???c Gi???i T&iacute;nh Hi???n ??ang B???o Tr&igrave;</em></strong></p>\n\n<p>- Like/Follow Instagram c&oacute; th??? s??? t???t trong l&uacute;c t??ng ho???c sau khi t??ng sau nh??ng kh&ocirc;ng qu&aacute; nhi???u, h&atilde;y mua d?? ra t??? 5 - 20% nh&eacute;, v&iacute; d??? 500 Follow th&igrave; mua 550, 570 Follow<br />\n- Mua lo???i b???o h&agrave;nh ????? ???????c t??ng d?? ra ng???u nhi&ecirc;n t??? 5 - 10% v&agrave; ???????c b???o h&agrave;nh trong 1 tu???n n???u t???t t??? 30% s??? l?????ng ??&atilde; mua!<br />\n- Quy ?????nh b???o h&agrave;nh l&agrave; n???u s??? l?????ng Like/Follow hi???n t???i th???p h??n s??? l?????ng Like/Follow ho&agrave;n th&agrave;nh th&igrave; s??? ???????c b&ugrave; trong tu???n!<br />\n- T??? ?????ng ch???n ID khi th&ecirc;m t???i ??a 10 ID gi???ng nhau d???n ?????n SPAM tr&ecirc;n m???i d???ch v???<br />\n- Th&ecirc;m 1 ID ph???i ?????i 7 ng&agrave;y sau m???i th&ecirc;m ???????c vui l&ograve;ng c&acirc;n nh???c!<br />\n- H???y ????n v&agrave; ho&agrave;n ti???n ?????i v???i c&aacute;c ID b??? l???i ( c&oacute; th??? b??? tr??? ph&iacute; 5k ), c&oacute; th??? xem s??? ti???n ??&atilde; to&agrave;n t???i m???c&nbsp;l???ch s???&nbsp;nh&eacute;!<br />\n- T???t c??? ?????u l&agrave; ng?????i d&ugrave;ng vi???t 100% c&oacute; th??? ki???m tra khi t??ng<br />\n- Kh&ocirc;ng ?????i&nbsp;USERNAME&nbsp;trong qu&aacute; tr&igrave;nh t??ng theo d&otilde;i t&agrave;i kho???n</p>\n', '85', '500', '100000', '130', '25', '35', '35', '40', '30', '50', '100', 'true', '2021-01-13 21:39:49'),
(2, 'Buff Like Ngon', 'buff-like-ngon', 'facebook', '<p>B&agrave;i vi???t lu&ocirc;n lu&ocirc;n ??? ch??? ????? C&ocirc;ng khai, ?????i v???i Page ??ang ??? ch??? ????? T&ugrave;y ch???nh th&igrave; c??ng chuy???n sang C&ocirc;ng khai!</p>\n', '70', '10', '500000', '95', '25', '35', '35', '40', '30', '50', '100', 'true', '2021-01-13 21:45:58'),
(3, 'Vip Like Clone Facebook', 'vip-like-clone-facebook', 'facebook', '<ul>\n	<li>Like Co?? AVT c???? ????ng ba??i ca??ch nhau 10-20 phu??t la?? cha??y!</li>\n	<li>G&acirc;??n nh?? 99% se?? kh&ocirc;ng t??ng like cho post a??nh ??a??i di&ecirc;??n ho????c a??nh bi??a!</li>\n	<li>Ch&uacute; &yacute; viplike ch???y theo c?? ch??? v&iacute; d??? b???n mua g&oacute;i 100 like khi stt ??&oacute; h??n 100 like l&agrave; h??? th???ng d???ng kh&ocirc;ng ch???y th&ecirc;m n???a!</li>\n	<li>Like ho???t ?????ng t??? 7h - 23h</li>\n	<li>N???u g???p l???i h&atilde;y nh???n tin h??? tr??? ph&iacute;a b&ecirc;n ph???i g&oacute;c m&agrave;n h&igrave;nh ????? ???????c h??? tr??? t???t nh???t!</li>\n</ul>\n\n<p>Ch&uacute; &yacute;:</p>\n\n<p>- H??? th???ng ch??? t??ng Like cho c&aacute;c b&agrave;i vi???t ????ng m???i, kh&ocirc;ng h??? tr??? c&aacute;c b&agrave;i vi???t th&ecirc;m h&igrave;nh ???nh v&agrave;o album ??&atilde; c&oacute; s???n.</p>\n\n<p>- Nghi&ecirc;m c???m Buff c&aacute;c ID Seeding c&oacute; n???i dung vi ph???m ph&aacute;p lu???t, ch&iacute;nh tr???, ????? tr???y... N???u c??? t&igrave;nh buff b???n s??? b??? tr??? h???t ti???n v&agrave; band kh???i h??? th???ng autofb v??nh vi???n, v&agrave; ph???i ch???u ho&agrave;n to&agrave;n tr&aacute;ch nhi???m tr?????c ph&aacute;p lu???t.</p>\n\n<p>- H??? th???ng s??? d???ng 99% t&agrave;i kho???n ng?????i VN, fb th???t ????? t????ng t&aacute;c like, comment, share....</p>\n\n<p>- Vui l&ograve;ng l???y ??&uacute;ng id b&agrave;i vi???t, c&ocirc;ng khai v&agrave; check k??? job tr&aacute;nh t???o nh???m, t&iacute;nh n??ng ??ang trong giai ??o???n th??? nghi???m n&ecirc;n s??? kh&ocirc;ng ho&agrave;n ti???n n???u b???n t???o nh???m</p>\n\n<p>- Nh???p id l???i ho???c trong th???i gian ch???y die id th&igrave; h??? th???ng kh&ocirc;ng ho&agrave;n l???i ti???n.</p>\n', '220', '50', '10000', '0', '0', '0', '0', '0', '0', '0', '0', 'true', '2021-01-16 09:20:59'),
(4, 'Buff Share Facebook', 'buff-share-facebook', 'facebook', '<p>B&agrave;i vi???t lu&ocirc;n lu&ocirc;n ??? ch??? ????? C&ocirc;ng khai, ?????i v???i Page ??ang ??? ch??? ????? T&ugrave;y ch???nh th&igrave; c??ng chuy???n sang C&ocirc;ng khai!</p>\n', '300', '5', '20000', '600', '20', '0', '0', '0', '0', '0', '0', 'true', '2021-01-16 16:25:40'),
(5, 'Buff Comment Facebook', 'buff-comment-facebook', 'facebook', '<p>- B&agrave;i vi???t lu&ocirc;n lu&ocirc;n ??? ch??? ????? C&ocirc;ng khai, ?????i v???i Page ??ang ??? ch??? ????? T&ugrave;y ch???nh th&igrave; c??ng chuy???n sang C&ocirc;ng khai!<br />\n- Mua lo???i b???o h&agrave;nh ????? ???????c t??ng d?? ra ng???u nhi&ecirc;n t??? 5 - 10% v&agrave; ???????c b???o h&agrave;nh trong 1 tu???n n???u t???t t??? 30% s??? l?????ng ??&atilde; mua!<br />\n- Quy ?????nh b???o h&agrave;nh l&agrave; n???u s??? l?????ng Like/CMT/Sub hi???n t???i th???p h??n s??? l?????ng Like/CMT/Sub ho&agrave;n th&agrave;nh th&igrave; s??? ???????c b&ugrave; trong tu???n!<br />\n- T??? ?????ng ch???n ID khi th&ecirc;m t???i ??a 10 ID gi???ng nhau d???n ?????n SPAM tr&ecirc;n m???i d???ch v???<br />\n- T???t c??? ?????u l&agrave; ng?????i d&ugrave;ng vi???t 100% c&oacute; th??? ki???m tra khi t??ng</p>\n', '650', '5', '1000', '850', '30', '0', '0', '0', '0', '0', '0', 'true', '2021-01-16 21:49:54'),
(6, 'Buff Follows Facebook', 'buff-follows-facebook', 'facebook', 'B??i vi???t lu??n lu??n ??? ch??? ????? C??ng khai, ?????i v???i Page ??ang ??? ch??? ????? T??y ch???nh th?? c??ng chuy???n sang C??ng khai!', '120', '100', '30000', '125', '100', '0', '0', '0', '0', '0', '0', 'true', '2021-01-16 22:56:15'),
(7, 'Buff Like Fanpage Facebook', 'buff-like-fanpage-facebook', 'facebook', '<p>- B&agrave;i vi???t lu&ocirc;n lu&ocirc;n ??? ch??? ????? C&ocirc;ng khai, ?????i v???i Page ??ang ??? ch??? ????? T&ugrave;y ch???nh th&igrave; c??ng chuy???n sang C&ocirc;ng khai!<br />\n- Mua lo???i b???o h&agrave;nh ????? ???????c t??ng d?? ra ng???u nhi&ecirc;n t??? 5 - 10% v&agrave; ???????c b???o h&agrave;nh trong 1 tu???n n???u t???t t??? 30% s??? l?????ng ??&atilde; mua!<br />\n- Quy ?????nh b???o h&agrave;nh l&agrave; n???u s??? l?????ng Like/CMT/Sub hi???n t???i th???p h??n s??? l?????ng Like/CMT/Sub ho&agrave;n th&agrave;nh th&igrave; s??? ???????c b&ugrave; trong tu???n!<br />\n- T??? ?????ng ch???n ID khi th&ecirc;m t???i ??a 10 ID gi???ng nhau d???n ?????n SPAM tr&ecirc;n m???i d???ch v???<br />\n- T???t c??? ?????u l&agrave; ng?????i d&ugrave;ng vi???t 100% c&oacute; th??? ki???m tra khi t??ng</p>\n', '130', '100', '30000', '140', '100', '0', '0', '0', '0', '0', '0', 'true', '2021-01-17 18:18:51'),
(10, 'Vip Like Fast Facebook', 'vip-like-fast-facebook', 'facebook', '<p>- VIP Like Nhanh l&agrave; lo???i Like c&oacute; Avatar, Th&ocirc;ng tin, B???n B&egrave; ?????y ????? g???n gi???ng nh?? nick th???t, t???c ????? ph??? thu???c khi mua v&agrave; kh&ocirc;ng th??? c???p nh???t l&uacute;c ??&atilde; mua xong!<br />\n- Like ch???y si&ecirc;u nhanh t??? 3 - 7 ph&uacute;t s??? ????? Like<br />\n- Lo???i Like n&agrave;y c&oacute; t???t nh??ng kh&ocirc;ng ??&aacute;ng k???<br />\n- ????ng b&agrave;i xong ?????i Like ch???y ????? r???i ????ng ti???p, ????ng li&ecirc;n t???c s??? kh&ocirc;ng l&ecirc;n Like t???t c??? b&agrave;i vi???t<br />\n- Like ch??? ch???y b&agrave;i ?????u ti&ecirc;n tr&ecirc;n trang c&aacute; nh&acirc;n<br />\n- Gi???i h???n 5 - 7 b&agrave;i ng&agrave;y ( N???u b??? Facebook qu&eacute;t ) v&agrave; kh&ocirc;ng gi???i h???n n???u nh?? Facebook kh&ocirc;ng c&oacute; t&igrave;nh tr???ng kh&oacute; x??? n&agrave;o!</p>\n', '400', '50', '10000', '0', '0', '0', '0', '0', '0', '0', '0', 'true', '1611144563'),
(11, 'Buff Like Sales Facebook', 'buff-like-sales-facebook', 'facebook', '<p>- B&agrave;i vi???t lu&ocirc;n lu&ocirc;n ??? ch??? ????? C&ocirc;ng khai, ?????i v???i Page v&agrave; Group&nbsp;??ang ??? ch??? ????? T&ugrave;y ch???nh th&igrave; c??ng chuy???n sang C&ocirc;ng khai!<br />\n- T??? ?????ng ch???n ID khi th&ecirc;m t???i ??a 10 ID gi???ng nhau d???n ?????n SPAM tr&ecirc;n m???i d???ch v???<br />\n- T???t c??? ?????u l&agrave; ng?????i d&ugrave;ng vi???t 100% c&oacute; th??? ki???m tra khi t??ng</p>\n\n<p>Ch&uacute; &yacute;:</p>\n\n<p>- Nghi&ecirc;m c???m Buff c&aacute;c ID Seeding c&oacute; n???i dung vi ph???m ph&aacute;p lu???t, ch&iacute;nh tr???, ????? tr???y... N???u c??? t&igrave;nh buff b???n s??? b??? tr??? h???t ti???n v&agrave; band kh???i h??? th???ng autofb v??nh vi???n, v&agrave; ph???i ch???u ho&agrave;n to&agrave;n tr&aacute;ch nhi???m tr?????c ph&aacute;p lu???t.</p>\n\n<p>- H??? th???ng s??? d???ng 95% t&agrave;i kho???n ng?????i VN, fb th???t ????? t????ng t&aacute;c like, comment, share....</p>\n\n<p>- M???i ID c&oacute; th???&nbsp;Buff t???i ??a 10 l???n tr&ecirc;n h??? th???ng ????? tr&aacute;nh Spam, c???n mua th&ecirc;m vui l&ograve;ng li&ecirc;n h??? v???i admin ????? ???????c gi???i quy???t</p>\n\n<p>- Nh???p id l???i ho???c trong th???i gian ch???y die id th&igrave; h??? th???ng kh&ocirc;ng ho&agrave;n l???i ti???n.</p>\n', '10', '100', '100000', '12', '0', '12', '12', '12', '12', '12', '12', 'true', '1611897904'),
(12, 'Buff Follows Sales Facebook', 'buff-follows-sales-facebook', 'facebook', '<h4>H&Atilde;Y ?????C ????? TR&Aacute;NH M???T TI???N KHI S??? D???NG!</h4>\n\n<ul>\n	<li>ID sub s??? ch???y sau khi mua t??? 1-12h sau khi mua</li>\n	<li>1 ID KH&Ocirc;NG C&Agrave;I 2 ????N C&Ugrave;NG L&Uacute;C TRONG H??? TH???NG ! ????N C?? XONG M???I C&Agrave;I ????N M???I ! C??? T&Igrave;NH C&Agrave;I B??? H???T S??? L?????NG S??? KH&Ocirc;NG X??? L&Yacute; !</li>\n	<li>N???u ID ??ang ch???y tr&ecirc;n h??? th???ng autofb m&agrave; b???n v???n mua id ??&oacute; c&aacute; h??? th???ng b&ecirc;n kh&aacute;c, n???u c&oacute; t&igrave;nh tr???ng h???t s??? l?????ng gi???a 2 b&ecirc;n th&igrave; s??? kh&ocirc;ng ???????c x??? l&iacute;!</li>\n	<li>H&atilde;y ch&uacute; &yacute; khi mua m&agrave; sub ko t??ng h&atilde;y nh???n v&agrave;o nh???t k&iacute; order ????? theo d&otilde;i ????n h&agrave;ng</li>\n</ul>\n', '30', '100', '10000', '0', '0', '0', '0', '0', '0', '0', '0', 'true', '1611898830'),
(13, 'Buff Like Fanpage Sales Facebook', 'buff-like-fanpage-sales-facebook', 'facebook', '<h4>H&Atilde;Y ?????C ????? TR&Aacute;NH M???T TI???N KHI S??? D???NG!</h4>\n\n<ul>\n	<li>N???u ID ??ang ch???y tr&ecirc;n h??? th???ng&nbsp;m&agrave; b???n v???n mua id ??&oacute; c&aacute; h??? th???ng b&ecirc;n kh&aacute;c, n???u c&oacute; t&igrave;nh tr???ng h???t s??? l?????ng gi???a 2 b&ecirc;n th&igrave; s??? kh&ocirc;ng ???????c x??? l&iacute;!</li>\n	<li>T&ocirc;??c ??&ocirc;?? t??ng like page SV4 v&agrave; SV3 trong 1 ng&agrave;y l&ecirc;n t???? 50-300 like! s??? ch???y sau khi mua t??? 1-12h sau khi mua</li>\n	<li>1 ID KH&Ocirc;NG C&Agrave;I 2 ????N C&Ugrave;NG L&Uacute;C TRONG H??? TH???NG ! ????N C?? XONG M???I C&Agrave;I ????N M???I ! C??? T&Igrave;NH C&Agrave;I B??? H???T S??? L?????NG S??? KH&Ocirc;NG X??? L&Yacute; !</li>\n	<li>H&atilde;y ch&uacute; &yacute; khi mua d???ch v??? sau 1 - 5 ti???ng m&agrave; d???ch v??? kh&ocirc;ng ch???y h&atilde;y nh???n v&agrave;o nh???t k&iacute; order ho???c danh s&aacute;ch (c&oacute; th??? m???i tab hi???n 1 ki???u) ????? theo d&otilde;i ????n h&agrave;ng xem h??? th???ng c&oacute; b&aacute;o l???i kh&ocirc;ng. N???u l???i h&atilde;y li&ecirc;n h??? cho Admin ????? ???????c s??? l&yacute;.</li>\n	<li>N???u g???p l???i h&atilde;y nh???n tin h??? tr??? ph&iacute;a b&ecirc;n ph???i g&oacute;c m&agrave;n h&igrave;nh ????? ???????c h??? tr??? t???t nh???t!</li>\n</ul>\n', '32', '100', '10000', '0', '0', '0', '0', '0', '0', '0', '0', 'true', '1611899328'),
(14, 'Buff Like TikTok', 'buff-like-tiktok', 'tiktok', '<p>- B&agrave;i vi???t lu&ocirc;n lu&ocirc;n ??? ch??? ????? C&ocirc;ng khai, ?????i v???i Page ??ang ??? ch??? ????? T&ugrave;y ch???nh th&igrave; c??ng chuy???n sang C&ocirc;ng khai!<br />\n- Mua lo???i b???o h&agrave;nh ????? ???????c t??ng d?? ra ng???u nhi&ecirc;n t??? 5 - 10% v&agrave; ???????c b???o h&agrave;nh trong 1 tu???n n???u t???t t??? 30% s??? l?????ng ??&atilde; mua!<br />\n- Quy ?????nh b???o h&agrave;nh l&agrave; n???u s??? l?????ng Like/CMT/Sub hi???n t???i th???p h??n s??? l?????ng Like/CMT/Sub ho&agrave;n th&agrave;nh th&igrave; s??? ???????c b&ugrave; trong tu???n!<br />\n- T??? ?????ng ch???n ID khi th&ecirc;m t???i ??a 10 ID gi???ng nhau d???n ?????n SPAM tr&ecirc;n m???i d???ch v???<br />\n- T???t c??? ?????u l&agrave; ng?????i d&ugrave;ng vi???t 100% c&oacute; th??? ki???m tra khi t??ng</p>\n', '30', '100', '10000', '55', '0', '0', '0', '0', '0', '0', '0', 'true', '1612014695'),
(15, 'Buff Follows Tiktok', 'buff-follows-tiktok', 'tiktok', '<p>- B&agrave;i vi???t lu&ocirc;n lu&ocirc;n ??? ch??? ????? C&ocirc;ng khai, ?????i v???i Page ??ang ??? ch??? ????? T&ugrave;y ch???nh th&igrave; c??ng chuy???n sang C&ocirc;ng khai!<br />\n- Mua lo???i b???o h&agrave;nh ????? ???????c t??ng d?? ra ng???u nhi&ecirc;n t??? 5 - 10% v&agrave; ???????c b???o h&agrave;nh trong 1 tu???n n???u t???t t??? 30% s??? l?????ng ??&atilde; mua!<br />\n- Quy ?????nh b???o h&agrave;nh l&agrave; n???u s??? l?????ng Like/CMT/Sub hi???n t???i th???p h??n s??? l?????ng Like/CMT/Sub ho&agrave;n th&agrave;nh th&igrave; s??? ???????c b&ugrave; trong tu???n!<br />\n- T??? ?????ng ch???n ID khi th&ecirc;m t???i ??a 10 ID gi???ng nhau d???n ?????n SPAM tr&ecirc;n m???i d???ch v???<br />\n- T???t c??? ?????u l&agrave; ng?????i d&ugrave;ng vi???t 100% c&oacute; th??? ki???m tra khi t??ng</p>\n', '70', '50', '10000', '80', '0', '0', '0', '0', '0', '0', '0', 'true', '1612014747'),
(16, 'Buff View Tiktok', 'buff-view-tiktok', 'tiktok', '<p>- B&agrave;i vi???t lu&ocirc;n lu&ocirc;n ??? ch??? ????? C&ocirc;ng khai, ?????i v???i Page ??ang ??? ch??? ????? T&ugrave;y ch???nh th&igrave; c??ng chuy???n sang C&ocirc;ng khai!<br />\n- Mua lo???i b???o h&agrave;nh ????? ???????c t??ng d?? ra ng???u nhi&ecirc;n t??? 5 - 10% v&agrave; ???????c b???o h&agrave;nh trong 1 tu???n n???u t???t t??? 30% s??? l?????ng ??&atilde; mua!<br />\n- Quy ?????nh b???o h&agrave;nh l&agrave; n???u s??? l?????ng Like/CMT/Sub hi???n t???i th???p h??n s??? l?????ng Like/CMT/Sub ho&agrave;n th&agrave;nh th&igrave; s??? ???????c b&ugrave; trong tu???n!<br />\n- T??? ?????ng ch???n ID khi th&ecirc;m t???i ??a 10 ID gi???ng nhau d???n ?????n SPAM tr&ecirc;n m???i d???ch v???<br />\n- T???t c??? ?????u l&agrave; ng?????i d&ugrave;ng vi???t 100% c&oacute; th??? ki???m tra khi t??ng</p>\n', '10', '50', '10000', '20', '0', '0', '0', '0', '0', '0', '0', 'true', '1612014795'),
(18, 'T??ng Follow TikTok', 'tang-follow-tiktok', 'tiktok', '<p><strong>Ph???n B???o H&agrave;nh Hi???n ??ang B???o Tr&igrave;</strong><br />\n- T??? ?????ng ch???n ID khi th&ecirc;m t???i ??a 10 ID gi???ng nhau d???n ?????n SPAM tr&ecirc;n m???i d???ch v???<br />\n- Th&ecirc;m 1 ID ph???i ?????i 7 ng&agrave;y sau m???i th&ecirc;m ???????c vui l&ograve;ng c&acirc;n nh???c!<br />\n- H???y ????n v&agrave; ho&agrave;n ti???n ?????i v???i c&aacute;c ID b??? l???i ( c&oacute; th??? b??? tr??? ph&iacute; 5k ), c&oacute; th??? xem s??? ti???n ??&atilde; to&agrave;n t???i m???c&nbsp;l???ch s???&nbsp;nh&eacute;!<br />\n- T???t c??? ?????u l&agrave; ng?????i d&ugrave;ng vi???t 100% c&oacute; th??? ki???m tra khi t??ng<br />\n- Kh&ocirc;ng ?????i&nbsp;USERNAME&nbsp;trong qu&aacute; tr&igrave;nh t??ng theo d&otilde;i t&agrave;i kho???n</p>\n', '55', '500', '10000', '99999', '10', '10', '10', '10', '10', '10', '10', 'true', '1618526642'),
(19, 'Buff Like Instagram', 'buff-like-instagram', 'facebook', '<p><strong><em>G&oacute;i B???o H&agrave;nh Hi???n ??ang B???o Tr&igrave;</em></strong></p>\n\n<p>- Like/Follow Instagram c&oacute; th??? s??? t???t trong l&uacute;c t??ng ho???c sau khi t??ng sau nh??ng kh&ocirc;ng qu&aacute; nhi???u, h&atilde;y mua d?? ra t??? 5 - 20% nh&eacute;, v&iacute; d??? 500 Follow th&igrave; mua 550, 570 Follow<br />\n- Mua lo???i b???o h&agrave;nh ????? ???????c t??ng d?? ra ng???u nhi&ecirc;n t??? 5 - 10% v&agrave; ???????c b???o h&agrave;nh trong 1 tu???n n???u t???t t??? 30% s??? l?????ng ??&atilde; mua!<br />\n- Quy ?????nh b???o h&agrave;nh l&agrave; n???u s??? l?????ng Like/Follow hi???n t???i th???p h??n s??? l?????ng Like/Follow ho&agrave;n th&agrave;nh th&igrave; s??? ???????c b&ugrave; trong tu???n!<br />\n- T??? ?????ng ch???n ID khi th&ecirc;m t???i ??a 10 ID gi???ng nhau d???n ?????n SPAM tr&ecirc;n m???i d???ch v???<br />\n- Th&ecirc;m 1 ID ph???i ?????i 7 ng&agrave;y sau m???i th&ecirc;m ???????c vui l&ograve;ng c&acirc;n nh???c!<br />\n- H???y ????n v&agrave; ho&agrave;n ti???n ?????i v???i c&aacute;c ID b??? l???i ( c&oacute; th??? b??? tr??? ph&iacute; 5k ), c&oacute; th??? xem s??? ti???n ??&atilde; to&agrave;n t???i m???c&nbsp;l???ch s???&nbsp;nh&eacute;!<br />\n- T???t c??? ?????u l&agrave; ng?????i d&ugrave;ng vi???t 100% c&oacute; th??? ki???m tra khi t??ng<br />\n- Kh&ocirc;ng ?????i&nbsp;USERNAME&nbsp;trong qu&aacute; tr&igrave;nh t??ng theo d&otilde;i t&agrave;i kho???n</p>\n', '40', '100', '100000', '70', '100', '100', '100', '100', '100', '100', '100', 'true', '1618575765');

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
(1, 'Textsun.net', '/views/v1/images/icon/service/GsJdpu6.png', 'TEXTSUN ??? NET', 'textsun l?? h??? th???ng seeding m???ng x?? h???i t???i Vi???t Nam', 'https://textsun.net/', '1', '27', '100013034588090', 'https://www.facebook.com/duongduytung2001/', '<p style=\"text-align:center\"><br />\n<strong>Ch&agrave;o M???ng B???n ?????n V???i Textsun.net&nbsp;N???u G???p V???n ????? G&igrave; Th&igrave; H&atilde;y Li&ecirc;n H??? Ngay V???i Admin Qua<br />\n??? SMS : 035.235.0987<br />\n??? Facebook:<a href=\"https://www.facebook.com/duongduytung2001/\">B???m V&agrave;o ??&acirc;y</a><br />\nTr&acirc;n Tr???ng<br />\nAdmin<br />\n???????????????????????????????????????????</strong></p>\n', 'hocvienfb@gmail.com', 'Trinhlinh06112003', 'EAAAAZAw4FxQIBAIHXPRevqRg1AtHo9UqoWOJiyNBfDy1AkUdqDVbXni7SORlnZCNzHSx7Abm2oL4nFjwnbU1QZA4x9WqTL2DHYAScnQSrV1z5K5Qe5vtZC7ZBCwZAPABx4qiPuTTZCdaGzGTenD3LIIHJZAeTaWf0olExnjLp14bUZCZAFpK1MxY1nZB1P8RgMR0YzxRg9GwMwQiwZDZD', 'true');

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
(11, 'loan2211', '412d9d8900c41a35e93776c288f14753', 'loantien22719@gmail.com', '100', '537789957574393', 'B???c Ninh', '27.71.121.57', '1', '0', '1625201415', '1625201415'),
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
