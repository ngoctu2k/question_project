-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 04, 2022 lúc 12:31 PM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `question_project`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `questions`
--

CREATE TABLE `questions` (
  `name` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `question` text COLLATE utf8_vietnamese_ci NOT NULL,
  `time` text COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `questions`
--

INSERT INTO `questions` (`name`, `question`, `time`) VALUES
('2k', 'anh tu co dep trai khong?', ''),
('2k', 'anh tu co dep trai khong?', ''),
('21212', '1212121', ''),
('111', '11111', ''),
('1', '11212121', ''),
('', '111111', ''),
('111111', '1111111', ''),
('mai', 'mai', ''),
('Trần Thị Mai', 'yêu em không?', ''),
('Trần Thị Mai', 'yêu em không?', ''),
('Trần Thị Mai', 'yêu em không?', ''),
('Trần Thị Mai', 'yêu em không?', ''),
('TU Tran Ngoc 1 (VTI.P2)', 'alo?', ''),
('TU Tran Ngoc 1 (VTI.P2)', 'alo?', ''),
('TU Tran Ngoc 1 (VTI.P2)', 'alo?', ''),
('TU Tran Ngoc 1 (VTI.P2)', 'alo?', ''),
('TU Tran Ngoc 1 (VTI.P2)', 'alo?', ''),
('Trần Thị Mai', 'yêu em không?', ''),
('mai', '121212121', ''),
('mai', '121212121', ''),
('mai', '121212121', ''),
('TU Tran Ngoc 1 (VTI.P2)', '1212121', ''),
('TU Tran Ngoc 1 (VTI.P2)121', '1212121', ''),
('TU Tran Ngoc 1 (VTI.P2)121', '1212121', ''),
('1', '1111', ''),
('ong chu kim 2k', '2k2k2k', '4-4-2022 16:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `passwword` varchar(22) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `username`, `passwword`) VALUES
(1, 'ongchukim2k', 'ongchukim2k');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
