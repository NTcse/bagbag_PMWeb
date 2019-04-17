-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 17, 2019 lúc 04:29 AM
-- Phiên bản máy phục vụ: 10.1.38-MariaDB
-- Phiên bản PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quan_ly_tui_xach`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `ID` int(11) NOT NULL,
  `mahoadon` varchar(10) NOT NULL,
  `matuixach` varchar(10) NOT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`ID`, `mahoadon`, `matuixach`, `soluong`) VALUES
(1, 'gh00087', 'bab003', 32),
(54, 'gh0006', 'bk003', 27),
(56788, 'gh00054', 'bpk002', 94);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giohang`
--

CREATE TABLE `giohang` (
  `magiohang` varchar(10) NOT NULL,
  `sdt` varchar(10) NOT NULL,
  `matuixach` varchar(10) NOT NULL,
  `soluong` int(2) NOT NULL,
  `trangthai` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `giohang`
--

INSERT INTO `giohang` (`magiohang`, `sdt`, `matuixach`, `soluong`, `trangthai`) VALUES
('gh0000567', '0667888834', 'beb001', 21, 1),
('gh00054', '0667888834', 'beb001', 32, 0),
('gh0006', '044757757', 'bab003', 25, 1),
('gh00087', '09455666', 'blb004', 43, 1),
('gh001', '04456667', 'bab001', 23, 1),
('gh002', '09455677', 'blb003', 5, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `mahoadon` varchar(10) NOT NULL,
  `sdt` varchar(10) NOT NULL,
  `ngaydat` datetime NOT NULL,
  `trigia` double NOT NULL,
  `diachinhanhang` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`mahoadon`, `sdt`, `ngaydat`, `trigia`, `diachinhanhang`) VALUES
('gh00054', '04566777', '2019-01-11 16:25:00', 678902, '180 Cao Lỗ, quận 8,TPHCM'),
('gh0006', '09455677', '2019-04-19 12:00:05', 655.6, '180 Cao Lỗ, quận 8,TPHCM'),
('gh00087', '05677899', '2019-04-08 13:00:00', 546789, '180 Cao Lỗ, quận 8,TPHCM'),
('gh001', '04456667', '0000-00-00 00:00:00', 655.6, '180 Cao Thị Lỗ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `sdt` varchar(10) NOT NULL,
  `tenkh` varchar(50) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `matkhau` varchar(32) NOT NULL,
  `kieu` varchar(5) CHARACTER SET utf8 DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`sdt`, `tenkh`, `diachi`, `matkhau`, `kieu`) VALUES
('016875452', 'NguyenVanTeo', '22 Binh Hung Hoa', '123456', 'user'),
('03334555', 'Lương An Vinh', '98 Nguyễn Thị Thập, quận 7, TPHCM', '88995444', 'user'),
('04456667', 'Nguyễn An Tế', '89 Nguyễn Thị Minh Khai, quận 8, TPHCM', '99876444', 'user'),
('044757757', 'Nguyễn Thị Thanh Xuân', '76 Phạm Thế Hiển, quận 8,TPHCM', '789990444', 'user'),
('04555678', 'Lê Phạm Thành Đạt', '98 Lê Trọng Tín, quận Tân Phú,TPHCM', '89966555', 'user'),
('045666777', 'Trần Đăng Duy', '980 Lê Trọng Tín, quận 8, TPHCM', '35567777', 'user'),
('04566777', 'Nguyễn Lạc An Thư', '456 Hưng Phú, quận 8, TPHCM', '67889998', 'user'),
('05677888', 'Nguyễn Cao Toàn Thiện', '378 Hưng Phú, quận 8, TPHCM', '2345667', 'user'),
('05677899', 'Nguyễn Tiến Đạt', '78 Phạm Hùng, quận 8, TPHCM', '6788999', 'user'),
('05678899', 'Lê Thị Mỹ Dung', '87 Nguyễn Thị Thập, quận 7, TPHCM', '288383839', 'user'),
('0667888834', 'Trần Quang', '45 Nguyễn Thông, quận 3, TPHCM', '887665334', 'user'),
('0765558734', 'Nguyễn Thị Đề', '87 Trường Chinh, quận Tân Bình, TPHCM', '78388488', 'user'),
('09455666', 'Nguyễn Ngọc Lâm', '43 Nguyễn Thị Minh Khai, quận 5, TPHCM', '45677889', 'user'),
('09455677', 'Lương Nguyễn Phi Hùng', '81/4k Tổ 8, ấp MH1, xã Trung Chánh, Hóc Môn', '5678899', 'user'),
('094556799', 'Nguyễn Quốc Nguyên Thông', '76 Hưng Phú, quận 8, TPHCM', '23566778', 'user'),
('098787567', 'admin', '120/32 lo D cao lo lo cao, Cau Giay, Ha Noi', '123456', 'admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `manhacungcap` varchar(10) NOT NULL,
  `tennhacungcap` varchar(50) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `daidien` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `nhacungcap`
--

INSERT INTO `nhacungcap` (`manhacungcap`, `tennhacungcap`, `diachi`, `daidien`) VALUES
('akn', 'Anne Klein', '7773 Studebaker St. Brooklyn, NY 11230', 'Mary Queen'),
('ali', 'Art Licensing International', '575 Fawn Drive Brooklyn, NY 11203', 'Alexander James'),
('allb', 'Allied Brass', '7026 Pineknoll Rd. Brooklyn, NY 11235', 'Martin William'),
('amz', 'Amazon Collection', '8503 Linda Drive Yonkers, NY 10701', 'Terry Anderson'),
('aok', 'Art of Knot', '993 High Street Elmont, NY 11003', 'Jenny Grace'),
('aqm', 'Alexander McQueen', '91 W. Heather St. Staten Island, NY 10314', 'Alex Kohler'),
('Aria', 'Ariat', '9249 Newport Dr. Brooklyn, NY 11204', 'John Lennon'),
('arm', 'Armani', '86 York Street Forest Hills, NY 11375', 'Jack Hunter'),
('ars', 'Amer Rugs', '303 King Ave. New York, NY 10029', 'Sarah White'),
('ass', 'Acne Studios', '15 Hudson Ave. Rome, NY 13440', 'Philip Black'),
('awl', 'ArtWall', '980 West Edgewood St. Ithaca, NY 14850', 'Elliot Alderson'),
('ncc1', 'Cong Ty Thoi Trang Binh Minh', '423 Dien Bien Phu', 'Tien Dat'),
('ncc2', 'Cong Ty My Pham Han Quoc', '98 Nguyen Thi Minh Khai Q1', 'Hari Won'),
('ubb', 'United By Blue', '8 Manor Ave. \r\nShelton, CT', 'Đỗ Thị Thanh Trúc'),
('uma', 'Uma', '377 North Lancaster Street \r\nMinneapolis, MN', 'Nguyễn Thị Tuyết Nhung'),
('vct', 'Vince Camuto', '800 Arrowhead Ave. \r\nSaratoga Springs, NY', 'Phùng Viết Nhiên'),
('vsg', 'Via Spiga', '9233 Cypress Lane \r\nWenatchee, WA', 'Lương Thị Hân'),
('wcd', 'Willow Creek Designs', '67 Rock Creek Street \r\nKansas City, MO', 'Trần Thị Hồng Thi'),
('wol', 'Winners Only', '516 Elizabeth Road \r\nCherry Hill, NJ', 'Trần Nguyễn Cẩm Lai'),
('wth', 'Weston Home', '8654 Cardinal Ave. \r\nDrexel Hill, PA ', 'Trần Thị Ngọc Thanh'),
('xhf', 'Xia Home Fashions', '96 Chestnut Ave. \r\nGrand Blanc, MI', 'Vũ Quang Vĩnh'),
('ysk', 'Yoshiokubo', '3725 Wilkinson Street, Nashville, Tennessee', 'Trương Quang Mùi'),
('zon', 'Zanone', '4581 Deer Ridge Drive, Morristown, New Jersey', 'Nguyễn Quốc Nguyên Thông');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongtintuixach`
--

CREATE TABLE `thongtintuixach` (
  `matuixach` varchar(10) NOT NULL,
  `mau` varchar(25) NOT NULL,
  `chatlieu` varchar(25) NOT NULL,
  `baohanh` int(2) NOT NULL,
  `mota` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `thongtintuixach`
--

INSERT INTO `thongtintuixach` (`matuixach`, `mau`, `chatlieu`, `baohanh`, `mota`) VALUES
('bab001', 'red', 'vải', 12, 'Baby Bag'),
('bab002', 'blue, black,white', 'da', 12, 'Baby Bag'),
('bab003', 'blue, green, red', 'nhựa', 10, 'Baby Bag'),
('beb001', 'white, red,pink', 'vải', 8, 'Beach Bag'),
('beb002', 'red, black, white', 'vải', 10, 'Beach Bag'),
('bk003', 'black,white', 'vải', 6, 'Backpack'),
('blb001', 'black,white', 'da', 10, 'Bowler Bag'),
('blb002', 'red, white', 'vải', 12, 'Bowler Bag'),
('blb003', 'red, black', 'da', 4, 'Bowler Bag'),
('blb004', 'red, pink', 'vải', 7, 'Bowler Bag');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tuixach`
--

CREATE TABLE `tuixach` (
  `matuixach` varchar(10) NOT NULL,
  `img` text CHARACTER SET latin1,
  `dongia` double NOT NULL,
  `sl_ton` int(11) NOT NULL,
  `manhacungcap` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tuixach`
--

INSERT INTO `tuixach` (`matuixach`, `img`, `dongia`, `sl_ton`, `manhacungcap`) VALUES
('bab001', 'bab001.jpg', 50, 600, 'ncc1'),
('bab002', 'bab002.jpg', 83, 309, 'ncc2'),
('bab003', 'bab003.jpg', 72, 90, 'akn'),
('beb001', 'beb001.jpg', 50, 30, 'amz'),
('beb002', 'beb002.jpg', 100, 54, 'awl'),
('bk003', 'bk003.jpg', 200, 13, 'ali'),
('blb001', 'blb001.jpg', 56, 32, 'allb'),
('blb002', 'blb002.jpg', 45, 10, 'aok'),
('blb003', 'blb003.jpg', 59, 22, 'Aria'),
('blb004', 'blb004.jpg', 110, 37, 'arm'),
('bpk001', 'bpk001.jpg', 84, 54, 'ars'),
('bpk002', 'bpk002.jpg', 42, 29, 'ass'),
('bub001', 'bub001.jpg', 99, 17, 'awl'),
('dub001', 'dub001.jpg', 199, 15, 'ubb'),
('gmb001', 'gmb001.jpg', 30, 40, 'uma'),
('hdb001', 'hdb001.jpg', 50, 41, 'zon'),
('hob001', 'hob001.jpg', 20, 10, 'ysk'),
('hob002', 'hob002.jpg', 52, 100, 'xhf'),
('lab001', 'lab001.jpg', 100, 23, 'wth'),
('mes001', 'mes001.jpg', 35, 21, 'wol'),
('mes002', 'mes002.jpg', 41, 25, 'wcd'),
('pab001', 'pab001.jpg', 24, 110, 'vsg'),
('pab002', 'pab002.jpg', 54, 25, 'vct'),
('pab003', 'pab003.jpg', 21, 10, 'uma'),
('pab004', 'pab004.jpg', 10, 2, 'ubb'),
('pab005', 'pab005.jpg', 52, 10, 'awl'),
('sab001', 'sab001.jpg', 10, 20, 'ass'),
('sab002', 'sab002.jpg', 10, 24, 'ars'),
('sob001', 'sob001.jpg', 12, 33, 'arm'),
('sob002', 'sob002.jpg', 41, 11, 'Aria'),
('sob003', 'sob003.jpg', 24, 111, 'aqm'),
('tob001', 'tob001.jpg', 24, 143, 'aok'),
('tob002', 'tob002.jpg', 11, 46, 'amz');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `mahoadon` (`mahoadon`),
  ADD UNIQUE KEY `matuixach` (`matuixach`);

--
-- Chỉ mục cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`magiohang`),
  ADD KEY `sdt` (`sdt`),
  ADD KEY `matuixach` (`matuixach`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`mahoadon`),
  ADD KEY `sdt` (`sdt`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`sdt`);

--
-- Chỉ mục cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`manhacungcap`);

--
-- Chỉ mục cho bảng `thongtintuixach`
--
ALTER TABLE `thongtintuixach`
  ADD PRIMARY KEY (`matuixach`);

--
-- Chỉ mục cho bảng `tuixach`
--
ALTER TABLE `tuixach`
  ADD PRIMARY KEY (`matuixach`),
  ADD KEY `manhacungcap` (`manhacungcap`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56789;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon_ibfk_1` FOREIGN KEY (`mahoadon`) REFERENCES `hoadon` (`mahoadon`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitiethoadon_ibfk_2` FOREIGN KEY (`matuixach`) REFERENCES `tuixach` (`matuixach`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD CONSTRAINT `giohang_ibfk_1` FOREIGN KEY (`sdt`) REFERENCES `khachhang` (`sdt`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `giohang_ibfk_2` FOREIGN KEY (`matuixach`) REFERENCES `tuixach` (`matuixach`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`mahoadon`) REFERENCES `giohang` (`magiohang`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hoadon_ibfk_2` FOREIGN KEY (`sdt`) REFERENCES `khachhang` (`sdt`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `thongtintuixach`
--
ALTER TABLE `thongtintuixach`
  ADD CONSTRAINT `thongtintuixach_ibfk_1` FOREIGN KEY (`matuixach`) REFERENCES `tuixach` (`matuixach`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tuixach`
--
ALTER TABLE `tuixach`
  ADD CONSTRAINT `tuixach_ibfk_1` FOREIGN KEY (`manhacungcap`) REFERENCES `nhacungcap` (`manhacungcap`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
