-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 30, 2023 lúc 09:24 AM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `learn_english`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` tinyint(1) NOT NULL,
  `last_login_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `level`, `last_login_at`) VALUES
(1, 'admin', '20d135f0f28185b84a4cf7aa51f29500', 0, '2023-04-13 23:08:00'),
(2, 'luan', 'dd960d42bb47da21af3b3b0c31684540', 0, '2023-04-13 23:08:00'),
(3, 'nhan', 'bb4e31f2d20f8e7f88e2b8459263657f', 0, '2023-04-13 23:08:00'),
(4, 'phuong', '60c9312821b0d1eb614810a21f159147', 0, '2023-05-03 10:00:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `status`) VALUES
(3, 'Các cuộc thi', 'cac-cuoc-thi', 1),
(4, 'Sự kiện và hợp tác', 'su-kien-va-hop-tac', 1),
(5, 'Quy định và thông báo', 'quy-dinh-va-thong-bao', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `exam`
--

CREATE TABLE `exam` (
  `id` int(11) NOT NULL,
  `author` int(11) NOT NULL,
  `level` smallint(3) NOT NULL,
  `title` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `exam`
--

INSERT INTO `exam` (`id`, `author`, `level`, `title`, `status`, `created_at`, `updated_at`) VALUES
(73, 4, 1, 'De2_MS03', 1, '2023-04-21 20:06:01', '2023-04-21 20:06:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `exam_part`
--

CREATE TABLE `exam_part` (
  `id` int(11) NOT NULL,
  `part_number` tinyint(1) NOT NULL,
  `title` varchar(255) NOT NULL,
  `direction` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `exam_part`
--

INSERT INTO `exam_part` (`id`, `part_number`, `title`, `direction`) VALUES
(1, 1, 'Part 1', 'For each question in this part, you will hear four statements about a picture in your test book. When you hear the statements, you must select the one statement that best describes what you see in the picture. Then find the number of the question on your answer sheet and mark your answer. The statements will not be printed in your test book and will be spoken only one time.'),
(2, 2, 'Part 2', 'You will hear a question or statement and three responses spoken in English. They will not be printed in your test book and will be spoken only one time. Select the best response to the question or statement and mark the letter (A), (B), or (C) on your answer sheet.'),
(3, 3, 'Part 3', 'You will hear some conversations between two or more people. You will be asked to answer three questions about what the speakers say in each conversation. Select the best response to each question and mark the letter (A), (B), (C), or (D) on your answer sheet. The conversations will not be printed in your test book and will be spoken only one time.'),
(4, 4, 'Part 4', 'You will hear some talks given by a single speaker. You will be asked to answer three questions about what the speaker says in each talk. Select the best response to each question and mark the letter (A), (B), (C), or (D) on your answer sheet. The talks will not be printed in your test book and will be spoken only one time.'),
(5, 5, 'Part 5', 'In the Reading test, you will read a variety of texts and answer several different types of reading comprehension questions. The entire Reading test will last 75 minutes. There are three parts, and directions are given for each part. You are encouraged to answer as many questions as possible within the time allowed.\r\n            You must mark your answers on the separate answer sheet. Do not write your answers in your test book.'),
(6, 6, 'Part 6', 'Read the texts that follow. A word, phrase, or sentence is missing in parts of each text. Four answer choices for each question are given below the text. Select the best answer to complete the text. Then mark the letter (A), (B), (C), or (D) on your answer sheet.'),
(7, 7, 'Part 7', 'In this part you will read a selection of texts, such as magazine and newspaper articles, e-mails, and instant messages. Each text or set of texts is followed by several questions. Select the best answer for each question and mark the letter (A), (B), (C), or (D) on your answer sheet.'),
(11, 1, 'Part 1_DE2', 'For each question in this part, you will hear four statements about a picture in your test book. When you hear the statements, you must select the one statement that best describes what you see in the picture. Then find the number of the question on your answer sheet and mark your answer. The statements will not be printed in your test book and will be spoken only one time.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `exam_question_group`
--

CREATE TABLE `exam_question_group` (
  `id` int(11) NOT NULL,
  `question_group_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `exam_question_group`
--

INSERT INTO `exam_question_group` (`id`, `question_group_id`, `exam_id`) VALUES
(1, 3, 73),
(2, 2, 73),
(3, 1, 73),
(4, 4, 73),
(5, 18, 73),
(6, 11, 73),
(7, 19, 73),
(8, 16, 73),
(9, 6, 73),
(10, 12, 73),
(11, 5, 73),
(12, 9, 73),
(13, 7, 73),
(14, 14, 73),
(15, 8, 73),
(16, 10, 73),
(17, 17, 73),
(18, 13, 73),
(19, 15, 73);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `exam_question_single`
--

CREATE TABLE `exam_question_single` (
  `id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `exam_question_single`
--

INSERT INTO `exam_question_single` (`id`, `question_id`, `exam_id`) VALUES
(1, 1, 73),
(2, 2, 73),
(3, 3, 73),
(4, 4, 73),
(5, 5, 73),
(6, 6, 73),
(7, 7, 73),
(8, 8, 73),
(9, 9, 73),
(10, 10, 73),
(11, 11, 73),
(12, 12, 73),
(13, 13, 73),
(14, 14, 73),
(15, 15, 73),
(16, 16, 73),
(17, 17, 73),
(18, 18, 73),
(19, 19, 73),
(20, 20, 73),
(21, 21, 73),
(22, 22, 73),
(23, 23, 73),
(24, 24, 73),
(25, 25, 73),
(26, 26, 73),
(27, 27, 73),
(28, 28, 73),
(29, 29, 73),
(30, 30, 73),
(31, 31, 73),
(32, 32, 73),
(33, 33, 73),
(34, 34, 73),
(35, 35, 73),
(36, 36, 73),
(37, 37, 73),
(38, 38, 73),
(39, 39, 73),
(40, 40, 73),
(41, 41, 73),
(42, 42, 73),
(43, 43, 73),
(44, 44, 73),
(45, 45, 73),
(46, 46, 73),
(47, 47, 73),
(48, 48, 73),
(49, 49, 73),
(50, 50, 73),
(51, 51, 73),
(52, 52, 73),
(53, 53, 73),
(54, 54, 73),
(55, 55, 73),
(56, 56, 73),
(57, 57, 73),
(58, 58, 73),
(59, 59, 73),
(60, 60, 73),
(61, 61, 73),
(62, 62, 73),
(63, 63, 73),
(64, 64, 73),
(65, 65, 73),
(66, 66, 73),
(67, 67, 73),
(68, 68, 73),
(69, 69, 73),
(70, 70, 73),
(71, 71, 73),
(72, 72, 73),
(73, 73, 73),
(74, 74, 73),
(75, 75, 73),
(76, 76, 73),
(77, 77, 73),
(78, 78, 73),
(79, 79, 73),
(80, 80, 73),
(81, 81, 73),
(82, 82, 73),
(83, 83, 73),
(84, 84, 73),
(85, 85, 73),
(86, 86, 73),
(87, 87, 73),
(88, 88, 73),
(89, 89, 73),
(90, 90, 73),
(91, 91, 73),
(92, 92, 73),
(93, 93, 73),
(94, 94, 73),
(95, 95, 73),
(96, 96, 73),
(97, 97, 73),
(98, 98, 73),
(99, 99, 73),
(100, 100, 73),
(101, 122, 73),
(102, 110, 73),
(103, 109, 73),
(104, 102, 73),
(105, 116, 73),
(106, 115, 73),
(107, 129, 73),
(108, 124, 73),
(109, 108, 73),
(110, 105, 73),
(111, 117, 73),
(112, 119, 73),
(113, 103, 73),
(114, 130, 73),
(115, 125, 73),
(116, 106, 73),
(117, 101, 73),
(118, 118, 73),
(119, 107, 73),
(120, 128, 73),
(121, 120, 73),
(122, 114, 73),
(123, 123, 73),
(124, 126, 73),
(125, 104, 73),
(126, 112, 73),
(127, 121, 73),
(128, 127, 73),
(129, 111, 73),
(130, 113, 73);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `exam_to_exam_part`
--

CREATE TABLE `exam_to_exam_part` (
  `id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `exam_part_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `exam_to_exam_part`
--

INSERT INTO `exam_to_exam_part` (`id`, `exam_id`, `exam_part_id`) VALUES
(1, 73, 1),
(2, 73, 2),
(3, 73, 3),
(4, 73, 4),
(5, 73, 5),
(6, 73, 6),
(7, 73, 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2023-03-19-061644', 'App\\Database\\Migrations\\Admin', 'default', 'App', 1681401897, 1),
(2, '2023-03-19-085351', 'App\\Database\\Migrations\\User', 'default', 'App', 1681401897, 1),
(3, '2023-03-19-085931', 'App\\Database\\Migrations\\Exam', 'default', 'App', 1681401897, 1),
(4, '2023-03-19-091508', 'App\\Database\\Migrations\\ExamPart', 'default', 'App', 1681401897, 1),
(5, '2023-03-19-095106', 'App\\Database\\Migrations\\QuestionGroup', 'default', 'App', 1681401897, 1),
(6, '2023-03-19-095330', 'App\\Database\\Migrations\\QuestionAudio', 'default', 'App', 1681401897, 1),
(7, '2023-03-19-095331', 'App\\Database\\Migrations\\Question', 'default', 'App', 1681401897, 1),
(8, '2023-03-19-111808', 'App\\Database\\Migrations\\QuestionImage', 'default', 'App', 1681401898, 1),
(9, '2023-03-19-112128', 'App\\Database\\Migrations\\Category', 'default', 'App', 1681401898, 1),
(10, '2023-03-19-112813', 'App\\Database\\Migrations\\Posts', 'default', 'App', 1681401898, 1),
(11, '2023-03-19-113147', 'App\\Database\\Migrations\\WrongAnswerQuestion', 'default', 'App', 1681401898, 1),
(12, '2023-03-28-102710', 'App\\Database\\Migrations\\ExamToExamPart', 'default', 'App', 1681401898, 1),
(13, '2023-03-28-122902', 'App\\Database\\Migrations\\ExamQuestionSingle', 'default', 'App', 1681401898, 1),
(14, '2023-03-28-122911', 'App\\Database\\Migrations\\ExamQuestionGroup', 'default', 'App', 1681401898, 1),
(15, '2023-03-28-122947', 'App\\Database\\Migrations\\QuestionAnswer', 'default', 'App', 1681401898, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `author` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `author`, `title`, `slug`, `description`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 4, 'Danh sách thí sinh  VIETTEL 2023', 'thong-bao-danh-sach-thi-sinh-vao-vong-chung-ket-quoc-gia-moswc-viettel-2023', '<p>Ng&agrave;y 02/04 vừa qua, gần 2.200 th&iacute; sinh xuất sắc được tuyển chọn từ 240 đội tuyển của c&aacute;c Tỉnh/th&agrave;nh</p>\r\n', '<p><img alt=\"\" src=\"https://iigvietnam.com/wp-content/uploads/2023/04/MicrosoftTeams-image-5-1-1024x509.png\" style=\"height:509px; width:1024px\" /></p>\n\n<p>Ng&agrave;y 02/04 vừa qua, gần 2.200 th&iacute; sinh xuất sắc được tuyển chọn từ 240 đội tuyển của c&aacute;c Tỉnh/th&agrave;nh đo&agrave;n, c&aacute;c trường đại học, học viện, cao đẳng, phổ th&ocirc;ng tr&ecirc;n cả nước đ&atilde; trải qua V&ograve;ng loại Quốc gia Cuộc thi V&ocirc; địch Tin học văn ph&ograve;ng thế giới &ndash; Viettel 2023 (MOSWC-Viettel 2023) đầy gay cấn tại H&agrave; Nội, Đ&agrave; Nẵng, TP.HCM.</p>\n\n<p>Căn cứ theo thể lệ cuộc thi, 25 th&iacute; sinh xuất sắc nhất mỗi nội dung thi sẽ được tuyển chọn v&agrave;o V&ograve;ng chung kết Quốc gia v&agrave;o ng&agrave;y 16/04/2023 tới đ&acirc;y. Theo đ&oacute;, Ban Tổ chức c&ocirc;ng bố danh s&aacute;ch c&aacute;c th&iacute; sinh đ&atilde; gi&agrave;nh quyền tham dự V&ograve;ng chung kết Quốc gia MOS World Championship &ndash; Viettel 2023 như sau:</p>\n\n<p>1. Danh s&aacute;ch 25 th&iacute; sinh xuất sắc nhất nội dung Microsoft Word 2016, xem&nbsp;<strong><a href=\"https://mos.iigvietnam.com/wp-content/uploads/sites/17/2023/04/Danh-sach-thi-sinh-VCK-Word-2016.pdf\">tại đ&acirc;y</a></strong>.</p>\n\n<p>2. Danh s&aacute;ch 25 th&iacute; sinh xuất sắc nhất nội dung Microsoft Excel 2016, xem&nbsp;<strong><a href=\"https://mos.iigvietnam.com/wp-content/uploads/sites/17/2023/04/Danh-sach-thi-sinh-VCK-Excel-2016.pdf\">tại đ&acirc;y</a></strong>.</p>\n\n<p>3. Danh s&aacute;ch 25 th&iacute; sinh xuất sắc nhất nội dung Microsoft PowerPoint 2016, xem&nbsp;<strong><a href=\"https://mos.iigvietnam.com/wp-content/uploads/sites/17/2023/04/Danh-sach-thi-sinh-VCK-PowerPoint-2016.pdf\">tại đ&acirc;y</a></strong>.</p>\n\n<p>4. Danh s&aacute;ch 25 th&iacute; sinh xuất sắc nhất nội dung Microsoft Word 2019, xem&nbsp;<strong><a href=\"https://mos.iigvietnam.com/wp-content/uploads/sites/17/2023/04/Danh-sach-thi-sinh-VCK-Word-2019.pdf\">tại đ&acirc;y</a></strong>.</p>\n\n<p>5. Danh s&aacute;ch 25 th&iacute; sinh xuất sắc nhất nội dung Microsoft Excel 2019, xem&nbsp;<strong><a href=\"https://mos.iigvietnam.com/wp-content/uploads/sites/17/2023/04/Danh-sach-thi-sinh-VCK-Excel-2019.pdf\">tại đ&acirc;y</a></strong>.</p>\n\n<p>6. Danh s&aacute;ch 25 th&iacute; sinh xuất sắc nhất nội dung Microsoft PowerPoint 2019, xem&nbsp;<strong><a href=\"https://mos.iigvietnam.com/wp-content/uploads/sites/17/2023/04/Danh-sach-thi-sinh-VCK-PowerPoint-2019.pdf\">tại đ&acirc;y</a></strong>.</p>\n\n<p>Địa điểm tổ chức V&ograve;ng chung kết Quốc gia sẽ diễn ra tại 3 miền như sau:</p>\n\n<p>&ndash; Miền Bắc: Trường Đại học Kinh tế Quốc d&acirc;n &ndash; Đ/c: 207 Giải Ph&oacute;ng, Đồng T&acirc;m, Quận Hai B&agrave; Trưng, H&agrave; Nội (Cũng l&agrave; địa điểm tổ chức Lễ khai mạc v&agrave; V&ograve;ng loại quốc gia MOSWC &ndash; Viettel 2023).</p>\n\n<p>&ndash; Miền Trung: Văn ph&ograve;ng IIG Việt Nam tại Đ&agrave; Nẵng &ndash; Đ/c: Số 19 Ho&agrave;ng Văn Thụ, Quận Hải Ch&acirc;u, Đ&agrave; Nẵng.</p>\n\n<p>&ndash; Miền Nam: Văn ph&ograve;ng IIG Việt Nam &ndash; Đ/c: Tầng 1, Th&aacute;p 1, The Sun Avenue, 28 Mai Ch&iacute; Thọ, An Ph&uacute;, TP. Thủ Đức, TP.HCM.</p>\n\n<p>Ngo&agrave;i ra, BTC cũng xin ch&uacute;c mừng c&aacute;c th&iacute; sinh đạt từ 700/1000 trở l&ecirc;n điểm sẽ nhận được chứng chỉ MOS do Microsoft chứng nhận c&oacute; gi&aacute; trị to&agrave;n cầu. Với th&iacute; sinh thuộc đội tuyển, BTC sẽ gửi chứng chỉ về cho c&aacute;c đội tuyển, với th&iacute; sinh tự do vui l&ograve;ng nhận chứng chỉ tại c&aacute;c văn ph&ograve;ng IIG Việt Nam 3 miền (H&agrave; Nội, Đ&agrave; Nẵng, TP.HCM).</p>\n\n<p><strong>I. Nội dung thi tại VCK Quốc gia:</strong></p>\n\n<p>1. H&igrave;nh thức dự thi:</p>\n\n<p>&ndash;&nbsp; Th&iacute; sinh mỗi miền Bắc, Trung, Nam sẽ dự thi VCK quốc gia tập trung tại 3 địa điểm tương ứng: H&agrave; Nội, Đ&agrave; Nẵng, TP.HCM như tr&ecirc;n.</p>\n\n<p>2. Nội dung thi:</p>\n\n<p>&ndash; C&aacute;c th&iacute; sinh sẽ l&agrave;m B&agrave;i thi tổng hợp đ&aacute;nh gi&aacute; kỹ năng v&agrave; tư duy vận dụng c&aacute;c kỹ năng Tin học văn ph&ograve;ng.</p>\n\n<p>&ndash; Th&ocirc;ng tin về B&agrave;i thi tổng hợp th&iacute; sinh vui l&ograve;ng xem&nbsp;<strong><a href=\"https://iigvietnam.com/wp-content/uploads/2023/04/THONG-TIN-HUONG-DAN-VE-BAI-THI-TONG-HOP-MOSWC-2023.pdf\">tại đ&acirc;y</a></strong>.</p>\n\n<p>3. C&aacute;ch thức ghi nhận kết quả:</p>\n\n<p>&nbsp;&ndash; Điểm số x&eacute;t giải thưởng sẽ được x&aacute;c định dựa tr&ecirc;n điểm thi v&agrave; thời gian l&agrave;m b&agrave;i.</p>\n\n<p><strong>II. Th&ocirc;ng tin ng&agrave;y thi v&agrave; giờ thi V&ograve;ng chung kết Quốc gia:</strong></p>\n\n<p>Ng&agrave;y thi: 16/04/2023 (Chủ Nhật)</p>\n\n<p>Th&ocirc;ng tin ca thi, giờ thi: Ban Tổ chức sẽ th&ocirc;ng b&aacute;o trực tiếp tới c&aacute;c đội tuyển v&agrave; th&iacute; sinh được v&agrave;o V&ograve;ng chung kết Quốc gia trong thời gian sớm nhất.</p>\n\n<p>Mọi th&ocirc;ng tin cần giải đ&aacute;p xin vui l&ograve;ng li&ecirc;n hệ với BTC qua email: moswc.vn@gmail.com hoặc hotline 1900636929 (trong giờ h&agrave;nh ch&iacute;nh).</p>\n\n<p>Tr&acirc;n trọng th&ocirc;ng b&aacute;o!</p>\n\n<p>Ban Tổ chức Cuộc thi.</p>\n', 1, '2023-04-25 17:02:42', '2023-04-25 21:22:40'),
(2, 4, 4, 'Nâng cao năng lực tiếng Anh', 'nang-cao-nang-luc-tieng-anh', '<p>C&aacute;c trường Đại học tại Huế đẩy mạnh n&acirc;ng cao năng lực tiếng Anh v&agrave; Tin học cho sinh vi&ecirc;n</p>\r\n', '<p>Vừa qua, IIG Việt Nam đ&atilde; k&yacute; kết thỏa thuận hợp t&aacute;c với Trường Đại Học Khoa Học, Đại Học Huế về việc Triển khai Đề &aacute;n N&acirc;ng cao tr&igrave;nh độ tiếng Anh, Tin học cho sinh vi&ecirc;n nh&agrave; trường. Buổi lễ c&oacute; sự tham dự của PGS.TS V&otilde; Thanh T&ugrave;ng &ndash; Hiệu Trưởng, b&agrave; Phạm Thị Kh&aacute;nh Phượng &ndash; Gi&aacute;m đốc Điều h&agrave;nh IIG Đ&agrave; Nẵng, c&ugrave;ng đại diện c&aacute;c phong ban của hai đơn vị.</p>\r\n\r\n<p><img alt=\"\" src=\"https://iigvietnam.com/wp-content/uploads/2023/03/DHKH-Hue4-1024x768.jpg\" style=\"width:600px\" /></p>\r\n\r\n<p><em>PGS.TS V&otilde; Thanh T&ugrave;ng &ndash; Hiệu Trưởng v&agrave; b&agrave; Phạm Thị Kh&aacute;nh Phượng &ndash; Gi&aacute;m đốc Điều h&agrave;nh IIG Đ&agrave; Nẵng đại diện hai đơn vị k&yacute; kết Bi&ecirc;n bản ghi nhớ hợp t&aacute;c</em>.</p>\r\n\r\n<p>Theo thỏa thuận hợp t&aacute;c, hai b&ecirc;n đ&atilde; thống nhất v&agrave; đưa ra những chiến lược hợp t&aacute;c ph&aacute;t triển, từng bước thực hiện c&aacute;c mục ti&ecirc;u chuẩn h&oacute;a chất lượng gi&aacute;o dục của nh&agrave; trường trong việc đ&aacute;nh gi&aacute; tiếng Anh theo chuẩn quốc tế TOEIC v&agrave; cấp chứng chỉ tin học MOS, từ đ&oacute;, gi&uacute;p n&acirc;ng cao tr&igrave;nh độ kỹ năng v&agrave; bổ trợ to&agrave;n diện cho sinh vi&ecirc;n.</p>\r\n\r\n<p>Đồng thời, IIG Việt Nam hỗ trợ để thực hiện c&aacute;c hoạt động như: tổ chức k&igrave; thi ph&acirc;n loại tiếng Anh đầu v&agrave;o bằng b&agrave;i thi TOEIC Placement Test d&agrave;nh cho sinh vi&ecirc;n năm nhất, tổ chức thi TOEIC đầu ra cho sinh vi&ecirc;n theo kế hoạch định k&igrave; của trường, tiến h&agrave;nh tập huấn cho giảng vi&ecirc;n của Trường về phương ph&aacute;p giảng dạy tiếng Anh theo chuẩn TOEIC, Tin học văn ph&ograve;ng theo chuẩn MOS. IIG cũng tham vấn cho nh&agrave; trường việc sử dụng chứng chỉ tiếng Anh v&agrave; MOS v&agrave;o ch&iacute;nh s&aacute;ch tuyển sinh để gi&uacute;p nh&agrave; trường thu h&uacute;t được nhiều sinh vi&ecirc;n giỏi v&agrave;o trường.</p>\r\n\r\n<p><img alt=\"\" src=\"https://iigvietnam.com/wp-content/uploads/2023/03/DHKH-Hue2-1024x768.jpg\" style=\"width:600px\" /></p>\r\n\r\n<p><em>Lễ k&yacute; kết diễn ra th&agrave;nh c&ocirc;ng tốt đẹp.</em></p>\r\n\r\n<p>Như vậy, t&iacute;nh đến thời điểm hiện tại, c&ugrave;ng với ĐH Khoa học th&igrave; tại khu vực Huế c&aacute;c trường gồm ĐH Luật, ĐH Kinh tế &ndash; ĐH Huế, Đại học Huế đ&atilde; đồng loạt triển khai hoạt động n&acirc;ng cao chất lượng đ&agrave;o tạo tiếng Anh v&agrave; Tin học cho sinh vi&ecirc;n. Hướng đi n&agrave;y cho thấy sự quyết t&acirc;m của c&aacute;c trường trong việc đổi mới, mạnh dạn đưa những chuẩn đ&aacute;nh gi&aacute; quốc tế v&agrave;o trong hoạt động dạy v&agrave; học nhằm đạt mục ti&ecirc;u n&acirc;ng cao chất lượng đ&agrave;o tạo, ph&aacute;t triển nguồn nh&acirc;n lực chất lượng cao, đ&aacute;p ứng c&aacute;c nhu cầu của x&atilde; hội. Điều n&agrave;y cũng tạo ra nhiều lợi &iacute;ch cho sinh vi&ecirc;n khi sở hữu c&aacute;c kỹ năng thiết yếu, gia tăng cơ hội nghệ nghiệp tại thị trường lao động trong nước v&agrave; thế giới./.</p>\r\n', 1, '2023-04-25 17:05:25', '2023-04-25 21:08:06'),
(3, 5, 4, 'Thông báo lịch nghỉ Giỗ Tổ Hùng Vương ', 'thong-bao-lich-nghi-gio-to-hung-vuong', '<p>Th&ocirc;ng b&aacute;o lịch nghỉ Giỗ Tổ H&ugrave;ng Vương v&agrave; 30/4-01/5 năm 2023</p>\r\n', '<p><em>K&iacute;nh gửi Qu&yacute; kh&aacute;ch h&agrave;ng,</em></p>\r\n\r\n<p>Tổ chức Gi&aacute;o dục IIG Việt Nam tr&acirc;n trọng th&ocirc;ng b&aacute;o lịch nghỉ Lễ Giỗ Tổ H&ugrave;ng Vương, ng&agrave;y Giải ph&oacute;ng miền Nam 30/4 v&agrave; Quốc tế Lao động 01/5 như sau:</p>\r\n\r\n<p><img alt=\"\" src=\"https://iigvietnam.com/wp-content/uploads/2023/04/lich-nghi-30-4.01-5-2023-1024x774.png\" style=\"height:774px; width:1024px\" /></p>\r\n\r\n<p>IIG Việt Nam k&iacute;nh ch&uacute;c Qu&yacute; kh&aacute;ch h&agrave;ng kỳ nghỉ Lễ vui vẻ!</p>\r\n\r\n<p><em>Tr&acirc;n trọng!</em></p>\r\n', 1, '2023-04-25 17:06:14', '2023-04-25 17:06:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `exam_part_id` int(11) NOT NULL,
  `question_group_id` int(11) DEFAULT NULL,
  `audio_id` int(11) DEFAULT NULL,
  `right_option` tinyint(1) NOT NULL,
  `question` text DEFAULT NULL,
  `explain` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `question`
--

INSERT INTO `question` (`id`, `type`, `exam_part_id`, `question_group_id`, `audio_id`, `right_option`, `question`, `explain`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, 1, 3, '', '<p>(A) He&rsquo;s plugging in a laptop.</p>  <p>(B) He&rsquo;s looking at a clipboard.</p>  <p>(C) He&rsquo;s working at a desk. *</p>  <p>(D) He&rsquo;s turning on a lamp.</p>', 1, '2023-04-10 15:51:11', '2023-04-27 17:48:43'),
(2, 1, 1, NULL, 2, 2, '', '<p>(A) Some planes are taking off.</p>  <p>(B) Some vehicles are facing the same direction. *</p>  <p>(C) Some people are waiting to board a plane.</p>  <p>(D) Some people are walking on a runway.</p>', 1, '2023-04-10 15:51:11', '2023-04-27 17:50:58'),
(3, 1, 1, NULL, 3, 4, '', '<p>(A) She&rsquo;s closing a cabinet.</p>  <p>(B) She&rsquo;s wiping down a sink.</p>  <p>(C) She&rsquo;s arranging bottles on a counter</p>  <p>(D) She&rsquo;s putting on a glove. *</p>', 1, '2023-04-10 15:51:11', '2023-04-27 17:51:53'),
(4, 1, 1, NULL, 4, 2, '', '<p>(A) One of the men is leaning on a wall.</p>  <p>(B) Dirt is being moved with a shovel. *</p>  <p>(C) Tools are being unloaded from a van.</p>  <p>(D) Workers are operating a digging machine.</p>', 1, '2023-04-10 15:51:11', '2023-04-27 17:52:31'),
(5, 1, 1, NULL, 5, 3, '', '<p>(A) A man is filling some glasses.</p> <p>(B) Some menus have been left on a table.</p> <p>(C) A server is taking an order. *</p> <p>(D) Some diners have been seated outdoors.</p>', 1, '2023-04-10 15:51:11', '2023-04-27 17:59:35'),
(6, 1, 1, NULL, 6, 1, '', '<p>(A) Chairs are lined up in rows. *</p> <p>(B) Lights have been turned off in a classroom.</p> <p>(C) A chart is being projected on a screen.</p> <p>(D) A railing has been installed along a center aisle.</p>', 1, '2023-04-10 15:51:11', '2023-04-27 17:59:38'),
(7, 1, 2, NULL, 7, 1, '', '<p>(M-Cn) Which car is yours?</p> <p>(A) The red sedan. *</p> <p>(B) Yes, I love to drive.</p> <p>(C) The store doesn’t take cards.</p>', 1, '2023-04-10 15:51:11', '2023-04-27 18:02:46'),
(8, 1, 2, NULL, 8, 3, '', '<p>(W-Br) Why is the scanner turned off?</p> <p>(A) No, you can leave it on.</p> <p>(B) Ron from Accounting.</p> <p>(C) To save electricity. *</p>', 1, '2023-04-10 15:51:11', '2023-04-27 18:04:31'),
(9, 1, 2, NULL, 9, 3, '', '<p>(M-Cn) When does the walking tour leave?</p> <p>(A) Thanks for letting me know.</p> <p>(B) The leaves are beautiful.</p> <p>(C) At ten A.M. and three P.M. *</p>', 1, '2023-04-10 15:51:11', '2023-04-27 18:06:21'),
(10, 1, 2, NULL, 10, 2, '', '<p>Can I have the wireless Internet password?</p> <p>(A) The network administrator.</p> <p>(B) It’s printed on your receipt. *</p> <p>(C) Your boarding pass.</p>', 1, '2023-04-10 15:51:11', '2023-04-27 18:07:49'),
(11, 1, 2, NULL, 11, 1, '', '<p>Who won the cake-making contest at the fair?</p> <p>(A) The owner of Morris Bakery. *</p> <p>(B) Train fares are on our Web site.</p> <p>(C) No, but I did get second place.</p>', 1, '2023-04-10 15:51:11', '2023-04-27 18:09:41'),
(12, 1, 2, NULL, 12, 2, '', '<p>Where will the new community center be built?</p> <p>(A) By the end of the year, I heard.</p> <p>(B) There’s an empty lot on Fifth Street. *</p> <p>(C) How about some performance spaces?</p>', 1, '2023-04-10 15:51:11', '2023-04-27 18:10:11'),
(13, 1, 2, NULL, 13, 2, '', '<p>Is there a fee for canceling the service contract?</p> <p>(A) Sign here and write today’s date.</p> <p>(B) Yes, it would cost you fifty dollars. *</p> <p>(C) A variety of contact methods.</p>', 1, '2023-04-10 15:51:11', '2023-04-27 18:11:12'),
(14, 1, 2, NULL, 14, 3, '', '<p>Are you going to paint the walls or put up wallpaper?</p> <p>(A) I don’t read the paper often.</p> <p>(B) Only in the living room.</p> <p>(C) I’m still deciding. *</p>', 1, '2023-04-10 15:51:11', '2023-04-27 18:11:34'),
(15, 1, 2, NULL, 15, 1, '', '<p>I have a couple of questions about the duties of the position.</p> <p>(A) What would you like to know? *</p> <p>(B) Assistant to the sales director.</p> <p>(C) I’ll put them in the supply closet.</p>', 1, '2023-04-10 15:51:11', '2023-04-27 18:12:00'),
(16, 1, 2, NULL, 16, 3, '', '<p>How often should I empty my waste bin?</p> <p>(A) Take it to the container outside.</p> <p>(B) Anything that can’t be recycled.</p> <p>(C) The cleaners handle that. *</p>', 1, '2023-04-10 15:51:11', '2023-04-27 18:12:49'),
(17, 1, 2, NULL, 17, 3, '', '<p>Didn’t you say the elevator was out of order?</p> <p>(A) This building has twelve stories.</p> <p>(B) In alphabetical order, please.</p> <p>(C) I guess it’s been repaired. *</p>', 1, '2023-04-10 15:51:11', '2023-04-27 18:12:51'),
(18, 1, 2, NULL, 18, 1, '', '<p>What should I bring to the clinic for my appointment?</p> <p>(A) I’ll send you a checklist. *</p> <p>(B) There are several direct buses.</p> <p>(C) That’s what the doctor said.</p>', 1, '2023-04-10 15:51:11', '2023-04-27 18:13:20'),
(19, 1, 2, NULL, 19, 1, '', '<p>This band played at the music festival last year too, right?</p> <p>(A) The singer does look familiar. *</p> <p>(B) We change the displays every year.</p> <p>(C) More than twenty music groups.</p>', 1, '2023-04-10 15:51:11', '2023-04-27 18:14:13'),
(20, 1, 2, NULL, 20, 2, '', '<p>When will the real estate webinar take place?</p> <p>(A) Yes, hosted by a local agency.</p> <p>(B) It already did, but the video’s available online. *</p> <p>(C) I’m happy with my current place.</p>', 1, '2023-04-10 15:51:11', '2023-04-27 18:14:28'),
(21, 1, 2, NULL, 21, 1, '', '<p>Do you like working from home full-time?</p> <p>(A) There are good points and bad points. *</p> <p>(B) Some of our software developers.</p> <p>(C) OK—when would I start?</p>', 1, '2023-04-10 15:51:11', '2023-04-27 18:14:53'),
(22, 1, 2, NULL, 22, 3, '', '<p>Why am I being charged for late checkout?</p> <p>(A) Anytime after noon.</p> <p>(B) It’ll be charged to your credit card.</p> <p>(C) Sorry—let me recalculate your bill. *</p>', 1, '2023-04-10 15:51:11', '2023-04-27 18:23:08'),
(23, 1, 2, NULL, 23, 2, '', '<p>Who hasn’t responded to the party invitation yet?</p> <p>(A) Most people say they had a good time.</p> <p>(B) Hina’s managing the guest list. *</p> <p>(C) Because I’m not sure about my schedule.</p>', 1, '2023-04-10 15:51:11', '2023-04-27 18:22:58'),
(24, 1, 2, NULL, 24, 2, '', '<p>Where can I find a copy of the employee handbook?</p> <p>(A) All of the company’s for staff.</p> <p>(B) Didn’t you get one at the orientation? *</p> <p>(C) The copy machine is by the front desk.</p>', 1, '2023-04-10 15:51:11', '2023-04-27 18:22:43'),
(25, 1, 2, NULL, 25, 2, '', '<p>Should we use a parking garage or look for a space on the street?</p> <p>(A) No, the rates are too high on weekdays.</p> <p>(B) We don’t have time to search for street parking. *</p> <p>(C) A few blocks south of City Hall.</p>', 1, '2023-04-10 15:51:11', '2023-04-28 15:52:49'),
(26, 1, 2, NULL, 26, 3, '', '<p>Could I interview you for the company newsletter?</p> <p>(A) I thought Nathan led hiring interviews.</p> <p>(B) Yes, a letter and some packages.</p> <p>(C) It depends on what the topic would be. *</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:02:41'),
(27, 1, 2, NULL, 27, 1, '', '<p>How do you like your Chinese language class?</p> <p>(A) I just signed up for another three months. *</p> <p>(B) At a language institute downtown.</p> <p>(C) The flight to China is business class.</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:03:03'),
(28, 1, 2, NULL, 28, 1, '', 'Has the machinery upgrade improved our productivity? 	(A) We’re gathering that data this week. * (B)	No, to use materials more efficiently. (C)	Upgrading now would be quite expensive.<p>Has the machinery upgrade improved our productivity?</p> <p>(A) We’re gathering that data this week. *</p> <p>(B) No, to use materials more efficiently.</p> <p>(C) Upgrading now would be quite expensive.</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:03:58'),
(29, 1, 2, NULL, 29, 3, '', '<p>It’s supposed to be cold in Paris when we land, isn’t it?</p> <p>(A) Sarah must have left the window open.</p> <p>(B) The plot of land shown on the map.</p> <p>(C) I have a jacket in my carry-on bag. *</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:03:53'),
(30, 1, 2, NULL, 30, 1, '', '<p>I’ve never participated in a focus group before.</p> <p>(A) Just follow the leader’s instructions. *</p> <p>(B) Before we design the new handbags.</p> <p>(C) That’s an excellent suggestion.</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:04:20'),
(31, 1, 2, NULL, 31, 2, '', '<p>Doesn’t the meal kit include all the ingredients we need?</p> <p>(A) I’m fine for now, thank you.</p> <p>(B) We have to provide the cooking oil. *</p> <p>(C) At this weekend’s farmer’s market.</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:04:42'),
(32, 1, 3, NULL, 32, 2, 'Where most likely are the speakers?', '<p>Where most likely are the speakers?</p> <p>(A) At a concert hall</p> <p>(B) At a movie theater *</p> <p>(C) At an amusement park</p> <p>(D) At an Internet café</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:05:48'),
(33, 1, 3, NULL, 33, 3, 'What problem does the woman report?', '<p>What problem does the woman report?</p> <p>(A) A screen is malfunctioning.</p> <p>(B) Other patrons are being loud.</p> <p>(C) Some lights have been left on. *</p> <p>(D) A seating area is not clean.</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:07:08'),
(34, 1, 3, NULL, 34, 1, 'What does the man say he will do?', '<p>What does the man say he will do?</p> <p>(A) Tell a coworker *</p> <p>(B) Adjust some equipment</p> <p>(C) Follow the woman</p> <p>(D) Issue a refund</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:07:29'),
(35, 1, 3, NULL, 35, 1, 'What did the man receive recently?', '<p>What did the man receive recently?</p> <p>(A) A credit card *</p> <p>(B) A bank statement</p> <p>(C) An e-mail notice</p> <p>(D) A program brochure</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:07:52'),
(36, 1, 3, NULL, 36, 4, '(A)ccording to the woman, why is a change being made?', '<p>According to the woman, why is a change being made?</p> <p>(A) To reduce waste</p> <p>(B) To speed up a process</p> <p>(C) To comply with a new law</p> <p>(D) To improve security *</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:08:13'),
(37, 1, 3, NULL, 37, 3, 'What does the woman offer to do?', '<p>What does the woman offer to do?</p> <p>(A) Investigate some account activity</p> <p>(B) Provide a Web address</p> <p>(C) Transfer the man’s call *</p> <p>(D) Set up an in-person visit</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:08:43'),
(38, 1, 3, NULL, 38, 3, 'Why is the woman talking to the man?', '<p>Why is the woman talking to the man?</p> <p>(A) To report a problem</p> <p>(B) To confirm a schedule</p> <p>(C) To get feedback on an idea *</p> <p>(D) To fulfill a request for information</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:09:07'),
(39, 1, 3, NULL, 39, 2, 'What does the man imply when he says, “you were part of the logo redesign project”?', '<p>What does the man imply when he says, “you were part of the logo redesign project”?</p> <p>(A) The woman should correct a misunderstanding.</p> <p>(B) The woman probably understands a difficulty. *</p> <p>(C) The woman has been busy lately.</p> <p>(D) The woman is qualified for a task.</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:09:31'),
(40, 1, 3, NULL, 40, 2, 'What does the woman decide to do?', '<p>What does the woman decide to do?</p> <p>(A) Arrange a meeting *</p> <p>(B) Look at some records</p> <p>(C) Draft a document</p> <p>(D) Wait for an announcement</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:09:52'),
(41, 1, 3, NULL, 41, 3, 'What does the man say will happen soon?', '<p>What does the man say will happen soon?</p> <p>(A) A manager will resign.</p> <p>(B) Some inventory will be checked.</p> <p>(C) A community event will take place. *</p> <p>(D) A competing café will open nearby.</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:10:15'),
(42, 1, 3, NULL, 42, 2, 'What does the man ask the women to do?', '<p>What does the man ask the women to do?</p> <p>(A) Learn a new process</p> <p>(B) Work additional hours *</p> <p>(C) Follow a rule more carefully</p> <p>(D) Make some suggestions</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:10:34'),
(43, 1, 3, NULL, 43, 1, 'What does Jean say she intended to ask for?', '<p>What does Jean say she intended to ask for?</p> <p>(A) A day off *</p> <p>(B) Some training</p> <p>(C) Details about a plan</p> <p>(D) Some reimbursement</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:10:54'),
(44, 1, 3, NULL, 44, 2, 'Why did the man miss a call?', '<p>Why did the man miss a call?</p> <p>(A) He was setting up a booth.</p> <p>(B) He was attending a workshop. *</p> <p>(C) He was walking around a trade fair.</p> <p>(D) He was completing a registration process.</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:11:17'),
(45, 1, 3, NULL, 45, 1, 'What problem does the woman mention?', '<p>What problem does the woman mention?</p> <p>(A) A train has been delayed. *</p> <p>(B) She cannot find a file.</p> <p>(C) An area has heavy traffic.</p> <p>(D) She misunderstood a schedule.</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:11:36'),
(46, 1, 3, NULL, 46, 4, 'What will the man do tomorrow?', '<p>What will the man do tomorrow?</p> <p>(A) Send out a group e-mail</p> <p>(B) Collect samples from exhibitors</p> <p>(C) Give the woman a ride to a venue</p> <p>(D) Make a presentation to potential clients *</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:11:56'),
(47, 1, 3, NULL, 47, 4, 'What are the speakers working on?', '<p>What are the speakers working on?</p> <p>(A) Buying supplies for a farm</p> <p>(B) Inspecting a storage facility</p> <p>(C) Creating a community garden</p> <p>(D) Conducting scientific experiments *</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:12:17'),
(48, 1, 3, NULL, 48, 3, 'What does the woman ask the man to do?', '<p>What does the woman ask the man to do?</p> <p>(A) Plant some seeds</p> <p>(B) Accept a delivery</p> <p>(C) Take some measurements *</p> <p>(D) Move some boxes</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:12:34'),
(49, 1, 3, NULL, 49, 2, 'What will the woman give the man?', '<p>What will the woman give the man?</p> <p>(A) A travel itinerary</p> <p>(B) A set of instructions *</p> <p>(C) A property map</p> <p>(D) A keycard</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:12:55'),
(50, 1, 3, NULL, 50, 3, 'Who most likely is the woman?', '<p>Who most likely is the woman?</p> <p>(A) A library patron</p> <p>(B) A potential donor</p> <p>(C) An invited speaker *</p> <p>(D) A job candidate</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:13:17'),
(51, 1, 3, NULL, 51, 2, 'What does the woman mention about Mr. Burke?', '<p>What does the woman mention about Mr. Burke?</p> <p>(A) She will wait for him to return.</p> <p>(B) She exchanged e-mails with him. *</p> <p>(C) She has not seen him for a long time.</p> <p>(D) She has read some of his short stories.</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:13:38'),
(52, 1, 3, NULL, 52, 3, 'What will Darren most likely do for the woman?', '<p>What will Darren most likely do for the woman?</p> <p>(A) Store some of her outerwear</p> <p>(B) Write down her message</p> <p>(C) Serve her a beverage *</p> <p>(D) Accompany her to an office</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:14:00'),
(53, 1, 3, NULL, 53, 4, 'What are the speakers mainly discussing?', '<p>What are the speakers mainly discussing?</p> <p>(A) A company Web site</p> <p>(B) Some revisions to a budget</p> <p>(C) Some survey results</p> <p>(D) An increase in sales *</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:14:23'),
(54, 1, 3, NULL, 54, 3, 'What does the man ask for permission to do?', '<p>What does the man ask for permission to do?</p> <p>(A) Form a project team</p> <p>(B) Complete a purchase</p> <p>(C) Make an announcement *</p> <p>(D) Extend a deadline</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:14:43'),
(55, 1, 3, NULL, 55, 1, 'Why is the woman impressed?', '<p>Why is the woman impressed?</p> <p>(A) A report is well-organized. *</p> <p>(B) A prediction was accurate.</p> <p>(C) An assignment was finished quickly.</p> <p>(D) A conflict was resolved smoothly.</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:15:06'),
(56, 1, 3, NULL, 56, 3, 'Who most likely is the woman?', '<p>Who most likely is the woman?</p> <p>(A) A real estate agent</p> <p>(B) A repair technician</p> <p>(C) A property owner *</p> <p>(D) A cleaning supervisor</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:15:28'),
(57, 1, 3, NULL, 57, 1, 'What does the man imply when he says, “I work from 9 to 6 on weekdays”?', '<p>What does the man imply when he says, “I work from 9 to 6 on weekdays”?</p> <p>(A) He will not be inconvenienced by some activity. *</p> <p>(B) He will be unable to meet with the woman.</p> <p>(C) He needs the woman’s assistance with a task.</p> <p>(D) He prefers to schedule appointments on weekends.</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:15:53'),
(58, 1, 3, NULL, 58, 4, 'What does the woman promise to do?', '<p>What does the woman promise to do?</p> <p>(A) Bring a special tool</p> <p>(B) Keep a space clean</p> <p>(C) Research some options</p> <p>(D) Give the man a notification *</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:16:15'),
(59, 1, 3, NULL, 59, 1, 'Why is the man calling?', '<p>Why is the man calling?</p> <p>(A) To respond to a contact request *</p> <p>(B) To provide an update on a project</p> <p>(C) To respond to a party invitation</p> <p>(D) To apologize for an inconvenience</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:16:38'),
(60, 1, 3, NULL, 60, 4, 'What field does the man most likely work in?', '<p>What field does the man most likely work in?</p> <p>(A) Event planning</p> <p>(B) Technology</p> <p>(C) Recruiting</p> <p>(D) Marketing *</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:17:07'),
(61, 1, 3, NULL, 61, 2, 'What does the man ask the woman to do?', '<p>What does the man ask the woman to do?</p> <p>(A) Download a mobile app</p> <p>(B) Give information about a business *</p> <p>(C) Suggest an appointment time</p> <p>(D) Review a proposal</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:17:32'),
(62, 1, 3, NULL, 62, 2, 'What does the woman tell the man about?', '<p>What does the woman tell the man about?</p> <p>(A) Visiting the airport previously</p> <p>(B) Receiving a text message *</p> <p>(C) Checking a Web page</p> <p>(D) Speaking with a colleague</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:17:58'),
(63, 1, 3, NULL, 63, 2, 'Look at the graphic. Which exit will the man go to?', '<p>Look at the graphic. Which exit will the man go to?</p> <p>(A) Exit 1</p> <p>(B) Exit 2 *</p> <p>(C) Exit 3</p> <p>(D) Exit 4</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:19:38'),
(64, 1, 3, NULL, 64, 4, 'What will the woman ask Ms. Rice about?', '<p>What will the woman ask Ms. Rice about?</p> <p>(A) Her travel schedule</p> <p>(B) Her physical appearance</p> <p>(C) Her amount of luggage</p> <p>(D) Her current location *</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:20:20'),
(65, 1, 3, NULL, 65, 4, 'Who most likely is the man?', 'supervisor</p> <p>(D) A landscaping contractor *</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:20:51'),
(66, 1, 3, NULL, 66, 3, 'Look at the graphic. Where does the woman want to put a bench?', '<p>Look at the graphic. Where does the woman want to put a bench?</p>  <p>(A) At Location 1</p> <p>(B) At Location 2</p> <p>(C) At Location 3 *</p> <p>(D) At Location 4</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:21:52'),
(67, 1, 3, NULL, 67, 1, 'What does the woman say about the bench?', '<p>What does the woman say about the bench?</p> <p>(A) It should be attached to the ground. *</p> <p>(B) It must be made of a certain material.</p> <p>(C) It is intended for employees’ use.</p> <p>(D) It will match the design of a building.</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:22:23'),
(68, 1, 3, NULL, 68, 4, 'Look at the graphic. What does the woman show the man?', '<p>Look at the graphic. What does the woman show the man?</p> <p>(A) A pair of gloves</p> <p>(B) A scarf</p> <p>(C) A pair of lined jeans</p> <p>(D) A sweater *</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:23:49'),
(69, 1, 3, NULL, 69, 1, 'What does the woman ask about?', '<p>What does the woman ask about?</p> <p>(A) Returning a purchase *</p> <p>(B) Using a fitting room</p> <p>(C) Washing an item</p> <p>(D) Choosing a payment method</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:24:16'),
(70, 1, 3, NULL, 70, 4, 'What does the man say will happen soon?', '<p>What does the man say will happen soon?</p> <p>(A) An online store will open.</p> <p>(B) Renovations will be completed.</p> <p>(C) A loyalty program will change.</p> <p>(D) New stock will arrive. *</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:24:36'),
(71, 1, 4, NULL, 71, 1, 'Where most likely is the announcement being made?', '<p>Where most likely is the announcement being made?</p> <p>(A) In a factory *</p> <p>(B) In a train station</p> <p>(C) In a fitness center</p> <p>(D) In a supermarket</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:25:05'),
(72, 1, 4, NULL, 72, 2, 'What does the speaker tell the listeners?', '<p>What does the speaker tell the listeners?</p> <p>(A) Where to wait *</p> <p>(B) Whom to give an item to</p> <p>(C) When an activity can be resumed</p> <p>(D) How to ask for assistance</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:25:31'),
(73, 1, 4, NULL, 73, 3, '(A)ccording to the speaker, what should the listeners avoid doing?', '<p>According to the speaker, what should the listeners avoid doing?</p> <p>(A) Leaving belongings behind</p> <p>(B) Making too much noise</p> <p>(C) Ending a working period *</p> <p>(D) Passing through an outdoor area</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:26:00'),
(74, 1, 4, NULL, 74, 1, 'What kind of event is taking place?', '<p>What kind of event is taking place?</p> <p>(A) A company outing *</p> <p>(B) A community festival</p> <p>(C) A charity fund-raiser</p> <p>(D) A grand opening</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:26:27'),
(75, 1, 4, NULL, 75, 2, 'What does the speaker invite listeners to do?', '<p>What does the speaker invite listeners to do?</p> <p>(A) Make some purchases</p> <p>(B) Have a meal *</p> <p>(C) Take some pictures</p> <p>(D) Plant some trees</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:26:53'),
(76, 1, 4, NULL, 76, 2, 'Why does the speaker say, “it’s quite hot today”?', '<p>Why does the speaker say, “it’s quite hot today”?</p> <p>(A) To express her discomfort</p> <p>(B) To explain her concern for others *</p> <p>(C) To justify a change to a plan</p> <p>(D) To praise some event workers</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:27:18'),
(77, 1, 4, NULL, 77, 3, '(A)ccording to the news report, what have the Regents decided to do?', '<p>According to the news report, what have the Regents decided to do?</p> <p>(A) Change their mascot</p> <p>(B) Move to another city</p> <p>(C) Let a player go *</p> <p>(D) Cancel a game</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:27:46'),
(78, 1, 4, NULL, 78, 4, 'What does the speaker say about Mr. Pierce?', '<p>What does the speaker say about Mr. Pierce?</p> <p>(A) He has been injured.</p> <p>(B) He is the coach of the Regents.</p> <p>(C) He did not attend a press conference.</p> <p>(D) He plays the same position as Mr. Tabor. *</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:28:32'),
(79, 1, 4, NULL, 79, 2, 'What disadvantage does the speaker mention?', '<p>What disadvantage does the speaker mention?</p> <p>(A) A large expense</p> <p>(B) Fans’ disapproval *</p> <p>(C) A dispute with another team</p> <p>(D) Disqualification from a competition</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:28:36'),
(80, 1, 4, NULL, 80, 1, 'What is the speaker calling about?', '<p>What is the speaker calling about?</p> <p>(A) A job opening *</p> <p>(B) An upcoming event</p> <p>(C) A shared workspace</p> <p>(D) A company policy</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:29:01'),
(81, 1, 4, NULL, 81, 1, 'What does the speaker ask the listener to do?', '<p>What does the speaker ask the listener to do?</p> <p>(A) Choose among some options *</p> <p>(B) Attend a team meeting</p> <p>(C) Delay a project deadline</p> <p>(D) Clarify his previous instructions</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:29:28'),
(82, 1, 4, NULL, 82, 2, 'What does the speaker most likely mean when', '<p>What does the speaker most likely mean when she says, “Steve hasn’t taken a day off in months”?</p> <p>(A) She is impressed by Steve’s dedication.</p> <p>(B) She is emphasizing Steve’s workload. *</p> <p>(C) She is worried about a shortage of materials.</p> <p>(D) She found a mistake in some records.</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:29:52'),
(83, 1, 4, NULL, 83, 2, 'What does the speaker say about the meeting?', '<p>What does the speaker say about the meeting?</p> <p>(A) It must finish on time.</p> <p>(B) It is being conducted virtually. *</p> <p>(C) It was postponed once before.</p> <p>(D) It is for members of one department.</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:31:05'),
(84, 1, 4, NULL, 84, 4, 'What is the topic of the meeting?', '<p>What is the topic of the meeting?</p> <p>(A) Some guest complaints</p> <p>(B) Some room designs</p> <p>(C) A new hotel location</p> <p>(D) A booking system *</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:31:29'),
(85, 1, 4, NULL, 85, 3, 'What will the listeners most likely do next?', '<p>What will the listeners most likely do next?</p> <p>(A) Research some topics</p> <p>(B) Look at some photographs</p> <p>(C) Listen to a description *</p> <p>(D) Watch a demonstration</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:31:58'),
(86, 1, 4, NULL, 86, 2, 'What is the purpose of the speech?', '<p>What is the purpose of the speech?</p> <p>(A) To introduce a product</p> <p>(B) To accept an award *</p> <p>(C) To announce a job promotion</p> <p>(D) To celebrate a sales milestone</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:32:25'),
(87, 1, 4, NULL, 87, 1, 'What was a team’s goal in designing a container?', '<p>What was a team’s goal in designing a container?</p> <p>(A) To make it attractive *</p> <p>(B) To ensure its durability</p> <p>(C) To keep its production cost low</p> <p>(D) To enable people to customize it</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:32:48'),
(88, 1, 4, NULL, 88, 4, 'What does the speaker mention as a source of inspiration?', '<p>What does the speaker mention as a source of inspiration?</p> <p>(A) A nonfiction book</p> <p>(B) An organic plant</p> <p>(C) Some overseas travel</p> <p>(D) Some pieces of artwork *</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:33:12'),
(89, 1, 4, NULL, 89, 4, 'What has just taken place?', '<p>What has just taken place?</p> <p>(A) A giveaway contest</p> <p>(B) A live reading</p> <p>(C) A book review</p> <p>(D) An author interview *</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:34:02'),
(90, 1, 4, NULL, 90, 3, 'What does the speaker mean when he says we have a social media account”?', '<p>What does the speaker mean when he says “we have a social media account”?</p> <p>(A) Listeners can raise funds to support the show.</p> <p>(B) Listeners should never call the radio station.</p> <p>(C) Listeners can discuss the current episode online. *</p> <p>(D) Listeners can receive updates about the show between episodes.</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:34:06'),
(91, 1, 4, NULL, 91, 3, '(A)ccording to the speaker, what is special about next week’s episode?', '<p>According to the speaker, what is special about next week’s episode?</p> <p>(A) It may be cancelled.</p> <p>(B) It will air at a different time.</p> <p>(C) It will have a guest host. *</p> <p>(D) It will be recorded outside of the studio.</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:34:32'),
(92, 1, 4, NULL, 92, 3, 'What are the listeners training to do?', '<p>What are the listeners training to do?</p> <p>(A) Write promotional materials</p> <p>(B) Teach history classes</p> <p>(C) Give museum tours *</p> <p>(D) Manage unpaid volunteers</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:34:54'),
(93, 1, 4, NULL, 93, 4, '(A)ccording to the speaker, what should the listeners pay attention to?', '<p>According to the speaker, what should the listeners pay attention to?</p> <p>(A) The layout of a space</p> <p>(B) Some visitors’ requests</p> <p>(C) Some safety guidelines</p> <p>(D) Her communication style *</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:35:12'),
(94, 1, 4, NULL, 94, 2, 'What does the speaker ask the listeners to do?', '<p>What does the speaker ask the listeners to do?</p> <p>(A) Return a badge after the session</p> <p>(B) Take notes during a talk *</p> <p>(C) Raise their hands to ask questions</p> <p>(D) Sign an attendance sheet</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:35:32'),
(95, 1, 4, NULL, 95, 2, 'What kind of company do the listeners work for?', '<p>What kind of company do the listeners work for?</p> <p>(A) A cleaning service</p> <p>(B) A shipping business *</p> <p>(C) A construction firm</p> <p>(D) A vehicle repair shop</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:36:11'),
(96, 1, 4, NULL, 96, 3, 'What did the company do last year?', '<p>What did the company do last year?</p> <p>(A) It changed its pricing system.</p> <p>(B) It hired an external consultant.</p> <p>(C) It began using a new software program. *</p> <p>(D) It provided additional training to staff.</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:36:14'),
(97, 1, 4, NULL, 97, 4, 'Look at the graphic. What category does the speaker want to talk about next?', '<p>Look at the graphic. What category does the speaker want to talk about next?</p> <p>(A) Communication</p> <p>(B) Price</p> <p>(C) Speed</p> <p>(D) Reliability *</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:36:56'),
(98, 1, 4, NULL, 98, 4, 'What has the speaker been researching?', '<p>What has the speaker been researching?</p> <p>(A) New regulations for an industry</p> <p>(B) The needs of a certain target market</p> <p>(C) The efficiency of a [business process]*</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:46:08'),
(99, 1, 4, NULL, 99, 2, 'Look at the graphic. When does the speaker propose meeting?', '<p>Look at the graphic. When does the speaker propose meeting?</p><p>(A) At 1 P.M.</p> <p>(B) At 2 P.M. *</p> <p>(C) At 3 P.M.</p> <p>(D) At 5 P.M.</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:38:13'),
(100, 1, 4, NULL, 100, 1, 'What does the speaker offer to do?', '<p>What does the speaker offer to do?</p> <p>(A) Provide a document in advance *</p> <p>(B) Update an entry in a calendar</p> <p>(C) Talk to a department supervisor</p> <p>(D) Take over one of the listener’s tasks</p>', 1, '2023-04-10 15:51:11', '2023-04-28 16:38:33'),
(101, 2, 5, NULL, NULL, 4, 'Mr. Oh received the Silva ArchitecturalAward for his ------- design for the CollinsBuilding.', '(D) creative ', 1, '2023-04-10 15:51:11', '2023-04-28 17:04:18'),
(102, 2, 5, NULL, NULL, 4, 'Switching to LED lighting could ------- theoffice hundreds of dollars per year.', '(B) save ', 1, '2023-04-10 15:51:11', '2023-04-28 17:04:27'),
(103, 2, 5, NULL, NULL, 2, 'Ms. Ulrick has ------- transitioned into hernew role of Director of Communications', '(B) smoothly ', 1, '2023-04-10 15:51:11', '2023-04-28 17:04:40'),
(104, 2, 5, NULL, NULL, 3, 'Marathon participants have been directedto check in at the assigned location ------- 8a.m. on race day.', '(C) by', 1, '2023-04-10 15:51:11', '2023-04-28 17:04:52'),
(105, 2, 5, NULL, NULL, 3, 'The finance team has already had theirend.of.the.year lunch outing, while themarketing team has not even scheduled------- yet.', '(C) theirs', 1, '2023-04-10 15:51:11', '2023-04-28 17:04:59'),
(106, 2, 5, NULL, NULL, 4, 'Painter Zachary Waters says he was -------to grow up close to several major artmuseums. ', '(D) fortunate', 1, '2023-04-10 15:51:11', '2023-04-28 17:05:11'),
(107, 2, 5, NULL, NULL, 1, 'Members of the board ------- by thecompany’s shareholders. ', '(A) are elected ', 1, '2023-04-10 15:51:11', '2023-04-28 17:05:21'),
(108, 2, 5, NULL, NULL, 4, 'The property owner must be notified -------any renovation work can begin.', '(D) before ', 1, '2023-04-10 15:51:11', '2023-04-28 17:05:34'),
(109, 2, 5, NULL, NULL, 3, 'None of the applicants met all of our ------- for the position.', '(C) requirements ', 1, '2023-04-10 15:51:11', '2023-04-28 17:05:42'),
(110, 2, 5, NULL, NULL, 1, 'Despite the hotel association’s promotional efforts, occupancy rates are not ------- higher than they were before.', '(A) much ', 1, '2023-04-10 15:51:11', '2023-04-28 17:05:49'),
(111, 2, 5, NULL, NULL, 2, 'To minimize potential data loss, thecompany network is backed up ------- 24hours. ', '(C) less', 1, '2023-04-10 15:51:11', '2023-04-28 17:05:56'),
(112, 2, 5, NULL, NULL, 3, 'A single worker could handle the small------- of calls that we receive on aaverage day. ', '(C) volume ', 1, '2023-04-10 15:51:11', '2023-04-28 17:06:03'),
(113, 2, 5, NULL, NULL, 1, 'The ------- of paper currency in mostcountries now involves special securityinks.', '(A) production ', 1, '2023-04-10 15:51:11', '2023-04-28 17:06:09'),
(114, 2, 5, NULL, NULL, 3, 'The current draft of the conferenceprogram does not specify ------- to contactfor questions. ', '(C) whom ', 1, '2023-04-10 15:51:11', '2023-04-28 17:06:22'),
(115, 2, 5, NULL, NULL, 1, 'Sturm Telecom guarantees excellentmobile phone service ------- WesternEurope. ', '(A) throughout ', 1, '2023-04-10 15:51:11', '2023-04-28 17:06:31'),
(116, 2, 5, NULL, NULL, 3, 'Even if the problem seems simple,attempting to repair your air conditioningunit yourself is not -------. ', '(C) recommended ', 1, '2023-04-10 15:51:11', '2023-04-28 17:06:38'),
(117, 2, 5, NULL, NULL, 4, 'Mayor Suzuki ------- her reelection to thepopularity of her affordable housinginitiative. ', '(D) attributed', 1, '2023-04-10 15:51:11', '2023-04-28 17:06:51'),
(118, 2, 5, NULL, NULL, 2, '------- a dedicated graphic designer hasbeen added to the staff, Eric will have moretime for higher.level branding work. ', '(B) Now that', 1, '2023-04-10 15:51:11', '2023-04-28 17:06:59'),
(119, 2, 5, NULL, NULL, 3, 'The disposal of industrial waste in VenablePond decades ago resulted in -------damage to its ecosystem.', '(C) lasting ', 1, '2023-04-10 15:51:11', '2023-04-28 17:07:10'),
(120, 2, 5, NULL, NULL, 3, 'Winterly Football Club hired Matteo Rossias its manager because of his ------- foreffective recruiting of new players.', '(C) reputation ', 1, '2023-04-10 15:51:11', '2023-04-28 17:07:52'),
(121, 2, 5, NULL, NULL, 2, 'Failing to follow proper complaint -------may result in a delay in addressing yourconcerns', '(B) procedures', 1, '2023-04-10 15:51:11', '2023-04-28 17:08:02'),
(122, 2, 5, NULL, NULL, 4, '. Media usage statistics show that peopleunder the age of 45 are ------- less likely tosubscribe to print publications.', '(D) markedly ', 1, '2023-04-10 15:51:11', '2023-04-28 17:08:10'),
(123, 2, 5, NULL, NULL, 4, '------- the most interesting of the questionssubmitted by the audience will be posed tothe panel.', '(D) Only ', 1, '2023-04-10 15:51:11', '2023-04-28 17:08:17'),
(124, 2, 5, NULL, NULL, 2, 'Labeling Machine 1 is ------- in need ofreplacement, so money should bebudgeted for this purpose. ', '(B) critically ', 1, '2023-04-10 15:51:11', '2023-04-28 17:08:27'),
(125, 2, 5, NULL, NULL, 3, 'Brant Motors’ southern division hasstruggled to provide sufficient customersupport to all parts of its ------- territory. ', '(C) vast ', 1, '2023-04-10 15:51:11', '2023-04-28 17:08:34'),
(126, 2, 5, NULL, NULL, 1, 'A unique feature of Milburn Footwear’sSwoop sneakers is that one shoe in thepair has a slightly different design from-------.', '(A) the other ', 1, '2023-04-10 15:51:11', '2023-04-28 17:08:41'),
(127, 2, 5, NULL, NULL, 1, 'The purpose of the upcoming projectmeeting is to make sure that the goals of allof the stakeholders are -------.', '(A) aligned ', 1, '2023-04-10 15:51:11', '2023-04-28 17:08:49'),
(128, 2, 5, NULL, NULL, 2, 'Event rules require that identificationbadges ------- at all times on the expositionfloor. ', '(C) be worn ', 1, '2023-04-10 15:51:11', '2023-04-28 17:08:55'),
(129, 2, 5, NULL, NULL, 3, 'Jamal has confirmed that the roads on thedriving route are sturdy ------- to handle theenormous weight of the truck.', '(D) enough ', 1, '2023-04-10 15:51:11', '2023-04-28 17:09:02'),
(130, 2, 5, NULL, NULL, 2, 'Isabelle Greco’s later albums arecharacterized by the ------- of everydaynoises, such as a telephone’s ringtone, intothe music. ', '(B) incorporation ', 1, '2023-04-10 15:51:11', '2023-05-02 21:51:52'),
(131, 2, 6, 1, NULL, 2, '  ', '(B) indicate', 1, '2023-04-10 15:51:11', '2023-05-02 21:52:42'),
(132, 2, 6, 1, NULL, 3, '  ', '(C) reliable', 1, '2023-04-10 15:51:11', '2023-05-02 21:52:53'),
(133, 2, 6, 1, NULL, 1, '  ', '(A) Instead', 1, '2023-04-10 15:51:11', '2023-05-02 21:53:07'),
(134, 2, 6, 1, NULL, 3, '  ', '(C) I’ve compiled a few options in the attached file', 1, '2023-04-10 15:51:11', '2023-05-02 21:53:10'),
(135, 2, 6, 2, NULL, 4, '  ', '(D) who graduated ', 1, '2023-04-10 15:51:11', '2023-05-02 21:53:45'),
(136, 2, 6, 2, NULL, 1, '  ', '(A) Posts on other topics may be removed.', 1, '2023-04-10 15:51:11', '2023-05-02 22:05:17'),
(137, 2, 6, 2, NULL, 2, '  ', '(B) public', 1, '2023-04-10 15:51:11', '2023-05-02 21:54:05'),
(138, 2, 6, 2, NULL, 2, '  ', '(B) button ', 1, '2023-04-10 15:51:11', '2023-05-02 21:54:27'),
(139, 2, 6, 3, NULL, 4, '  ', '(D) energy ', 1, '2023-04-10 15:51:11', '2023-05-02 21:55:48'),
(140, 2, 6, 3, NULL, 1, '  ', '(A) to join ', 1, '2023-04-10 15:51:11', '2023-05-02 21:56:00'),
(141, 2, 6, 3, NULL, 2, '  ', '(B) She finds many of them herself during visits to Bratcher Beach.', 1, '2023-04-10 15:51:11', '2023-05-02 21:56:12'),
(142, 2, 6, 3, NULL, 3, '  ', '(C) will want', 1, '2023-04-10 15:51:11', '2023-05-02 21:56:15'),
(143, 2, 6, 4, NULL, 1, '  ', '(A) will be transferred ', 1, '2023-04-10 15:51:11', '2023-05-02 21:56:40'),
(144, 2, 6, 4, NULL, 2, '  ', '(B) elsewhere ', 1, '2023-04-10 15:51:11', '2023-05-02 21:56:51'),
(145, 2, 6, 4, NULL, 3, '  ', '(C) This can be done through your online account or in person at any branch. ', 1, '2023-04-10 15:51:11', '2023-05-02 21:57:02'),
(146, 2, 6, 4, NULL, 4, '  ', '(D) similarly', 1, '2023-04-10 15:51:11', '2023-05-02 21:57:05'),
(147, 2, 7, 5, NULL, 1, ' For whom are the instructions intended? ', '(A) Potential toy donors', 1, '2023-04-10 15:51:11', '2023-05-02 22:06:40'),
(148, 2, 7, 5, NULL, 3, 'What is indicated about Jeongwon ToyNetwork?', '(C) It is an official charitable organization. ', 1, '2023-04-10 15:51:11', '2023-05-02 22:06:43'),
(149, 2, 7, 6, NULL, 2, 'Where would the notice most likely befound?', '(B) On a structure at a bus stop', 1, '2023-04-10 15:51:11', '2023-05-02 22:07:08'),
(150, 2, 7, 6, NULL, 4, 'Why has the bus route been changed?', '(D) To make an intersection safer for the public ', 1, '2023-04-10 15:51:11', '2023-05-02 22:07:27'),
(151, 2, 7, 7, NULL, 3, 'At 2:42 p.m., what does Mr. Hathaway mostlikely mean when he writes,', '(C) He does not want to work again tonight.', 1, '2023-04-10 15:51:11', '2023-05-02 22:07:36'),
(152, 2, 7, 7, NULL, 1, 'What industry do the writers most likelywork in?', '(A) Hospitality', 1, '2023-04-10 15:51:11', '2023-05-02 22:07:40'),
(153, 2, 7, 8, NULL, 4, 'What is the main purpose of the e.mail?', '(D) To answer a coworker’s inquiry ', 1, '2023-04-10 15:51:11', '2023-05-02 22:08:08'),
(154, 2, 7, 8, NULL, 3, 'What is Ms. Black most likely doincurrently?', '(C) Choosing between two types of employee perks', 1, '2023-04-10 15:51:11', '2023-05-02 22:08:25'),
(155, 2, 7, 9, NULL, 3, '. What is indicated about the BiomedicalEngineer job?', '(C) It involves making weekly reports.', 1, '2023-04-10 15:51:11', '2023-05-02 22:08:34'),
(156, 2, 7, 9, NULL, 3, 'What is NOT listed as a requirement for theposition?', '(C) A background in managing staff members', 1, '2023-04-10 15:51:11', '2023-05-02 22:08:43'),
(157, 2, 7, 9, NULL, 3, 'When most likely will the first interview forthe position take place?', '(C) On December 15', 1, '2023-04-10 15:51:11', '2023-05-02 22:08:47'),
(158, 2, 7, 10, NULL, 4, '. What is most likely a feature of the storageunits?', '(D) Their contents are visible to passersby. ', 1, '2023-04-10 15:51:11', '2023-05-02 22:09:08'),
(159, 2, 7, 10, NULL, 3, 'What is mentioned as a requirement forobtaining a storage unit?', '(C) Showing insurance coverage for it', 1, '2023-04-10 15:51:11', '2023-05-02 22:09:17'),
(160, 2, 7, 10, NULL, 2, 'What is implied about the Bair Apartmentsbuilding?', '(B) It has fewer than 32 residences.', 1, '2023-04-10 15:51:11', '2023-05-02 22:09:20'),
(161, 2, 7, 11, NULL, 1, 'Why was the letter sent to Mr. Serrano?', '(A) To inform him of his acceptance to a program ', 1, '2023-04-10 15:51:11', '2023-05-02 22:09:43'),
(162, 2, 7, 11, NULL, 2, 'What is indicated about Mr. Serrano?', '(B) He has a lot of experience in his field.', 1, '2023-04-10 15:51:11', '2023-05-02 22:09:52'),
(163, 2, 7, 11, NULL, 3, '. In which of the positions marked [1], [2], [3],and [4] does the following sentence bestbelong? ', '(C) [3]', 1, '2023-04-10 15:51:11', '2023-05-02 22:10:13'),
(164, 2, 7, 12, NULL, 4, 'What is the topic of the exhibit beingannounced?', '(D) The history of a local industry ', 1, '2023-04-10 15:51:11', '2023-05-02 22:10:21'),
(165, 2, 7, 12, NULL, 1, 'In paragraph 2, line 5, the word “figures” isclosest in meaning to', '(A) people ', 1, '2023-04-10 15:51:11', '2023-05-02 22:10:31'),
(166, 2, 7, 12, NULL, 2, 'How is the Byerst Historical Societyassisting with the exhibit?', '(B) By permitting temporary use of some items', 1, '2023-04-10 15:51:11', '2023-05-02 22:10:39'),
(167, 2, 7, 12, NULL, 2, '. What is true about admission to thmuseum?', '(B) It is free for museum members. ', 1, '2023-04-10 15:51:11', '2023-05-02 22:10:42'),
(168, 2, 7, 13, NULL, 2, 'Who most likely is Mr. Powell?', '(B) An administrative assistant', 1, '2023-04-10 15:51:11', '2023-05-02 22:11:07'),
(169, 2, 7, 13, NULL, 3, 'What do the writers NOT suggest they willdo during the trade show?', '(C) Post updates on a social media site', 1, '2023-04-10 15:51:11', '2023-05-02 22:11:15'),
(170, 2, 7, 13, NULL, 1, 'At 2:07 p.m., what does Ms. Gray mostlikely mean when she writes, “I have sometime tomorrow morning”?', '(A) She is willing to have a conversation with Ms. Abbar. ', 1, '2023-04-10 15:51:11', '2023-05-02 22:11:24'),
(171, 2, 7, 13, NULL, 3, '. What is implied about the writers’company?', '(C) It has attended the trade show before. ', 1, '2023-04-10 15:51:11', '2023-05-02 22:11:27'),
(172, 2, 7, 14, NULL, 1, 'According to the article, how has thfashion industry changed?', '(A) Its output has greatly increased. ', 1, '2023-04-10 15:51:11', '2023-05-02 22:11:58'),
(173, 2, 7, 14, NULL, 4, '. What is EverFabric’s advantage over othertextile recyclers?', '(D) It produces better materials ', 1, '2023-04-10 15:51:11', '2023-05-02 22:12:07'),
(174, 2, 7, 14, NULL, 3, ' What kind of organization does MartzFootwear have a partnership with? ', '(C) A shipping company ', 1, '2023-04-10 15:51:11', '2023-05-02 22:12:16'),
(175, 2, 7, 14, NULL, 4, 'In which of the positions marked [1], [2], [3],and [4] does the following sentence bestbelong?“First, they are intended to be durable andeasy to clean so that they can be used fora long time.”', '(D) [4]', 1, '2023-04-10 15:51:11', '2023-05-02 22:12:19'),
(176, 2, 7, 15, NULL, 4, 'According to the memo, why has a changebeen made?', '(D) Because of a newly created law', 1, '2023-04-10 15:51:11', '2023-05-02 22:12:54'),
(177, 2, 7, 15, NULL, 1, 'What is suggested about GarmonInsurance?', '(A) It has offices in multiple states. ', 1, '2023-04-10 15:51:11', '2023-05-02 22:13:02'),
(178, 2, 7, 15, NULL, 2, 'Which guideline was most likely updatedshortly after the memo was sent?', '(B) 5', 1, '2023-04-10 15:51:11', '2023-05-02 22:13:10'),
(179, 2, 7, 15, NULL, 4, 'What is included in the appendices to theguidelines?', '(D) An example of a listing for a vacant position', 1, '2023-04-10 15:51:11', '2023-05-02 22:13:17'),
(180, 2, 7, 15, NULL, 3, 'What is indicated about applicants whoattend interviews?', '(C) They should be notified when the hiring process ends. ', 1, '2023-04-10 15:51:11', '2023-05-02 22:13:20'),
(181, 2, 7, 16, NULL, 2, 'What is mentioned about Grell StreeStudio?', '(B) Its facilities were recently updated. ', 1, '2023-04-10 15:51:11', '2023-05-02 22:13:51'),
(182, 2, 7, 16, NULL, 2, 'What does Grell Street Studio most likelyNOT charge extra for?', '(B) Playing its guitars on an album', 1, '2023-04-10 15:51:11', '2023-05-02 22:13:58'),
(183, 2, 7, 16, NULL, 4, 'In the e.mail, the word “chance” inparagraph 1, line 2, is closest in meaning to', '(D) opportunity', 1, '2023-04-10 15:51:11', '2023-05-02 22:14:05'),
(184, 2, 7, 16, NULL, 1, ' What hourly rate does Ms. Schwartz offerto Mr. Huff?', '(A) $45 AUD', 1, '2023-04-10 15:51:11', '2023-05-02 22:14:12'),
(185, 2, 7, 16, NULL, 1, '. What does the e.mail indicate aboutMr. Huff?', '(A) He does not intend to record music.', 1, '2023-04-10 15:51:11', '2023-05-02 22:14:32'),
(186, 2, 7, 17, NULL, 2, 'According to the notice, what can recipientsexpress a preference about?', '(B) A date', 1, '2023-04-10 15:51:11', '2023-05-02 22:14:39'),
(187, 2, 7, 17, NULL, 1, 'What is most likely true about somerecipients of the notice?', '(A) They practiced using tablet devices.', 1, '2023-04-10 15:51:11', '2023-05-02 22:14:48'),
(188, 2, 7, 17, NULL, 3, 'What happened at the press conference?', '(C) A visual display was presented. ', 1, '2023-04-10 15:51:11', '2023-05-02 22:14:56'),
(189, 2, 7, 17, NULL, 3, 'Whose division will probably handle thework order?', '(C) Ms. Kim’s ', 1, '2023-04-10 15:51:11', '2023-05-02 22:15:03'),
(190, 2, 7, 17, NULL, 4, 'What does Mr. Saunders suggest caused aproblem?', '(D) Extreme weather', 1, '2023-04-10 15:51:11', '2023-05-02 22:15:30'),
(191, 2, 7, 18, NULL, 4, 'What is true about Palm Hills Tours?', '(D) Some of its tours are not listed on the Web page. ', 1, '2023-04-10 15:51:11', '2023-05-02 22:15:38'),
(192, 2, 7, 18, NULL, 2, 'What did Mr. Beck most likely do on his firsttour?', '(B) Listen to some recordings', 1, '2023-04-10 15:51:11', '2023-05-02 22:15:46'),
(193, 2, 7, 18, NULL, 1, 'According to the e.mail, what was Mr. Beckrequired to do by February 1 ?', '(A) Submit his payment in full', 1, '2023-04-10 15:51:11', '2023-05-02 22:15:55'),
(194, 2, 7, 18, NULL, 3, 'In the review, the word “passes” inparagraph 1, line 1, is closest in meaning to', '(C) moves past', 1, '2023-04-10 15:51:11', '2023-05-02 22:16:05'),
(195, 2, 7, 18, NULL, 3, '. Based on the review, why might Mr. Beckhave preferred the Celebrity Tour?', '(C) Because it is physically easier', 1, '2023-04-10 15:51:11', '2023-05-02 22:16:07'),
(196, 2, 7, 19, NULL, 3, 'What is stated in the e.mail about thesurveys?', '(C) Responses to them will be made anonymous. ', 1, '2023-04-10 15:51:11', '2023-05-02 22:16:35'),
(197, 2, 7, 19, NULL, 2, 'Why does Ms. Fisk want to know what is inthe cafeteria food?', '(B) To prevent an allergic reaction', 1, '2023-04-10 15:51:11', '2023-05-02 22:16:44'),
(198, 2, 7, 19, NULL, 1, 'What is most likely true about Ms. Tanaka?', '(A) She is Mr. Bowman’s superior. ', 1, '2023-04-10 15:51:11', '2023-05-02 22:16:52'),
(199, 2, 7, 19, NULL, 2, 'According to the newsletter article, whatwill Moffing Group continue to do?', '(B) Maintain fair meal costs for workers', 1, '2023-04-10 15:51:11', '2023-05-02 22:16:58'),
(200, 2, 7, 19, NULL, 3, 'Which characteristic of food mentioned newsletter article?', '(C) Its portion sizes', 1, '2023-04-10 15:51:11', '2023-05-02 22:17:01'),
(301, 1, 11, NULL, 101, 1, '', '(A)', 1, '2023-04-10 15:51:11', '2023-04-28 16:41:50'),
(302, 1, 11, NULL, 102, 2, '', '(B)', 1, '2023-04-10 15:51:11', '2023-04-28 16:41:55'),
(303, 1, 11, NULL, 103, 4, '', '(D)', 1, '2023-04-10 15:51:11', '2023-04-28 16:41:59'),
(304, 1, 11, NULL, 104, 4, '', '(D)', 1, '2023-04-10 15:51:11', '2023-04-28 16:42:05'),
(305, 1, 11, NULL, 105, 3, '', '(C)', 1, '2023-04-10 15:51:11', '2023-04-28 16:42:10'),
(306, 1, 11, NULL, 106, 1, '', '(A)', 1, '2023-04-10 15:51:11', '2023-04-28 16:42:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `question_answer`
--

CREATE TABLE `question_answer` (
  `id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `question_answer`
--

INSERT INTO `question_answer` (`id`, `question_id`, `type`, `text`) VALUES
(1, 1, 1, '(A)'),
(2, 1, 1, '(B)'),
(3, 1, 1, '(C)'),
(4, 1, 1, '(D)'),
(5, 2, 1, '(A)'),
(6, 2, 1, '(B)'),
(7, 2, 1, '(C)'),
(8, 2, 1, '(D)'),
(9, 3, 1, '(A)'),
(10, 3, 1, '(B)'),
(11, 3, 1, '(C)'),
(12, 3, 1, '(D)'),
(13, 4, 1, '(A)'),
(14, 4, 1, '(B)'),
(15, 4, 1, '(C)'),
(16, 4, 1, '(D)'),
(17, 5, 1, '(A)'),
(18, 5, 1, '(B)'),
(19, 5, 1, '(C)'),
(20, 5, 1, '(D)'),
(21, 6, 1, '(A)'),
(22, 6, 1, '(B)'),
(23, 6, 1, '(C)'),
(24, 6, 1, '(D)'),
(25, 7, 1, '(A)'),
(26, 7, 1, '(B)'),
(27, 7, 1, '(C)'),
(29, 8, 1, '(A)'),
(30, 8, 1, '(B)'),
(31, 8, 1, '(C)'),
(33, 9, 1, '(A)'),
(34, 9, 1, '(B)'),
(35, 9, 1, '(C)'),
(37, 10, 1, '(A)'),
(38, 10, 1, '(B)'),
(39, 10, 1, '(C)'),
(41, 11, 1, '(A)'),
(42, 11, 1, '(B)'),
(43, 11, 1, '(C)'),
(45, 12, 1, '(A)'),
(46, 12, 1, '(B)'),
(47, 12, 1, '(C)'),
(49, 13, 1, '(A)'),
(50, 13, 1, '(B)'),
(51, 13, 1, '(C)'),
(53, 14, 1, '(A)'),
(54, 14, 1, '(B)'),
(55, 14, 1, '(C)'),
(57, 15, 1, '(A)'),
(58, 15, 1, '(B)'),
(59, 15, 1, '(C)'),
(61, 16, 1, '(A)'),
(62, 16, 1, '(B)'),
(63, 16, 1, '(C)'),
(65, 17, 1, '(A)'),
(66, 17, 1, '(B)'),
(67, 17, 1, '(C)'),
(69, 18, 1, '(A)'),
(70, 18, 1, '(B)'),
(71, 18, 1, '(C)'),
(73, 19, 1, '(A)'),
(74, 19, 1, '(B)'),
(75, 19, 1, '(C)'),
(77, 20, 1, '(A)'),
(78, 20, 1, '(B)'),
(79, 20, 1, '(C)'),
(81, 21, 1, '(A)'),
(82, 21, 1, '(B)'),
(83, 21, 1, '(C)'),
(85, 22, 1, '(A)'),
(86, 22, 1, '(B)'),
(87, 22, 1, '(C)'),
(89, 23, 1, '(A)'),
(90, 23, 1, '(B)'),
(91, 23, 1, '(C)'),
(93, 24, 1, '(A)'),
(94, 24, 1, '(B)'),
(95, 24, 1, '(C)'),
(97, 25, 1, '(A)'),
(98, 25, 1, '(B)'),
(99, 25, 1, '(C)'),
(101, 26, 1, '(A)'),
(102, 26, 1, '(B)'),
(103, 26, 1, '(C)'),
(105, 27, 1, '(A)'),
(106, 27, 1, '(B)'),
(107, 27, 1, '(C)'),
(109, 28, 1, '(A)'),
(110, 28, 1, '(B)'),
(111, 28, 1, '(C)'),
(113, 29, 1, '(A)'),
(114, 29, 1, '(B)'),
(115, 29, 1, '(C)'),
(117, 30, 1, '(A)'),
(118, 30, 1, '(B)'),
(119, 30, 1, '(C)'),
(121, 31, 1, '(A)'),
(122, 31, 1, '(B)'),
(123, 31, 1, '(C)'),
(125, 32, 1, '(A) At a concert hall'),
(126, 32, 1, '(B) At a movie theater'),
(127, 32, 1, '(C) At an amusement park'),
(128, 32, 1, '(D) At an Internet café '),
(129, 33, 1, '(A) A screen is malfunctioning'),
(130, 33, 1, '(B) Other patrons are being loud'),
(131, 33, 1, '(C) Some lights have been left on'),
(132, 33, 1, '(D) A seating area is not clean.'),
(133, 34, 1, '(A) Tell a coworker'),
(134, 34, 1, '(B) Adjust some equipment'),
(135, 34, 1, '(C) Follow the woman'),
(136, 34, 1, '(D) Issue a refund'),
(137, 35, 1, '(A) A credit card'),
(138, 35, 1, '(B) A bank statement'),
(139, 35, 1, '(C) A An e.mail notice'),
(140, 35, 1, '(D) A program brochure'),
(141, 36, 1, '(A) To reduce waste'),
(142, 36, 1, '(B) To speed up a process'),
(143, 36, 1, '(C) To comply with a new law'),
(144, 36, 1, '(D) To improve security'),
(145, 37, 1, '(A) Investigate some account activity'),
(146, 37, 1, '(B) Provide a Web address'),
(147, 37, 1, '(C) Transfer the man’s call'),
(148, 37, 1, '(D) Set up an in.person visit'),
(149, 38, 1, '(A) To report a problem'),
(150, 38, 1, '(B) To confirm a schedule'),
(151, 38, 1, '(C) To get feedback on an idea'),
(152, 38, 1, '(D) ) To fulfill a request for information'),
(153, 39, 1, '(A) The woman should correct a\r\nmisunderstanding.'),
(154, 39, 1, '(B) The woman probably understands a\r\ndifficulty'),
(155, 39, 1, '(C) The woman has been busy lately.'),
(156, 39, 1, '(D) The woman is qualified for a task.'),
(157, 40, 1, '(A) Arrange a meeting'),
(158, 40, 1, '(B) Look at some records'),
(159, 40, 1, '(C) Draft a document '),
(160, 40, 1, '(D) Wait for an announcement'),
(161, 41, 1, '(A) A manager will resign.'),
(162, 41, 1, '(B) Some inventory will be checked.'),
(163, 41, 1, '(C) A community event will take place.'),
(164, 41, 1, '(D) A competing café will open nearby'),
(165, 42, 1, '(A) Learn a new process'),
(166, 42, 1, '(B) Work additional hours'),
(167, 42, 1, '(C) Follow a rule more carefully'),
(168, 42, 1, '(D) Make some suggestions'),
(169, 43, 1, '(A) A day off'),
(170, 43, 1, '(B) Some training'),
(171, 43, 1, '(C) Details about a plan'),
(172, 43, 1, '(D) Some reimbursement'),
(173, 44, 1, '(A) He was setting up a booth.'),
(174, 44, 1, '(B) He was attending a workshop'),
(175, 44, 1, '(C) He was walking around a trade fair.'),
(176, 44, 1, '(D) He was completing a registration\r\nprocess.'),
(177, 45, 1, '(A) A train has been delayed. '),
(178, 45, 1, '(B) She cannot find a file'),
(179, 45, 1, '(C) An area has heavy traffic'),
(180, 45, 1, '(D) She misunderstood a schedule'),
(181, 46, 1, '(A) Send out a group e.mail'),
(182, 46, 1, '(B) Collect samples from exhibitors'),
(183, 46, 1, '(C) Give the woman a ride to a venue'),
(184, 46, 1, '(D) Make a presentation to potential clients'),
(185, 47, 1, '(A) Buying supplies for a farm'),
(186, 47, 1, '(B) Inspecting a storage facility'),
(187, 47, 1, '(C) Creating a community garden'),
(188, 47, 1, '(D) Conducting scientific experiments'),
(189, 48, 1, '(A) Plant some seeds'),
(190, 48, 1, '(B) Accept a delivery'),
(191, 48, 1, '(C) Take some measurements'),
(192, 48, 1, '(D) Move some boxes'),
(193, 49, 1, '(A) A travel itinerary'),
(194, 49, 1, '(B) A set of instructions'),
(195, 49, 1, '(C) A property map'),
(196, 49, 1, '(D) A keycard'),
(197, 50, 1, '(A) A library patron'),
(198, 50, 1, '(B) A potential donor'),
(199, 50, 1, '(C) An invited speaker'),
(200, 50, 1, '(D) A job candidate'),
(201, 51, 1, '(A) She will wait for him to return.'),
(202, 51, 1, '(B) She exchanged e.mails with him.'),
(203, 51, 1, '(C) She has not seen him for a long time'),
(204, 51, 1, '(D) She has read some of his short stories'),
(205, 52, 1, '(A) Store some of her outerwear'),
(206, 52, 1, '(B) Write down her message'),
(207, 52, 1, '(C) Serve her a beverage'),
(208, 52, 1, '(D) Accompany her to an office'),
(209, 53, 1, '(A) A company Web site'),
(210, 53, 1, '(B) Some revisions to a budget'),
(211, 53, 1, '(C) Some survey results'),
(212, 53, 1, '(D) An increase in sales'),
(213, 54, 1, '(A) Form a project team'),
(214, 54, 1, '(B) Complete a purchase'),
(215, 54, 1, '(C) Make an announcement'),
(216, 54, 1, '(D) Extend a deadline'),
(217, 55, 1, '(A) A report is well.organized.'),
(218, 55, 1, '(B) A prediction was accurate'),
(219, 55, 1, '(C) An assignment was finished quickly'),
(220, 55, 1, '(D) A conflict was resolved smoothly'),
(221, 56, 1, '(A) A real estate agent'),
(222, 56, 1, '(B) A repair technician'),
(223, 56, 1, '(C) A property owner'),
(224, 56, 1, '(D) A cleaning supervisor'),
(225, 57, 1, '(A) He will not be inconvenienced by some\r\nactivity'),
(226, 57, 1, '(B) He will be unable to meet with the\r\nwoman.'),
(227, 57, 1, '(C) He needs the woman’s assistance with a\r\ntask.'),
(228, 57, 1, '(D) He prefers to schedule appointments on\r\nweekends.'),
(229, 58, 1, '(A) Bring a special tool'),
(230, 58, 1, '(B) Keep a space clean'),
(231, 58, 1, '(C) Research some options '),
(232, 58, 1, '(D) Give the man a notification'),
(233, 59, 1, '(A) To respond to a contact request'),
(234, 59, 1, '(B) To provide an update on a project'),
(235, 59, 1, '(C) To respond to a party invitation'),
(236, 59, 1, '(D) To apologize for an inconvenience'),
(237, 60, 1, '(A) Event planning'),
(238, 60, 1, '(B) Technology'),
(239, 60, 1, '(C) Recruiting'),
(240, 60, 1, '(D) Marketing'),
(241, 61, 1, '(A) Download a mobile app'),
(242, 61, 1, '(B) Give information about a business'),
(243, 61, 1, '(C) Suggest an appointment time'),
(244, 61, 1, '(D) Review a proposal'),
(245, 62, 1, '(A) Visiting the airport previously'),
(246, 62, 1, '(B) Receiving a text message'),
(247, 62, 1, '(C) Checking a Web page'),
(248, 62, 1, '(D) Speaking with a colleague'),
(249, 63, 1, '(A) Exit 1'),
(250, 63, 1, '(B) Exit 2'),
(251, 63, 1, '(C) Exit 3'),
(252, 63, 1, '(D) Exit 4'),
(253, 64, 1, '(A) Her travel schedule'),
(254, 64, 1, '(B) Her physical appearance'),
(255, 64, 1, '(C) Her amount of luggage'),
(256, 64, 1, '(D) Her current location'),
(257, 65, 1, '(A) A furniture store salesclerk'),
(258, 65, 1, '(B) A government official'),
(259, 65, 1, '(C) A clinic supervisor'),
(260, 65, 1, '(D) A landscaping contractor'),
(261, 66, 1, '(A) At Location 1'),
(262, 66, 1, '(B) At Location 2'),
(263, 66, 1, '(C) At Location 3'),
(264, 66, 1, '(D) At Location 4'),
(265, 67, 1, '(A) It should be attached to the ground.'),
(266, 67, 1, '(B) It must be made of a certain material.'),
(267, 67, 1, '(C) It is intended for employees’ use.'),
(268, 67, 1, '(D) It will match the design of a building.'),
(269, 68, 1, '(A) A pair of gloves'),
(270, 68, 1, '(B) A scarf'),
(271, 68, 1, '(C) A pair of lined jeans'),
(272, 68, 1, '(D) A sweater'),
(273, 69, 1, '(A) Returning a purchase'),
(274, 69, 1, '(B) Using a fitting room'),
(275, 69, 1, '(C) Washing an item'),
(276, 69, 1, '(D) Choosing a payment method'),
(277, 70, 1, '(A) An online store will open.'),
(278, 70, 1, '(B) Renovations will be completed.'),
(279, 70, 1, '(C) A loyalty program will change.'),
(280, 70, 1, '(D) New stock will arrive.'),
(281, 70, 1, '(D) Wait for an announcement'),
(282, 71, 1, '(A) In a factory'),
(283, 71, 1, '(B) In a train station'),
(284, 71, 1, '(C) In a fitness center'),
(285, 71, 1, '(D) In a supermarket'),
(286, 72, 1, '(A) Where to wait'),
(287, 72, 1, '(B) Whom to give an item to'),
(288, 72, 1, '(C) When an activity can be resumed'),
(289, 72, 1, '(D) How to ask for assistance'),
(290, 73, 1, '(A) Leaving belongings behind'),
(291, 73, 1, '(B) Making too much noise'),
(292, 73, 1, '(C) Ending a working period'),
(293, 73, 1, '(D) Passing through an outdoor area'),
(294, 74, 1, '(A) A company outing'),
(295, 74, 1, '(B) A community festiva'),
(296, 74, 1, '(C) A charity fund.raiser'),
(297, 74, 1, '(D) A grand opening'),
(298, 75, 1, '(A) Make some purchases'),
(299, 75, 1, '(B) Have a meal'),
(300, 75, 1, '(C) Take some pictures'),
(301, 75, 1, '(D) Plant some trees'),
(302, 76, 1, '(A) To express her discomfort'),
(303, 76, 1, '(B) To explain her concern for others'),
(304, 76, 1, '(C) To justify a change to a plan '),
(305, 76, 1, '(D) (D) To praise some event workers'),
(306, 77, 1, '(A) Change their mascot'),
(307, 77, 1, '(B) Move to another city'),
(308, 77, 1, '(C) Let a player go'),
(309, 77, 1, '(D) Cancel a game'),
(310, 78, 1, '(A) He has been injured.'),
(311, 78, 1, '(B) He is the coach of the Regents.'),
(312, 78, 1, '(C) He did not attend a press conference.'),
(313, 78, 1, '(D) He plays the same position as Mr. Tabor'),
(314, 79, 1, '(A) A large expense'),
(315, 79, 1, '(B) Fans’ disapprova'),
(316, 79, 1, '(C) A dispute with another team'),
(317, 79, 1, '(D) Disqualification from a competition '),
(318, 80, 1, '(A) A job opening'),
(319, 80, 1, '(B) An upcoming event '),
(320, 80, 1, '(C) A shared workspace'),
(321, 80, 1, '(D) A company policy'),
(322, 81, 1, '(A) Choose among some options'),
(323, 81, 1, '(B) Attend a team meeting'),
(324, 81, 1, '(C) Delay a project deadline'),
(325, 81, 1, '(D) Clarify his previous instructions'),
(326, 82, 1, '(A) She is impressed by Steve’s dedication.'),
(327, 82, 1, '(B) She is emphasizing Steve’s workload.'),
(328, 82, 1, '(C) She is worried about a shortage of materials.'),
(329, 82, 1, '(D) She found a mistake in some records.'),
(330, 83, 1, '(A) It must finish on time'),
(331, 83, 1, '(B) It is being conducted virtually'),
(332, 83, 1, '(C) It was postponed once before.'),
(333, 83, 1, '(D) It is for members of one department.'),
(334, 84, 1, '(A) Some guest complaints'),
(335, 84, 1, '(B) Some room designs'),
(336, 84, 1, '(C) A new hotel location'),
(337, 84, 1, '(D) A booking system'),
(338, 85, 1, '(A) Research some topics '),
(339, 85, 1, '(B) Look at some photographs'),
(340, 85, 1, '(C) Listen to a description'),
(341, 85, 1, '(D) Watch a demonstration'),
(342, 86, 1, '(A) To introduce a product'),
(343, 86, 1, '(B) To accept an award'),
(344, 86, 1, '(C) To announce a job promotion'),
(345, 86, 1, '(D) To celebrate a sales milestone'),
(346, 87, 1, '(A) To make it attractive'),
(347, 87, 1, '(B) To ensure its durability'),
(348, 87, 1, '(C) To keep its production cost low'),
(349, 87, 1, '(D) To enable people to customize it'),
(350, 88, 1, '(A) A nonfiction book'),
(351, 88, 1, '(B) An organic plant'),
(352, 88, 1, '(C) Some overseas trave '),
(353, 88, 1, '(D) Some pieces of artwork'),
(354, 89, 1, '(A) A giveaway contest'),
(355, 89, 1, '(B) A live reading'),
(356, 89, 1, '(C) A book review'),
(357, 89, 1, '(D) An author interview'),
(358, 90, 1, '(A) Listeners can raise funds to support the\r\nshow. '),
(359, 90, 1, '(B) Listeners should never call the radio\r\nstation.'),
(360, 90, 1, '(C) Listeners can discuss the current\r\nepisode online.'),
(361, 90, 1, '(D) Listeners can receive updates about the\r\nshow between episodes.'),
(362, 91, 1, '(A) It may be cancelled.'),
(363, 91, 1, '(B) It will air at a different time'),
(364, 91, 1, '(C) Give museum tours'),
(365, 91, 1, '(D) Manage unpaid volunteers'),
(366, 92, 1, '(A) The layout of a space'),
(367, 92, 1, '(B) Teach history classes'),
(368, 92, 1, '(C) Give museum tours'),
(369, 92, 1, '(D) Manage unpaid volunteers'),
(370, 93, 1, '(A) The layout of a space'),
(371, 93, 1, '(B) Some visitors’ requests'),
(372, 93, 1, '(C) Some safety guidelines'),
(373, 93, 1, '(D) Her communication style'),
(374, 94, 1, '(A) Return a badge after the session'),
(375, 94, 1, '(B) Take notes during a talk'),
(376, 94, 1, '(C) Raise their hands to ask questions'),
(377, 94, 1, '(D) Sign an attendance sheet'),
(378, 95, 1, '(A) A cleaning service'),
(379, 95, 1, '(B) A shipping business'),
(380, 95, 1, '(C) A construction firm'),
(381, 95, 1, '(D) A vehicle repair shop'),
(382, 96, 1, '(A) It changed its pricing system.'),
(383, 96, 1, '((B) It hired an external consultant.'),
(384, 96, 1, '(C) It began using a new software program'),
(385, 96, 1, '(D) It provided additional training to staff.'),
(386, 97, 1, '(A) Communication'),
(387, 97, 1, '(B) Price'),
(388, 97, 1, '(C) Speed'),
(389, 97, 1, '(D) Reliability'),
(390, 98, 1, '(A) New regulations for an industry'),
(391, 98, 1, '(B) The needs of a certain target market'),
(392, 98, 1, '(C) The efficiency of a business process'),
(393, 98, 1, '(D) Environmentally.friendly practices'),
(394, 99, 1, '(A) At 1 p.m.'),
(395, 99, 1, '(B) At 2 p.m.'),
(396, 99, 1, '(C) At 3 p.m.'),
(397, 99, 1, '(D) At 5 p.m.'),
(398, 100, 1, '(A) Provide a document in advance'),
(399, 100, 1, '(B) Update an entry in a calendar'),
(400, 100, 1, '(C) Talk to a department supervisor'),
(401, 100, 1, '(D) Take over one of the listener’s tasks'),
(402, 101, 2, '(A) creates'),
(403, 101, 2, '(B) creating'),
(404, 101, 2, '(C) creatively'),
(405, 101, 2, '(D) creative '),
(406, 102, 2, '(A) take'),
(407, 102, 2, '(B) save'),
(408, 102, 2, '(C) simplify'),
(409, 102, 2, '(D) improve'),
(410, 103, 2, '(A) smooth'),
(411, 103, 2, '(B) smoothly'),
(412, 103, 2, '(C) smoothing'),
(413, 103, 2, '(D) smoothness'),
(414, 104, 2, '(A) across'),
(415, 104, 2, '(B) under'),
(416, 104, 2, '(C) by'),
(417, 104, 2, '(D) within\r\n'),
(418, 105, 2, '(A) they'),
(419, 105, 2, '(B) them'),
(420, 105, 2, '(C) theirs'),
(421, 105, 2, '(D) themselves'),
(422, 106, 2, '(A) talented'),
(423, 106, 2, '(B) common'),
(424, 106, 2, '(C) beneficial'),
(425, 106, 2, '(D) fortunate'),
(426, 107, 2, '(A) are elected '),
(427, 107, 2, '(B) have elected'),
(428, 107, 2, '(C) is elected'),
(429, 107, 2, '(D) elected'),
(430, 108, 2, '(A) of'),
(431, 108, 2, '(B) prior to'),
(432, 108, 2, '(C) ever'),
(433, 108, 2, '(D) before'),
(434, 109, 2, '(A) requires'),
(435, 109, 2, '(B) requiring'),
(436, 109, 2, '(C) requirements'),
(437, 109, 2, '(D) required'),
(438, 110, 2, '(A) much '),
(439, 110, 2, '(B) more'),
(440, 110, 2, '(C) very'),
(441, 110, 2, '(D) so'),
(442, 111, 2, '(A) whenever'),
(443, 111, 2, '(B) every'),
(444, 111, 2, '(C) less'),
(445, 111, 2, '(D) even'),
(446, 112, 2, '(A) content'),
(447, 112, 2, '(B) setting'),
(448, 112, 2, '(C) volume'),
(449, 112, 2, '(D) process'),
(450, 113, 2, '(A) production'),
(451, 113, 2, '(B) products'),
(452, 113, 2, '(C) produce'),
(453, 113, 2, '(D) produced'),
(454, 114, 2, '(A) how'),
(455, 114, 2, '(B) that'),
(456, 114, 2, '(C) whom '),
(457, 114, 2, '(D) whose'),
(458, 115, 2, '(A) throughout '),
(459, 115, 2, '(B) among'),
(460, 115, 2, '(C) onto'),
(461, 115, 2, '(D) as'),
(462, 116, 2, '(A) recommendation'),
(463, 116, 2, '(B) recommending'),
(464, 116, 2, '(C) recommended'),
(465, 116, 2, '(D) recommend'),
(466, 117, 2, '(A) accomplished'),
(467, 117, 2, '(B) predicted'),
(468, 117, 2, '(C) regarded'),
(469, 117, 2, '(D) attributed '),
(470, 118, 2, '(A) So that'),
(471, 118, 2, '(B) Now that'),
(472, 118, 2, '(C) Due to'),
(473, 118, 2, '(D) Rather than'),
(474, 119, 2, '(A) last'),
(475, 119, 2, '(B) lastly'),
(476, 119, 2, '(C) lasting'),
(477, 119, 2, '(D) lastingly'),
(478, 120, 2, '(A) knowledge'),
(479, 120, 2, '(B) approach'),
(480, 120, 2, '(C) reputation'),
(481, 120, 2, '(D) performance'),
(482, 121, 2, '(A) proceeding'),
(483, 121, 2, '(B) procedures'),
(484, 121, 2, '(C) procedura'),
(485, 121, 2, '(D) proceeds'),
(486, 122, 2, '(A) forcefully'),
(487, 122, 2, '(B) alternatively'),
(488, 122, 2, '(C) respectively'),
(489, 122, 2, '(D) markedly'),
(490, 123, 2, '(A) After'),
(491, 123, 2, '(B) Considering'),
(492, 123, 2, '(C) Neither'),
(493, 123, 2, '(D) Only'),
(494, 124, 2, '(A) criticized'),
(495, 124, 2, '(B) critically'),
(496, 124, 2, '(C) critical'),
(497, 124, 2, '(D) criticism'),
(498, 125, 2, '(A) deliberate'),
(499, 125, 2, '(B) resolute'),
(500, 125, 2, '(C) vast '),
(501, 125, 2, '(D) adept'),
(502, 126, 2, '(A) the other '),
(503, 126, 2, '(B) other one'),
(504, 126, 2, '(C) one another'),
(505, 126, 2, '(D) another'),
(506, 127, 2, '(A) aligned '),
(507, 127, 2, '(B) adhered'),
(508, 127, 2, '(C) corresponded'),
(509, 127, 2, '(D) collaborated'),
(510, 128, 2, '(A) worn'),
(511, 128, 2, '(B) to wear'),
(512, 128, 2, '(C) be worn'),
(513, 128, 2, '(D) have been worn'),
(514, 129, 2, '(A) exactly '),
(515, 129, 2, '(B) alike'),
(516, 129, 2, '(C) beyond'),
(517, 129, 2, '(D) enough'),
(518, 130, 2, '(A) improvement'),
(519, 130, 2, '(B) incorporation'),
(520, 130, 2, '(C) perception'),
(521, 130, 2, '(D) excess'),
(522, 131, 2, '(A) undergo '),
(523, 131, 2, '(B) indicate '),
(524, 131, 2, '(C) compare'),
(525, 131, 2, '(D) introduce'),
(526, 132, 2, '(A) relied'),
(527, 132, 2, '(B) relying'),
(528, 132, 2, '(C) reliable'),
(529, 132, 2, '(D) reliability'),
(530, 133, 2, '(A) Instead'),
(531, 133, 2, '(B) Even so'),
(532, 133, 2, '(C) Otherwise'),
(533, 133, 2, '(D) After all'),
(534, 134, 2, '(A) Each container can hold up to 100 liters of\r\nitems.'),
(535, 134, 2, '(B) More will be needed for overseas shipping.'),
(536, 134, 2, '(C) I’ve compiled a few options in the attached\r\nfile.'),
(537, 134, 2, '(D) This would not add much time to the packing\r\nprocess'),
(538, 135, 2, '(A) can graduate'),
(539, 135, 2, '(B) of graduation'),
(540, 135, 2, '(C) is graduating'),
(541, 135, 2, '(D) who graduated'),
(542, 136, 2, '(A) Posts on other topics may be removed.'),
(543, 136, 2, '(B) Your request to join has been denied.'),
(544, 136, 2, '(C) A venue map is available on the “Files”\r\npage.'),
(545, 136, 2, '(D) Send us your suggestions for group\r\nmerchandise.'),
(546, 137, 2, '(A) busy'),
(547, 137, 2, '(B) public'),
(548, 137, 2, '(C) large'),
(549, 137, 2, '(D) free'),
(550, 138, 2, '(A) network'),
(551, 138, 2, '(B) button'),
(552, 138, 2, '(C) blog'),
(553, 138, 2, '(D) browser'),
(554, 139, 2, '(A) association'),
(555, 139, 2, '(B) technology'),
(556, 139, 2, '(C) personne'),
(557, 139, 2, '(D) energy'),
(558, 140, 2, '(A) to join'),
(559, 140, 2, '(B) join'),
(560, 140, 2, '(C) joined'),
(561, 140, 2, '(D) will join'),
(562, 141, 2, '(A) More than 30 fishermen can be\r\nfound on a good day.'),
(563, 141, 2, '(B) She finds many of them herself\r\nduring visits to Bratcher Beach'),
(564, 141, 2, '(C) Her customers say they feel close\r\nto nature when they wear it.'),
(565, 141, 2, '(D) This change in technique was\r\ninspired by Mr. Lopez’s work.'),
(566, 142, 2, '(A) wants'),
(567, 142, 2, '(B) wanting'),
(568, 142, 2, '(C) will want'),
(569, 142, 2, '(D) didn’t want'),
(570, 143, 2, '(A) will be transferred'),
(571, 143, 2, '(B) were transferred'),
(572, 143, 2, '(C) having transferred'),
(573, 143, 2, '(D) should have transferred'),
(574, 144, 2, '(A) meanwhile'),
(575, 144, 2, '(B) elsewhere'),
(576, 144, 2, '(C) likewise'),
(577, 144, 2, '(D) besides'),
(578, 145, 2, 'A) Failure to comply with these policies\r\nmay result in financial penalties.'),
(579, 145, 2, '(B) As a longtime customer, you are\r\neligible for very attractive credit\r\nrates. '),
(580, 145, 2, '(C) This can be done through your\r\nonline account or in person at any\r\nbranch. '),
(581, 145, 2, '(D) The funds will be deposited in the\r\nrecipient’s account within five\r\nbusiness days. '),
(582, 146, 2, '(A) similar'),
(583, 146, 2, '(B) similarity'),
(584, 146, 2, '(C) similarities'),
(585, 146, 2, '(D) similarly'),
(586, 147, 2, '(A) Potential toy donors'),
(587, 147, 2, '(B) Current network users'),
(588, 147, 2, '(C) Lending center employees'),
(589, 147, 2, '(D) Aspiring founders of similar facilities'),
(590, 148, 2, '(A) Its offerings include children’s books'),
(591, 148, 2, '(B) It charges a small fee for membership.'),
(592, 148, 2, '(C) It is an official charitable organization. '),
(593, 148, 2, '(D) Its opening hours vary by location.'),
(594, 149, 2, '(A) On a sign inside a city bus'),
(595, 149, 2, '(B) On a structure at a bus stop'),
(596, 149, 2, '(C) In a post on a personal blog'),
(597, 149, 2, '(D) In the local news section of a\r\nnewspaper'),
(598, 150, 2, '(A) To shorten its average travel duration'),
(599, 150, 2, '(B) To enable long.term roadwork to take\r\nplace'),
(600, 150, 2, '(C) To provide more service to a popular\r\nlocation'),
(601, 150, 2, '(D) To make an intersection safer for the\r\npublic'),
(602, 151, 2, '(A) He cannot evaluate Janice’s\r\nperformance'),
(603, 151, 2, '(B) He has found an error in a schedule'),
(604, 151, 2, '(C) He does not want to work again tonight. \r\n'),
(605, 151, 2, '(D) He was not responsible for a problem.'),
(606, 152, 2, '(A) Hospitality'),
(607, 152, 2, '(B) Medicine'),
(608, 152, 2, '(C) Security'),
(609, 152, 2, '(D) Retail'),
(610, 153, 2, '(A) To approve part of a proposa'),
(611, 153, 2, '(B) To respond to a staff complaint'),
(612, 153, 2, '(C) To clarify some revisions to a policy'),
(613, 153, 2, '(D) To answer a coworker’s inquiry '),
(614, 154, 2, '(A) Trying to have a vehicle repaired'),
(615, 154, 2, '(B) Considering applying for a job\r\npromotion'),
(616, 154, 2, '(C) Choosing between two types of\r\nemployee perks'),
(617, 154, 2, '(D) Compiling data for a report on a\r\ncompany program'),
(618, 155, 2, '(A) It may require weekend work.'),
(619, 155, 2, '(B) It includes a competitive salary.'),
(620, 155, 2, '(C) It involves making weekly reports. '),
(621, 155, 2, '(D) It is a temporary position.'),
(622, 156, 2, '(A) A relevant academic qualification'),
(623, 156, 2, '(B) At least 5 years of experience in the\r\nfield'),
(624, 156, 2, '(C) A background in managing staff\r\nmembers'),
(625, 156, 2, '(D) An ability to work on multiple tasks'),
(626, 157, 2, '(A) On November 16'),
(627, 157, 2, '(B) On November 30'),
(628, 157, 2, '(C) On December 15'),
(629, 157, 2, '(D) On December 19'),
(630, 158, 2, '(A) They have built.in locks. '),
(631, 158, 2, '(B) They come in a range of sizes. '),
(632, 158, 2, '(C) They can be accessed freely by users.'),
(633, 158, 2, '(D) Their contents are visible to passersby. '),
(634, 159, 2, '(A) Having a multi.year apartment contract'),
(635, 159, 2, '(B) Being a well.behaved tenant'),
(636, 159, 2, '(C) Showing insurance coverage for it'),
(637, 159, 2, '(D) Attending a group information session'),
(638, 160, 2, '(A) Most of its occupants rent their\r\nproperty'),
(639, 160, 2, '(B) It has fewer than 32 residences. '),
(640, 160, 2, '(C) It includes more than one underground\r\nfloor.'),
(641, 160, 2, '(D) It will go through a change in\r\nmanagement in June.'),
(642, 161, 2, '(A) To inform him of his acceptance to a\r\nprogram'),
(643, 161, 2, '(B) To invite him to join a professional\r\nassociation'),
(644, 161, 2, '(C) To remind him of some licensing\r\nrequirements'),
(645, 161, 2, '(D) To announce the launch of an online\r\nresource'),
(646, 162, 2, '(A) He recently began his own business.'),
(647, 162, 2, '(B) He has a lot of experience in his field.'),
(648, 162, 2, '(C) He has spoken with Ms. Chapman.'),
(649, 162, 2, '(D) He passed an exam on FREIA’s Web\r\nsite.'),
(650, 163, 2, '(A) [1]\r\n'),
(651, 163, 2, '(B) [2]'),
(652, 163, 2, '(C) [3]'),
(653, 163, 2, '(D) [4]'),
(654, 164, 2, '(A) Changes in a region’s ecosystems'),
(655, 164, 2, '(B) The development of some technology'),
(656, 164, 2, '(C) Artistic depictions of a landscape'),
(657, 164, 2, '(D) The history of a local industry'),
(658, 165, 2, '(A) people'),
(659, 165, 2, '(B) statistics'),
(660, 165, 2, '(C) shapes'),
(661, 165, 2, '(D) districts'),
(662, 166, 2, '(A) By supplying necessary financial\r\nsupport'),
(663, 166, 2, '(B) By permitting temporary use of some\r\nitems '),
(664, 166, 2, '(C) By volunteering to give tours to visitors'),
(665, 166, 2, '(D) By giving expert advice to museum\r\ncurators'),
(666, 167, 2, '(A) It requires advance reservation.'),
(667, 167, 2, '(B) It is free for museum members.'),
(668, 167, 2, '(C) It is allowed until later on Saturdays.'),
(669, 167, 2, '(D) It does not guarantee entry to the\r\nspecial exhibit.'),
(670, 168, 2, '(A) A marketing specialist'),
(671, 168, 2, '(B) An administrative assistant'),
(672, 168, 2, '(C) A sales representative'),
(673, 168, 2, '(D) An event organizer'),
(674, 169, 2, '(A) Hold pre.arranged meetings '),
(675, 169, 2, '(B) Give a presentation about a product'),
(676, 169, 2, '(C) Post updates on a social media site'),
(677, 169, 2, '(D) Hand out complimentary gifts to\r\nattendees'),
(678, 170, 2, '(A) She is willing to have a conversation\r\nwith Ms. Abbar. '),
(679, 170, 2, '(B) She needs to end the chat discussion\r\nquickly'),
(680, 170, 2, '(C) She will be able to place an order\r\nbefore a deadline'),
(681, 170, 2, '(D) She can take over a communications\r\ntask from Mr. Lee.'),
(682, 171, 2, '(A) It sells office electronics'),
(683, 171, 2, '(B) It mostly relies on one major client'),
(684, 171, 2, '(C) It has attended the trade show before.'),
(685, 171, 2, '(D) It is based in Charleston.'),
(686, 172, 2, '(A) Its output has greatly increased.'),
(687, 172, 2, '(B) It has more small start.up businesses.'),
(688, 172, 2, '(C) Its customers are more interested in\r\nsustainability'),
(689, 172, 2, '(D) It is responsible for a'),
(690, 173, 2, '(A) It can accept more types of fabric.'),
(691, 173, 2, '(B) Its process consumes less energy. \r\n'),
(692, 173, 2, '(C) It uses fewer toxic chemicals. '),
(693, 173, 2, '(D) It produces better materials'),
(694, 174, 2, '(A) A textile recycling factory'),
(695, 174, 2, '(B) A clothing manufacturer'),
(696, 174, 2, '(C) A shipping company '),
(697, 174, 2, '(D) A sports league'),
(698, 175, 2, '(A) [1]'),
(699, 175, 2, '(B) [2]'),
(700, 175, 2, '(C) [3]\r\n'),
(701, 175, 2, '(D) [4]'),
(702, 176, 2, '(A) Because of an incident Ms. Chavez\r\nwitnessed'),
(703, 176, 2, '(B) Because of criticism from employees'),
(704, 176, 2, '(C) Because of budget constraints '),
(705, 176, 2, '(D) Because of a newly created law'),
(706, 177, 2, '(A) It has offices in multiple states. '),
(707, 177, 2, '(B) It is planning a large.scale expansion. '),
(708, 177, 2, '(C) It holds regular trainings on its hiring\r\npolicies.'),
(709, 177, 2, '(D) It received an award for its employment\r\npractices.'),
(710, 178, 2, '(A) 2'),
(711, 178, 2, '(B) 5'),
(712, 178, 2, '(C) 6'),
(713, 178, 2, '(D) 8'),
(714, 179, 2, '(A) A template for an invitation to an\r\ninterview'),
(715, 179, 2, '(B) An explanation of how to determine a\r\nfair salary'),
(716, 179, 2, '(C) A list of suggested questions to ask\r\ncandidates'),
(717, 179, 2, '(D) An example of a listing for a vacant\r\nposition '),
(718, 180, 2, '(A) They must meet with a human\r\nresources worker.'),
(719, 180, 2, '(B) They have filled out an online\r\napplication form.'),
(720, 180, 2, '(C) They should be notified when the hiring\r\nprocess ends. '),
(721, 180, 2, '(D) They are sometimes required to take\r\nskills tests.'),
(722, 181, 2, '(A) Its owners used to be famous\r\nmusicians.'),
(723, 181, 2, '(B) Its facilities were recently updated.'),
(724, 181, 2, '(C) It has some vintage equipment.'),
(725, 181, 2, '(D) It is the oldest recording studio in the\r\ncity.'),
(726, 182, 2, '(A) Having its piano tuned'),
(727, 182, 2, '(B) Playing its guitars on an album'),
(728, 182, 2, '(C) Using the services of its audio\r\nengineers'),
(729, 182, 2, '(D) Remaining in the studio after the\r\nscheduled time'),
(730, 183, 2, '(A) probability'),
(731, 183, 2, '(B) risk'),
(732, 183, 2, '(C) attempt'),
(733, 183, 2, '(D) opportunity'),
(734, 184, 2, '(A) $45 AUD'),
(735, 184, 2, '(B) $50 AUD'),
(736, 184, 2, '(C) $60 AUD'),
(737, 184, 2, '(D) $75 AUD'),
(738, 185, 2, '(A) He does not intend to record music.'),
(739, 185, 2, '(B) He is part of a group of performers.'),
(740, 185, 2, '(C) He is sometimes busy during the\r\ndaytime.'),
(741, 185, 2, '(D) He has used Grell Street Studio in the\r\npast.'),
(742, 186, 2, '(A) A time'),
(743, 186, 2, '(B) A date'),
(744, 186, 2, '(C) A venue'),
(745, 186, 2, '(D) An information delivery method'),
(746, 187, 2, '(A) They practiced using tablet devices.'),
(747, 187, 2, '(B) They learned about a city council\r\ndecision. '),
(748, 187, 2, '(C) They were already familiar with the\r\nGIS.'),
(749, 187, 2, '(D) They created a list of department\r\nassets.\r\n'),
(750, 188, 2, '(A) Some numerical data were explained.'),
(751, 188, 2, '(B) A computing facility was toured.'),
(752, 188, 2, '(C) A visual display was presented.'),
(753, 188, 2, '(D) A new official was introduced.'),
(754, 189, 2, '(A) Mr. Andrews’s'),
(755, 189, 2, '(B) Mr. Herrera’s'),
(756, 189, 2, '(C) Ms. Kim’s'),
(757, 189, 2, '(D) Ms. Mueller’s'),
(758, 190, 2, '(A) Regular use of an amenity'),
(759, 190, 2, '(B) A work crew error\r\n'),
(760, 190, 2, '(C) Insect pests'),
(761, 190, 2, '(D) Extreme weather'),
(762, 191, 2, '(A) It is closed during part of the year.'),
(763, 191, 2, '(B) Its office is next to a local government\r\nbuilding'),
(764, 191, 2, '(C) Its business hours end at 5 p.m'),
(765, 191, 2, '(D) Some of its tours are not listed on the\r\nWeb page. '),
(766, 192, 2, '(A) Carry a backpack'),
(767, 192, 2, '(B) Listen to some recordings'),
(768, 192, 2, '(C) Put on a piece of safety gear'),
(769, 192, 2, '(D) Walk around an indoor space'),
(770, 193, 2, '(A) Submit his payment in full'),
(771, 193, 2, '(B) Confirm the number of participants'),
(772, 193, 2, '(C) Express his desire to cancel at no\r\ncharge'),
(773, 193, 2, '(D) Make a decision about optional\r\nservices'),
(774, 194, 2, '(A) relays'),
(775, 194, 2, '(B) skips'),
(776, 194, 2, '(C) moves past '),
(777, 194, 2, '(D) successfully undergoes'),
(778, 195, 2, '(A) Because it is cheaper'),
(779, 195, 2, '(B) Because it leaves earlier'),
(780, 195, 2, '(C) Because it is physically easier'),
(781, 195, 2, '(D) Because it better fits his interests'),
(782, 196, 2, '(A) They must be completed within a\r\n10.minute period.'),
(783, 196, 2, '(B) They were designed by a consulting\r\nfirm.'),
(784, 196, 2, '(C) Responses to them will be made\r\nanonymous. '),
(785, 196, 2, '(D) Some staff members are not eligible to\r\ntake them.'),
(786, 197, 2, '(A) To make sure she is eating a balanced\r\ndiet'),
(787, 197, 2, '(B) To prevent an allergic reaction '),
(788, 197, 2, '(C) To avoid flavors she dislikes'),
(789, 197, 2, '(D) To enable her to practice vegetarianism'),
(790, 198, 2, '(A) She is Mr. Bowman’s superior. '),
(791, 198, 2, '(B) She used to work for Kruse, Inc'),
(792, 198, 2, '(C) She was hired to address the cafeteria\r\nissue'),
(793, 198, 2, '(D) She joined Moffing Group in March.'),
(794, 199, 2, '(A) Offer cooking demonstrations'),
(795, 199, 2, '(B) Maintain fair meal costs for workers'),
(796, 199, 2, '(C) Solicit feedback on the cafeteria'),
(797, 199, 2, '(D) Allow employees to take food back to\r\ntheir desks '),
(798, 200, 2, '(A) Its taste'),
(799, 200, 2, '(B) Its diversity'),
(800, 200, 2, '(C) Its portion sizes'),
(801, 200, 2, '(D) Its healthfulness'),
(1001, 301, 1, '(A)'),
(1002, 301, 1, '(B)'),
(1003, 301, 1, '(C)'),
(1004, 301, 1, '(D)'),
(1005, 302, 1, '(A)'),
(1006, 302, 1, '(B)'),
(1007, 302, 1, '(C)'),
(1008, 302, 1, '(D)'),
(1009, 303, 1, '(A)'),
(1010, 303, 1, '(B)'),
(1011, 303, 1, '(C)'),
(1012, 303, 1, '(D)'),
(1013, 304, 1, '(A)'),
(1014, 304, 1, '(B)'),
(1015, 304, 1, '(C)'),
(1016, 304, 1, '(D)'),
(1017, 305, 1, '(A)'),
(1018, 305, 1, '(B)'),
(1019, 305, 1, '(C)'),
(1020, 305, 1, '(D)'),
(1021, 306, 1, '(A)'),
(1022, 306, 1, '(B)'),
(1023, 306, 1, '(C)'),
(1024, 306, 1, '(D)');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `question_audio`
--

CREATE TABLE `question_audio` (
  `id` int(11) NOT NULL,
  `audio_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `question_audio`
--

INSERT INTO `question_audio` (`id`, `audio_name`) VALUES
(1, 'cau1.mp3'),
(2, 'cau2.mp3'),
(3, 'cau3.mp3'),
(4, 'cau4.mp3'),
(5, 'cau5.mp3'),
(6, 'cau6.mp3'),
(7, 'cau7.mp3'),
(8, 'cau8.mp3'),
(9, 'cau9.mp3'),
(10, 'cau10.mp3'),
(11, 'cau11.mp3'),
(12, 'cau12.mp3'),
(13, 'cau13.mp3'),
(14, 'cau14.mp3'),
(15, 'cau15.mp3'),
(16, 'cau16.mp3'),
(17, 'cau17.mp3'),
(18, 'cau18.mp3'),
(19, 'cau19.mp3'),
(20, 'cau20.mp3'),
(21, 'cau21.mp3'),
(22, 'cau22.mp3'),
(23, 'cau23.mp3'),
(24, 'cau24.mp3'),
(25, 'cau25.mp3'),
(26, 'cau26.mp3'),
(27, 'cau27.mp3'),
(28, 'cau28.mp3'),
(29, 'cau29.mp3'),
(30, 'cau30.mp3'),
(31, 'cau31.mp3'),
(32, 'cau32.mp3'),
(33, 'cau33.mp3'),
(34, 'cau34.mp3'),
(35, 'cau35.mp3'),
(36, 'cau36.mp3'),
(37, 'cau37.mp3'),
(38, 'cau38.mp3'),
(39, 'cau39.mp3'),
(40, 'cau40.mp3'),
(41, 'cau41.mp3'),
(42, 'cau42.mp3'),
(43, 'cau43.mp3'),
(44, 'cau44.mp3'),
(45, 'cau45.mp3'),
(46, 'cau46.mp3'),
(47, 'cau47.mp3'),
(48, 'cau48.mp3'),
(49, 'cau49.mp3'),
(50, 'cau50.mp3'),
(51, 'cau51.mp3'),
(52, 'cau52.mp3'),
(53, 'cau53.mp3'),
(54, 'cau54.mp3'),
(55, 'cau55.mp3'),
(56, 'cau56.mp3'),
(57, 'cau57.mp3'),
(58, 'cau58.mp3'),
(59, 'cau59.mp3'),
(60, 'cau60.mp3'),
(61, 'cau61.mp3'),
(62, 'cau62.mp3'),
(63, 'cau63.mp3'),
(64, 'cau64.mp3'),
(65, 'cau65.mp3'),
(66, 'cau66.mp3'),
(67, 'cau67.mp3'),
(68, 'cau68.mp3'),
(69, 'cau69.mp3'),
(70, 'cau70.mp3'),
(71, 'cau71.mp3'),
(72, 'cau72.mp3'),
(73, 'cau73.mp3'),
(74, 'cau74.mp3'),
(75, 'cau75.mp3'),
(76, 'cau76.mp3'),
(77, 'cau77.mp3'),
(78, 'cau78.mp3'),
(79, 'cau79.mp3'),
(80, 'cau80.mp3'),
(81, 'cau81.mp3'),
(82, 'cau82.mp3'),
(83, 'cau83.mp3'),
(84, 'cau84.mp3'),
(85, 'cau85.mp3'),
(86, 'cau86.mp3'),
(87, 'cau87.mp3'),
(88, 'cau88.mp3'),
(89, 'cau89.mp3'),
(90, 'cau90.mp3'),
(91, 'cau91.mp3'),
(92, 'cau92.mp3'),
(93, 'cau93.mp3'),
(94, 'cau94.mp3'),
(95, 'cau95.mp3'),
(96, 'cau96.mp3'),
(97, 'cau97.mp3'),
(98, 'cau98.mp3'),
(99, 'cau99.mp3'),
(100, 'cau100.mp3'),
(101, 'cau101.mp3'),
(102, 'cau102.mp3'),
(103, 'cau103.mp3'),
(104, 'cau104.mp3'),
(105, 'cau105.mp3'),
(106, 'cau106.mp3');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `question_group`
--

CREATE TABLE `question_group` (
  `id` int(11) NOT NULL,
  `exam_part_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `paragraph` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `question_group`
--

INSERT INTO `question_group` (`id`, `exam_part_id`, `title`, `paragraph`) VALUES
(1, 6, 'refer to the following e-mail', '<p>From: Kristine Osbourne</p>\n\n<p>To: Raymond Jensen</p>\n\n<p>Subject: Container issue</p>\n\n<p>Date: October 3</p>\n\n<p>Attachment: Packaging</p>\n\n<p>Dear Mr. Jensen,</p>\n\n<p>As you asked, I&rsquo;ve looked into the low ratings for our large plastic containers online. Customer comments ----1--- that the main issue is that the containers frequently arrive with cracked or broken corners. Our quality control team is ----2---, so this damage must be occurring during shipping.</p>\n\n<p>We could address this problem by pressuring our shipping contractor to handle our packages more carefully or by changing contractors, but I think these tactics are unlikely to work due to the nature of the shipping business. ----3--- , I recommend adding protective packaging to the corners of our containers. ----4--- . Please take a look and let me know what you think. Sincerely,</p>\n\n<p>Kristine</p>'),
(2, 6, 'refer to the following Web page.', '<p>www.connect-us.com/groups/023492</p>\n\n<p><strong>Alford High School Alumni</strong></p>\n\n<p>About the Group</p>\n\n<p>This group is for anyone ----1--- from Alford High School in Montana. It is meant to be an online space for connecting with old friends, recalling our days at Alford, and sharing news about the school. ----2--- . Also, please note that this is a ----3--- group. That means that our member list and the posts and comments you make here are visible to everyone, even non-members. If you have a question or concern about the group, contact Russell Bailey, the administrator, by placing your cursor over his name and clicking the &ldquo;Message&rdquo; ----4--- in the bubble that pops up.</p>\n'),
(3, 6, 'refer to the following article', '<p>Easton Art Co-operative Newsletter</p>\n\n<p><strong>Meet the Artist: Jessica Ross</strong></p>\n\n<p>Jessica Ross has always loved art, but it was not until her retirement from the workforce two years ago that she began to share her work with others. With the additional ----1--- to devote to art, she quickly found herself with more pieces than she could use, so she decided to sell them at Easton-area festivals. Her marine-themed sculptures caught the attention of the co-op president at that time, Alberto Lopez, and he invited her ----2---. Ms. Ross uses real objects from the ocean, such as seashells, sand dollars, and driftwood, in her art. ----3--- Those interested in unique pieces with local flair ----4--- to check out her display in the co-op gallery.</p>\n'),
(4, 6, 'refer to the following letter', '<p>September 25</p>\n\n<p>James Lemay</p>\n\n<p>430 Corbett Street, Apt. 202</p>\n\n<p>Lipscomb, CO 80020</p>\n\n<p>Dear valued customer,</p>\n\n<p>In compliance with national regulations, we are writing to inform you that the Tabor Square branch of Hildreth Bank is scheduled to close permanently at 5 p.m. on Friday, November 30. Your accounts maintained at this branch ----1--- automatically to our Dowell Street branch at that time. This branch, also in Lipscomb, is the next closest to your residence. However, if you would prefer your accounts to be maintained ----2--- , you may contact us before the changeover to arrange this. ----3--- .</p>\n\n<p>Please rest assured that all of the services you currently enjoy are ----4--- available at the Dowell Street branch. Thank you for your continued business and for trusting Hildreth Bank to serve your financial needs.</p>\n\n<p>Sincerely, Ruby Shimizu Western Region Manager Hildreth Bank</p>\n'),
(5, 7, 'refer to the following instructions.', '<p><strong>Jeongwon Toy Network</strong></p>\n\n<hr />\n<p>Jeongwon Toy Network is committed to lending our members only high-quality, unbroken toys with no parts missing. Please make sure your toys meet these standards before donating.</p>\n\n<p>To find your nearest lending center, visit www.jeongwontoy. org/locations.</p>\n\n<p>Visit us during business hours so that an employee can receive your toys. Do not leave items outside the center.</p>\n\n<p>Jeongwon Toy Network is a government-recognized charity. If you would like to claim a tax deduction for your contribution, ask our staff for a receipt.</p>\n'),
(6, 7, 'refer to the following notice', '<p><strong>Change to Bus 3401 Route</strong></p>\n\n<p>From Monday, September 28, Hubbard City Bus 3401 will be permanently rerouted. This stop will be closed, and Bus 3401 will instead service a new stop (#497-38) to be established on the west side of Calvin Street near its intersection with Weaver Road. (See the map below.) This change is not expected to otherwise affect Bus 3401&rsquo;s schedule or travel times.</p>\n\n<p>Hubbard City Transit Authority made this change in order to improve road safety at the intersection of Owen Street and Weaver Road. Thank you for your understanding.</p>\n'),
(7, 7, 'refer to the following text-message chain.', '<p><strong>Roberta Costa [2:40 p.m.]</strong></p>\n\n<p>Hi, Wesley. Janice called in sick, so we need someone to take her shift from 5 to 9 tonight. Are you free?</p>\n\n<p><strong>Wesley Hathaway [2:42 p.m.]</strong></p>\n\n<p>Yes, but I worked the closing shift yesterday. Have you asked Paul to take it? I know that he&rsquo;s been hoping to pick up more shifts.</p>\n\n<p><strong>Roberta Costa [2:43 p.m.]</strong></p>\n\n<p>I&rsquo;m not comfortable having him handle the weekend dinner rush. His serving skills aren&rsquo;t at that level yet.</p>\n\n<p><strong>Wesley Hathaway [2:46 p.m.]</strong></p>\n\n<p>OK, then I&rsquo;ll do it. But I hope someone else can fill in at the last minute next time it&rsquo;s needed.</p>\n'),
(8, 7, 'refer to the following e-mail. ', '<p>From: Arthur Hayashi</p>\n\n<hr />\n<p>To:&nbsp;Julie Black</p>\n\n<hr />\n<p>Subject:&nbsp;RE: News and company car</p>\n\n<hr />\n<p>Hi Julie,&nbsp;December 17</p>\n\n<hr />\n<p>Date:</p>\n\n<p>Sure, I&rsquo;m happy to tell you about my experience using a company car here. In short, it&rsquo;s been great. You don&rsquo;t get to pick your car, but the ones in the fleet are all pretty new, so you&rsquo;ll probably like whatever you end up with. Fleet management staff are always willing to clarify the company&rsquo;s policies, and they take care of repairs or other problems quickly. I don&rsquo;t know whether using a company car would be a better option for you than getting the vehicle allowance, but I can confidently say that our company car program is quite good. Anyway, congratulations on your promotion to senior sales representative! It&rsquo;s great to see you getting recognition for your hard work. Keep me updated on how it goes.</p>\n\n<p>&ndash;Arthur</p>\n'),
(9, 7, 'refer to the following job listing.', '<h2><strong>Bladeley Scientific Inc.</strong></h2>\n\n<p>We are urgently seeking a Biomedical Engineer to join our team at our research facility in Newcastle, working from Monday to Friday, approximately 45 hours per week.</p>\n\n<p>Primary Responsibilities:</p>\n\n<p>&bull; Conduct hands-on experimentation in order to further drug development</p>\n\n<p>&bull; Lead research design and planning of new experiments and studies &bull; Maintain laboratory notebooks and electronic files to support experimental studies</p>\n\n<p>&bull; Provide written progress updates to Executive Management every Friday</p>\n\n<p>The successful candidate must have a PhD in Bioengineering or a related subject and a minimum of five years&rsquo; experience working within the bioengineering industry. Strong communication, interpersonal, and organizational skills are absolutely essential. Must be capable of efficient multitasking in a fast-moving environment.</p>\n\n<p>The closing date for applications is November 16. Those shortlisted for interviews will be informed by November 30. Shortlisted candidates will be invited to interview for the position from December 15 to December 19, and a final hiring decision will be made before the end of the year</p>\n'),
(10, 7, 'refer to the following announcement.', '<p>Bair Apartments</p>\n\n<p><strong>ANNOUNCEMENT</strong></p>\n\n<p>The basement storage units are ready for use. There are 32 units of 4 ft x 4 ft x 8 ft in size, made of transparent plastic. Users must provide their own unit locks, but the storage room itself will only be accessible by appointment. Units are available for rent only, at a price of $200 per year.</p>\n\n<p>Please visit the management office to rent a unit. Proof of homeowner&rsquo;s or renter&rsquo;s insurance that covers storage units must be provided. You will also be required to sign a contract regulating the unit&rsquo;s use, which includes a list of prohibited storage items.</p>\n\n<p>Every household in the building will be eligible to rent a single unit before May 31. After that, unclaimed units will be made available to households that want additional units. Since there are more storage units than apartments in our building and not all households may need separate storage, there are likely to be several available. Please express your interest in using multiple units when you rent your first one.</p>\n'),
(11, 7, 'refer to the following letter.', '<p>Alonzo Serrano</p>\n\n<p>c/o Tampa Pro Inspections</p>\n\n<p>2040 Baldwin Street, Suite B</p>\n\n<p>Tampa, FL 33606</p>\n\n<p>Dear Mr. Serrano,</p>\n\n<p>Having reviewed your qualifications, the Florida Real Estate Inspection Association (FREIA) is happy to welcome you to the FREIA Mentoring Program (FMP). ----1---. We are grateful for your participation in our efforts to cultivate a highly trained membership that provides top-notch service to the real estate owners of Florida. Please be assured that you are bringing prestige to your firm and building a personal reputation as a leader in the field. ----2---.</p>\n\n<p>The next step is for you to take our online FMP training course, available at www.florida-reia.org/fmp/training. You can log in using your FREIA credentials. The course consists of six hours of training plus a short exam. ----3---.While we know you already have the necessary industry knowledge from your many years as a licensed inspector, the course will give you valuable advice on how to be an effective mentor. Once you have completed it, we will connect you with your mentee.</p>\n\n<p>Please contact me at (813) 555-0153 if you have any questions about this process or the program in general. ----4---.</p>\n\n<p>Sincerely, Retta Chapman, Coordinator</p>\n\n<p>Florida Real Estate Inspection Association (FREIA</p>\n'),
(12, 7, 'refer to the following announcement', '<p><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Sammons History Museum Special Exhibit </strong></p>\r\n\r\n<hr />\r\n<p>Sammons History Museum is proud to announce the opening of its special exhibit &ldquo;Changing the Landscape: Mining in the Byerst Region&rdquo; on April 3.</p>\r\n\r\n<p>Copper and iron mining led to the founding of Sammons and many other Byerst cities and towns, and furnished a significant amount of the area&rsquo;s income until just a few decades ago. Using real artifacts, &ldquo;Changing the Landscape&rdquo; will explore this important history from a variety of angles, touching on life as a miner, the uses of Byerst&rsquo;s metals, Curtis Moss and other famous figures in mining, and more.</p>\r\n\r\n<p>The exhibit has been curated by Fiona Chandler, Sammons History Museum&rsquo;s head curator, and its funding was provided by a grant from the Byerst Heritage Association. The Byerst Historical Society also generously loaned some materials from its archives.</p>\r\n\r\n<p>&ldquo;Changing the Landscape&rdquo; will run through June 25. It will be open during the museum&rsquo;s regular hours (10 a.m. to 5 p.m., Tuesday through Saturday) and entrance will be included with admission to the museum ($7 for adults, $5 for seniors, free for children under 12 and museum members). Tickets can be reserved in advance on www. sammongshistorymuseum.org or purchased on-site.</p>\r\n'),
(13, 7, 'refer to the following online chat discussion.', '<p><strong>Cynthia Gray (2:03 p.m.)</strong></p>\n\n<p>Hi team. Since I had to cancel our meeting on the Charleston trade show this morning, I was hoping to have a quick chat on here about it. Can everyone give me their status updates?</p>\n\n<hr />\n<p><strong>Victor Powell (2:04 p.m.)</strong> I booked the accommodations and travel tickets as directed after the last planning meeting. Everyone should have received them in the first week of the month.</p>\n\n<hr />\n<p><strong>Khadija Abbar (2:05 p.m.)</strong> Actually, Cynthia, I was hoping to talk to you about the trade show. I have a couple of ideas for creative product giveaways, and it would be faster to go over them in person.</p>\n\n<hr />\n<p><strong>Hyun-Gi Lee (2:06 p.m.)</strong> I&rsquo;ve been posting on social media about once a week to let people know that we&rsquo;ll be attending. Next week, I&rsquo;ll send out the e-mails to current and potential clients to schedule some booth meetings during the show.</p>\n\n<hr />\n<p><strong>Cynthia Gray (2:07 p.m.)</strong> I have some time tomorrow morning. How&rsquo;s 9:30? Cynthia Gray (2:08 p.m.) Great, Hyun-Gi. How&rsquo;s the script outline for the IR-380 demonstration coming along?</p>\n\n<hr />\n<p><strong>Khadija Abbar (2:10 p.m.)</strong> Perfect. I&rsquo;ll see you then.</p>\n\n<hr />\n<p><strong>Hyun-Gi Lee (2:11 p.m.)</strong> OK, but I&rsquo;m a little uncertain about including the part about how our product engineer came up with the idea. It&rsquo;s cute, but it doesn&rsquo;t feel necessary.</p>\n\n<hr />\n<ol>\n	<li><strong>Cynthia Gray (2:13 p.m.)</strong> Well, remember that we noticed a lot of popular demonstrations at this show last year included personal stories like that. I&rsquo;d like to hear you practice it, and if it doesn&rsquo;t sound right, we can take it out.</li>\n</ol>\n'),
(14, 7, 'refer to the following article', '<p><strong>&nbsp; &nbsp; &nbsp; &nbsp;Companies Work to Increase Recycling in Fashion Industry</strong></p>\n\n<p>Over the past two decades, clothing production worldwide has nearly doubled. At the same time, people are wearing each of their clothing items fewer times on average before discarding them. ----1---. This means that the amount of clothing waste has increased, with much of it going into landfills. Fortunately, businesses are coming up with more and more ways to address this issue. ----2---. One such company is EverFabric, a textile recycling company based in Steenport. Like its competitors, EverFabric sorts the cotton items it receives and reduces them to a pulp, out of which it forms new fibers. However, the company&rsquo;s patented fabric analysis technology enables more detailed sorting, which means that some of the resulting fibers are of higher quality. EverFabric&rsquo;s highest-grade recycled fibers have been used in Inger Apparel and Denney Sports products. ----4---. Martz Footwear approaches sustainability from a different angle. Its shoes are specially designed with the future in mind. ----4---. When they are no longer wearable, their mostly-natural materials can be easily separated to allow for biodegradation (in the right conditions) or recycling. Martz even offers the latter service itself, and has teamed up with Nationwide Parcel Service to offer free returns of used shoes in order to encourage customers to participate. For the planet&rsquo;s sake, the two companies hope to continue attracting the industry and consumer interest necessary to make their operations successful.</p>\n'),
(15, 7, 'refer to the following memo and guidelines. ', '<h1><strong>MEMO</strong></h1>\n\n<p>To: All regional managers</p>\n\n<p>From: Heather Chavez</p>\n\n<p>Re: Announcement</p>\n\n<p>Date: May 15</p>\n\n<p>Effective immediately, all Garmon Insurance management and staff are instructed not to ask job candidates about their current or past pay rates. The Rockwell state legislature has enacted a ban against the practice in order to reduce pay discrimination against historically marginalized groups. As a proponent of workplace diversity, Garmon Insurance has decided to mandate this change across all of our offices, even those located in other states. Our hiring guidelines will be revised accordingly. Please make your staff aware of this.</p>\n\n<p>Heather Chavez</p>\n\n<p>Vice President of Human Resources</p>\n\n<hr />\n<h1><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Guidelines for Hiring Managers</strong></h1>\n\n<p>1. Create/revise the job advertisement based on the responsibilities, needs, and budget of the position to be filled. (See Appendix A for sample.)</p>\n\n<p>2. Send the job ad to an HR representative for review and internal/external posting. The representative will send you the applicants&rsquo; application materials after they are received.</p>\n\n<p>3. Review the application materials, choose a small number of top candidates, and schedule interviews.</p>\n\n<p>4. Prepare for the interviews by thinking deeply about the position and creating appropriate questions.</p>\n\n<p>5. In the interviews, refrain from asking candidates about protected characteristics such as family status or disability, as well as their salary history. (See Appendix B.)</p>\n\n<p>6. Also in the interviews, ensure that you clearly explain the job to candidates and give them time to ask any questions they have.</p>\n\n<p>7. (Repeat steps 3&ndash;6 as necessary.) Discuss the candidates with any other interviewers and choose one to offer the position to.</p>\n\n<p>8. Send the chosen candidate a written job offer, reviewed by the HR representative, that specifies the major details of the position. (See Appendix C.)</p>\n\n<p>9. Once the position is filled, send a notice informing all interviewed candidates of this. (See Appendix D.)</p>\n'),
(16, 7, 'refer to the following advertisement and e-mail.  ', '<h1><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Grell Street Studio</strong></h1>\n\n<p>427 Grell Street, Melbourne</p>\n\n<p>+61 3 9428 5221 ∙ www.gs-studio.com.au</p>\n\n<p>Grell Street Studio has been the recording home of some of Melbourne&rsquo;s top musicians over the past 40 years. Mindy Briggs, The Emotioneers, and many more have made albums here. But while we are proud of our history, we always strive toward the future: the studio boasts the latest in audio technology, and we have just completed renovations to improve its acoustics. If you need a place to record your musical masterpiece, look no further!</p>\n\n<p><strong>Overview</strong>: Grell Street Studio has a &ldquo;live&rdquo; room with ample space for a full band, plus two isolation rooms for recording individual performers. Though we recommend bringing your own guitars, the studio is stocked with some basic models, as well as a full drum kit, grand piano (tuning fee: $125), and more, all of which are at your disposal. If you need personnel, our experienced in-house recording engineers are available for reasonable rates, and we have many contacts among local freelance musicians.</p>\n\n<p><strong>Rates:</strong></p>\n\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\n	<tbody>\n		<tr>\n			<td>Full-day (10 a.m. &ndash; 8 p.m.)</td>\n			<td>$500 AUD ($50 AUD per hour)</td>\n		</tr>\n		<tr>\n			<td>Half-day (10 a.m. &ndash; 3 p.m. or 3 p.m. &ndash; 8 p.m.)</td>\n			<td>$300 AUD ($60 AUD per hour)</td>\n		</tr>\n		<tr>\n			<td>\n			<p>Nighttime (8 p.m. &ndash; 1 a.m.)</p>\n\n			<p>Overtime</p>\n			</td>\n			<td>\n			<p>$225 AUD ($45 AUD per hour)</p>\n\n			<p>$75 AUD per hour</p>\n			</td>\n		</tr>\n	</tbody>\n</table>\n\n<hr />\n<hr />\n<p><strong>From:&nbsp;</strong>Beth Schwartz</p>\n\n<p><strong>To:&nbsp;</strong>Dwayne Huff</p>\n\n<p><strong>Date:&nbsp;</strong>20 September</p>\n\n<p><strong>Subject:&nbsp;</strong>Recording this afternoon?</p>\n\n<p>Hi Dwayne,</p>\n\n<p>I&rsquo;m the representative from Grell Street Studio that you spoke with earlier this week. If you haven&rsquo;t already booked another recording space, I&rsquo;d like to give you the chance to use ours at a discount. We&rsquo;ve had a sudden cancellation for our afternoon half-day session, so the studio will be free from 3 to 8 p.m. today. Since you&rsquo;re recording an audiobook, which doesn&rsquo;t require as much preparation as some of our other clients&rsquo; work, I thought you could take that slot. Because of the short notice, we would only charge you our nighttime rate. Are you interested? If so, please call us immediately. Best,</p>\n\n<p>Beth Schwartz</p>\n'),
(17, 7, 'refer to the following notice, article, and work order.\r\n', '<p><strong>Attention, Public Services Department Employees:</strong></p>\n\n<p>In order to prepare you to use our new work order system, there will be training sessions in Conference Room A on Monday, Tuesday, and Wednesday, June 14&ndash;16, from 9 a.m. to 12 p.m. All employees must attend one of these sessions (the contents of each session are the same, so attending on more than one day is not necessary). If you would prefer a certain session for scheduling reasons, please notify Annette Mueller (ext. 103); otherwise, employees will be assigned to sessions at the end of this week.</p>\n\n<hr />\n<hr />\n<p><strong>Public Services Dept. Unveils New Work Order System</strong></p>\n\n<p>By Carolyn Woods</p>\n\n<hr />\n<p>PEARSTON (June 27) &mdash;At a press conference yesterday, Pearston&rsquo;s Public Services Department announced that it has digitized its work order system.</p>\n\n<p>Under the new system, all of the departments&rsquo; crews that do on-site work will carry tablet computers that are connected to a geographic information system (GIS). The GIS carries information about the assets each division is responsible for; for example, as Stormwater Division head Enrique Herrera showed attendees, his crews can use it to see a detailed map of all of the city&rsquo;s drains, pipes, and other structures. They can then instantly report and begin the process of addressing problems by selecting the affected facility and filling out an electronic work order form.</p>\n\n<p>At the conference, representatives from several of the departments&rsquo; divisions praised the advantages and capabilities of the new system. Parks supervisor Tracy Kim said it would speed up repair processes, while Tom Andrews of Recycling &amp; Trash Services pointed out that it would also reduce paperwork.</p>\n\n<hr />\n<hr />\n<h1><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Work Order</strong></h1>\n\n<p><strong>Reference no.</strong> 39123</p>\n\n<p><strong>Reported by</strong> Richard Saunders <strong>Submitted</strong> July 1, 8:42 a.m.</p>\n\n<p><strong>Asset type</strong> Tree&nbsp; &nbsp;<strong>Location</strong> Willitz Recreation Area, Section 5</p>\n\n<p>D<strong>escription of issue</strong></p>\n\n<p>15-foot tree branch has split off and fallen between picnic tables. Likely due to high winds.</p>\n\n<p><strong>Recommendation</strong> Send two-person crew to cut branch into smaller pieces using chainsaw; remove from site in pickup truck.</p>\n\n<p><strong>Status</strong> OPEN</p>\n'),
(18, 7, 'refer to the following Web page, e-mail, and review.', '<p>www.palmhillstours.com/tt |</p>\n\n<p>Palm Hills Tours is honored to entertain and educate visitors to our desert oasis and its surroundings. The following are our most popular offerings (see here for our full tour catalog). Tours are offered Tuesday through Saturday during the high season (January to April); availability may be limited in other months due to weather.</p>\n\n<hr />\n<p><strong>Architecture Tour</strong></p>\n\n<p>No trip to Palm Hills would be complete without appreciating its mid-century modern architecture. This guided bicycle tour will take you to the most famous sites, including City Hall and Merle White&rsquo;s house. Bike and helmet provided. Duration: 90 minutes. Leaves at 9 a.m. and 5 p.m.</p>\n\n<p><strong>Celebrity Tour </strong>See the homes of some of your favorite classic stars from the comfort of an air-conditioned minibus! Our expert guide will share fascinating trivia about celebrities from Dorothy Girard to Merle White and their time in Palm Hills. Duration: two hours. Leaves every two hours from 9 a.m. to 3 p.m.</p>\n\n<p><strong>Mountain Tour</strong> Spend the morning hiking in the Najera Mountains! A trained guide will show you stunning views of Palm Hills, desert plants, and more. Hiking pole, backpack loaded with water and snacks provided. Leaves at 7 a.m. and returns at 11 a.m. to avoid the midday heat.</p>\n\n<p><strong>Windmill Tour</strong> In this unique tour, participants drive their own cars along a specified route to see the enormous wind turbines north of Palm Hills. We provide a handheld device containing audio explanations of each site. Duration: approximately two hours. Available continuously during business hours, but reservation required.</p>\n\n<hr />\n<hr />\n<hr />\n<p><strong>From:&nbsp;</strong></p>\n\n<p><strong>To:</strong></p>\n\n<p><strong>Subject:</strong></p>\n\n<p><strong>Date:</strong></p>\n\n<p>Dear Mr. Beck,</p>\n\n<p>This e-mail confirms your reservation for the following tours:</p>\n\n<p>Title Day/Time Participants Windmill Tour February 8, 10 a.m. N/A Architecture Tour February 9, 9 a.m. 2 adults, 2 children</p>\n\n<p>All fees must be paid one week before your first tour (see instructions here).</p>\n\n<p>A full refund is available for cancellations made at least 24 hours in advance.</p>\n\n<p>Palm Hills Tours</p>\n\n<hr />\n<hr />\n<p><strong>Review of &ldquo;Architecture Tour&rdquo; (Palm Hills Tours)</strong></p>\n\n<p>By Darryl Beck</p>\n\n<p>This tour is a great introduction to Palm Hills architecture. It passes all the major sites, and the guide, Oksana, gives interesting explanations of their features and even some fun details about their history (you should hear her story about Merle White&rsquo;s house!). However, even though our tour finished at 10:30 a.m., the day was quite warm by then, making the cycling pretty tiring at the end. You really have to keep the heat in mind in Palm Hills.</p>\n'),
(19, 7, 'refer to the following e-mail, survey, and newsletter article.', '<p><strong>From:&nbsp;</strong>From: Sean Bowman</p>\n\n<p><strong>To:&nbsp;</strong>All staff</p>\n\n<p><strong>Subject:&nbsp;</strong>Cafeteria survey</p>\n\n<p><strong>Date:&nbsp;</strong>March 19</p>\n\n<p>Hello all,</p>\n\n<p>Moffing Group has seen a steady drop in use of the office cafeteria over the past year. To reverse this trend, we here in the human resources department are working with the consulting firm Kruse, Inc., to evaluate and improve the facility.</p>\n\n<p>At this stage, we need to gather feedback on the cafeteria. Please click on this link to take a short survey on a third-party platform. It should require no more than 10 minutes to complete, and your name will be removed before it is relayed to us. You have until Friday, March 30. Thanks in advance for your cooperation.</p>\n\n<p>Sincerely, Sean Bowman</p>\n\n<hr />\n<hr />\n<hr />\n<h1><strong>Moffing Group Cafeteria Survey</strong></h1>\n\n<p>Participant: Carolina Fisk (c.fisk@moffinggroup.com)</p>\n\n<p><strong>Food-related Factors</strong> Please rate your agreement with the following statements.</p>\n\n<p>(1 = strongly disagree, 5 = strongly agree)</p>\n\n<hr />\n<p>The cafeteria&rsquo;s food tastes good. 1 2 3 4 5</p>\n\n<p>The cafeteria offers a sufficient variety of foods. 1 2 3 4 5</p>\n\n<p>The cafeteria&rsquo;s food is healthful. 1 2 3 4 5</p>\n\n<p><strong>Comments:</strong></p>\n\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\n	<tbody>\n		<tr>\n			<td>I wish the cafeteria provided detailed ingredient lists for its dishes. I have a mild sensitivity to shellfish (it causes my skin to become red and itchy), and a couple of times it has been triggered unexpectedly by cafeteria meals. This makes me reluctant to eat there.</td>\n		</tr>\n	</tbody>\n</table>\n\n<hr />\n<hr />\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"height:400px; width:600px\">\n	<tbody>\n		<tr>\n			<td>\n			<p><strong>Change Coming to the Office Cafeteria</strong></p>\n\n			<p>Moffing Group has hired a new food service provider, Appetina Services, to manage the corporate cafeteria. Appetina has a wellknown track record of supplying mouthwatering food at reasonable prices. Moffing hopes that this will increase enthusiasm about one of the major perks it offers staff. Human Resources director Akari Tanaka explains, &ldquo;The staff survey we conducted showed that people were tired of the lack of options and the same dishes being offered</p>\n			</td>\n			<td>by our old provider. Appetina draws on a wide range of cuisines for its menus, from Indian to Greek to Brazilian. The dishes are made of fresh, healthy ingredients. Plus they&rsquo;re all delicious.&rdquo; Despite the upgrade, Ms. Tanaka says that the cost of cafeteria fare will not go up, thanks to an adjustment to the company meal subsidy. &ldquo;You&rsquo;ll still be able to get a satisfying meal for $5,&rdquo; she promises. Employees can try out Appetina&rsquo;s offerings starting from October 1. Please note that the cafeteria will be closed during the last week of September to facilitate the changeover</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>&nbsp;</p>\n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `question_image`
--

CREATE TABLE `question_image` (
  `id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `image_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `question_image`
--

INSERT INTO `question_image` (`id`, `question_id`, `image_name`) VALUES
(1, 1, 'cau1.png'),
(2, 2, 'cau2.png'),
(3, 3, 'cau3.png'),
(4, 4, 'cau4.png'),
(5, 5, 'cau5.png'),
(6, 6, 'cau6.png'),
(8, 301, 'cau301.png'),
(9, 302, 'cau302.png'),
(10, 303, 'cau303.png'),
(11, 304, 'cau304.png'),
(12, 305, 'cau305.png'),
(13, 306, 'cau306.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `last_login_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `first_name`, `last_name`, `status`, `last_login_at`) VALUES
(1111, '111111', '1111111111', '1111111', '1111', '111111', 1, '2023-04-20 18:42:14'),
(1112, 'tinh', '802df3c585cfbaf52752a907665bc12f', 'congtinhpy2017@gmail.com', 'tinh', 'tinh', 1, '2023-04-25 08:32:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wrong_answer_question`
--

CREATE TABLE `wrong_answer_question` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `selected_answer` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `wrong_answer_question`
--

INSERT INTO `wrong_answer_question` (`id`, `user_id`, `question_id`, `selected_answer`) VALUES
(1, 1111, 1, 4),
(2, 1111, 2, 4),
(3, 1111, 1, 4),
(4, 1111, 1, 2),
(5, 1111, 50, 1),
(6, 1111, 1, 4),
(7, 1111, 3, 2),
(8, 1111, 2, 3),
(9, 1111, 1, 4),
(10, 1111, 3, 3),
(11, 1111, 2, 3),
(12, 1111, 3, 3),
(13, 1111, 2, 3),
(14, 1111, 1, 4);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_exam_author_admin_id` (`author`);

--
-- Chỉ mục cho bảng `exam_part`
--
ALTER TABLE `exam_part`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `exam_question_group`
--
ALTER TABLE `exam_question_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_w_a_q_g_id_question_group_id` (`question_group_id`),
  ADD KEY `fk_w_a_q_g_id_exam_id` (`exam_id`);

--
-- Chỉ mục cho bảng `exam_question_single`
--
ALTER TABLE `exam_question_single`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_w_a_q_s_id_question_id` (`question_id`),
  ADD KEY `fk_w_a_q_s_id_exam_id` (`exam_id`);

--
-- Chỉ mục cho bảng `exam_to_exam_part`
--
ALTER TABLE `exam_to_exam_part`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_e_t_e_p_id_exam_id` (`exam_id`),
  ADD KEY `fk_e_t_e_p_id_exam_part_id` (`exam_part_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_posts_author_admin_id` (`author`),
  ADD KEY `fk_posts_category_id_category_id` (`category_id`);

--
-- Chỉ mục cho bảng `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_question_1` (`exam_part_id`),
  ADD KEY `fk_question_2` (`question_group_id`),
  ADD KEY `fk_question_3` (`audio_id`);

--
-- Chỉ mục cho bảng `question_answer`
--
ALTER TABLE `question_answer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_q_a_question_id_question_id` (`question_id`);

--
-- Chỉ mục cho bảng `question_audio`
--
ALTER TABLE `question_audio`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `question_group`
--
ALTER TABLE `question_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_q_g_e_part_id_exam_part_id` (`exam_part_id`);

--
-- Chỉ mục cho bảng `question_image`
--
ALTER TABLE `question_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_q_i_q_id_question_id` (`question_id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `wrong_answer_question`
--
ALTER TABLE `wrong_answer_question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_w_a_q_user_id_user_id` (`user_id`),
  ADD KEY `fk_w_a_q_question_id_question_id` (`question_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `exam`
--
ALTER TABLE `exam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT cho bảng `exam_part`
--
ALTER TABLE `exam_part`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `exam_question_group`
--
ALTER TABLE `exam_question_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `exam_question_single`
--
ALTER TABLE `exam_question_single`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT cho bảng `exam_to_exam_part`
--
ALTER TABLE `exam_to_exam_part`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=307;

--
-- AUTO_INCREMENT cho bảng `question_answer`
--
ALTER TABLE `question_answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1025;

--
-- AUTO_INCREMENT cho bảng `question_audio`
--
ALTER TABLE `question_audio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT cho bảng `question_group`
--
ALTER TABLE `question_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `question_image`
--
ALTER TABLE `question_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1113;

--
-- AUTO_INCREMENT cho bảng `wrong_answer_question`
--
ALTER TABLE `wrong_answer_question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `exam`
--
ALTER TABLE `exam`
  ADD CONSTRAINT `fk_exam_author_admin_id` FOREIGN KEY (`author`) REFERENCES `admin` (`id`);

--
-- Các ràng buộc cho bảng `exam_question_group`
--
ALTER TABLE `exam_question_group`
  ADD CONSTRAINT `fk_w_a_q_g_id_exam_id` FOREIGN KEY (`exam_id`) REFERENCES `exam` (`id`),
  ADD CONSTRAINT `fk_w_a_q_g_id_question_group_id` FOREIGN KEY (`question_group_id`) REFERENCES `question_group` (`id`);

--
-- Các ràng buộc cho bảng `exam_question_single`
--
ALTER TABLE `exam_question_single`
  ADD CONSTRAINT `fk_w_a_q_s_id_exam_id` FOREIGN KEY (`exam_id`) REFERENCES `exam` (`id`),
  ADD CONSTRAINT `fk_w_a_q_s_id_question_id` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`);

--
-- Các ràng buộc cho bảng `exam_to_exam_part`
--
ALTER TABLE `exam_to_exam_part`
  ADD CONSTRAINT `fk_e_t_e_p_id_exam_id` FOREIGN KEY (`exam_id`) REFERENCES `exam` (`id`),
  ADD CONSTRAINT `fk_e_t_e_p_id_exam_part_id` FOREIGN KEY (`exam_part_id`) REFERENCES `exam_part` (`id`);

--
-- Các ràng buộc cho bảng `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `fk_posts_author_admin_id` FOREIGN KEY (`author`) REFERENCES `admin` (`id`),
  ADD CONSTRAINT `fk_posts_category_id_category_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Các ràng buộc cho bảng `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `fk_question_1` FOREIGN KEY (`exam_part_id`) REFERENCES `exam_part` (`id`),
  ADD CONSTRAINT `fk_question_2` FOREIGN KEY (`question_group_id`) REFERENCES `question_group` (`id`),
  ADD CONSTRAINT `fk_question_3` FOREIGN KEY (`audio_id`) REFERENCES `question_audio` (`id`);

--
-- Các ràng buộc cho bảng `question_answer`
--
ALTER TABLE `question_answer`
  ADD CONSTRAINT `fk_q_a_question_id_question_id` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`);

--
-- Các ràng buộc cho bảng `question_group`
--
ALTER TABLE `question_group`
  ADD CONSTRAINT `fk_q_g_e_part_id_exam_part_id` FOREIGN KEY (`exam_part_id`) REFERENCES `exam_part` (`id`);

--
-- Các ràng buộc cho bảng `question_image`
--
ALTER TABLE `question_image`
  ADD CONSTRAINT `fk_q_i_q_id_question_id` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`);

--
-- Các ràng buộc cho bảng `wrong_answer_question`
--
ALTER TABLE `wrong_answer_question`
  ADD CONSTRAINT `fk_w_a_q_question_id_question_id` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`),
  ADD CONSTRAINT `fk_w_a_q_user_id_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
