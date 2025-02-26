-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 28, 2022 lúc 07:10 AM
-- Phiên bản máy phục vụ: 10.4.25-MariaDB
-- Phiên bản PHP: 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `laptopshop0data`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baiviet`
--

CREATE TABLE `baiviet` (
  `mabaiviet` int(11) NOT NULL,
  `hinh` varchar(255) NOT NULL,
  `manguoidung` int(11) NOT NULL,
  `tieude` varchar(255) NOT NULL,
  `mota` text NOT NULL,
  `motangan` varchar(255) NOT NULL,
  `ngaytao` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietphieunhap`
--

CREATE TABLE `chitietphieunhap` (
  `machitietphieunhap` int(11) NOT NULL,
  `maphieunhap` int(11) NOT NULL,
  `masanpham` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `dongia` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietphieuxuat`
--

CREATE TABLE `chitietphieuxuat` (
  `machitietphieuxuat` int(11) NOT NULL,
  `maphieuxuat` int(11) NOT NULL,
  `masanpham` int(11) NOT NULL,
  `baohanh` tinyint(4) NOT NULL,
  `soluong` int(11) NOT NULL,
  `dongia` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giamgia`
--

CREATE TABLE `giamgia` (
  `idgiamgia` int(11) NOT NULL,
  `magiamgia` varchar(50) NOT NULL,
  `mota` varchar(255) NOT NULL,
  `sotiengiam` double NOT NULL,
  `ngaybatdau` date NOT NULL,
  `ngayketthuc` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hangsanxuat`
--

CREATE TABLE `hangsanxuat` (
  `mahang` int(11) NOT NULL,
  `tenhang` varchar(50) NOT NULL,
  `loaihang` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `laptop`
--

CREATE TABLE `laptop` (
  `malaptop` int(11) NOT NULL,
  `tensanpham` varchar(255) NOT NULL,
  `cpu` varchar(100) NOT NULL,
  `ram` tinyint(4) NOT NULL,
  `carddohoa` tinyint(4) NOT NULL,
  `ocung` smallint(6) NOT NULL,
  `manhinh` float NOT NULL,
  `nhucau` varchar(50) NOT NULL,
  `tinhtrang` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loiphanphoi`
--

CREATE TABLE `loiphanphoi` (
  `maLH` int(11) NOT NULL,
  `hoten` varchar(255) NOT NULL,
  `sdt` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `noidung` text NOT NULL,
  `trangthai` tinyint(4) NOT NULL,
  `ngaytao` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

CREATE TABLE `nguoidung` (
  `manguoidung` int(11) NOT NULL,
  `hoten` varchar(50) NOT NULL,
  `sodienthoai` varchar(10) NOT NULL,
  `diachi` varchar(255) DEFAULT NULL,
  `trangthai` tinyint(4) NOT NULL,
  `loainguoidung` int(4) NOT NULL,
  `email` varchar(150) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `ngaytao` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieunhap`
--

CREATE TABLE `phieunhap` (
  `maphieunhap` int(11) NOT NULL,
  `manguoidung` int(11) NOT NULL,
  `ghichu` varchar(255) NOT NULL,
  `tongtien` double NOT NULL,
  `congno` double NOT NULL,
  `ngaytao` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieuxuat`
--

CREATE TABLE `phieuxuat` (
  `maphieuxuat` int(11) NOT NULL,
  `hotennguoinhan` varchar(50) NOT NULL,
  `sodienthoainguoinhan` varchar(10) NOT NULL,
  `diachinguoinhan` varchar(255) NOT NULL,
  `manguoidung` int(11) NOT NULL,
  `magiamgia` int(11) DEFAULT NULL,
  `ghichu` varchar(255) DEFAULT NULL,
  `tongtien` double NOT NULL,
  `tinhtranggiaohang` tinyint(4) NOT NULL,
  `hinhthucthanhtoan` tinyint(4) NOT NULL,
  `congno` double NOT NULL,
  `ngaytao` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phukien`
--

CREATE TABLE `phukien` (
  `maphukien` int(11) NOT NULL,
  `tenphukien` varchar(255) NOT NULL,
  `loaiphukien` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quatang`
--

CREATE TABLE `quatang` (
  `maquatang` int(11) NOT NULL,
  `tensanpham` varchar(255) NOT NULL,
  `masanpham` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `masanpham` int(11) NOT NULL,
  `tensanpham` varchar(255) NOT NULL,
  `baohanh` tinyint(4) NOT NULL,
  `mota` varchar(255) NOT NULL,
  `soluong` int(11) NOT NULL,
  `gianhap` double NOT NULL,
  `giaban` double NOT NULL,
  `giakhuyenmai` double NOT NULL,
  `mathuvienhinh` int(11) NOT NULL,
  `mahang` int(11) NOT NULL,
  `maquatang` int(11) DEFAULT NULL,
  `malaptop` int(11) DEFAULT NULL,
  `maphukien` int(11) DEFAULT NULL,
  `loaisanpham` tinyint(4) NOT NULL,
  `trangthai` int(11) NOT NULL DEFAULT 0,
  `ngaytao` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider`
--

CREATE TABLE `slider` (
  `maslider` int(11) NOT NULL,
  `tieude1` varchar(255) NOT NULL,
  `tieude2` varchar(255) NOT NULL,
  `tieude3` varchar(255) NOT NULL,
  `duongdan` varchar(255) DEFAULT NULL,
  `hinh` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thuvienhinh`
--

CREATE TABLE `thuvienhinh` (
  `mathuvienhinh` int(11) NOT NULL,
  `tensanpham` varchar(255) NOT NULL,
  `hinh` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  ADD PRIMARY KEY (`mabaiviet`),
  ADD KEY `manguoidung` (`manguoidung`);

--
-- Chỉ mục cho bảng `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  ADD PRIMARY KEY (`machitietphieunhap`),
  ADD KEY `maphieunhap` (`maphieunhap`,`masanpham`),
  ADD KEY `masanpham` (`masanpham`);

--
-- Chỉ mục cho bảng `chitietphieuxuat`
--
ALTER TABLE `chitietphieuxuat`
  ADD PRIMARY KEY (`machitietphieuxuat`),
  ADD KEY `maphieuxuat` (`maphieuxuat`,`masanpham`),
  ADD KEY `masanpham` (`masanpham`);

--
-- Chỉ mục cho bảng `giamgia`
--
ALTER TABLE `giamgia`
  ADD PRIMARY KEY (`idgiamgia`);

--
-- Chỉ mục cho bảng `hangsanxuat`
--
ALTER TABLE `hangsanxuat`
  ADD PRIMARY KEY (`mahang`);

--
-- Chỉ mục cho bảng `laptop`
--
ALTER TABLE `laptop`
  ADD PRIMARY KEY (`malaptop`);

--
-- Chỉ mục cho bảng `loiphanphoi`
--
ALTER TABLE `loiphanphoi`
  ADD PRIMARY KEY (`maLH`);

--
-- Chỉ mục cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`manguoidung`);

--
-- Chỉ mục cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD PRIMARY KEY (`maphieunhap`),
  ADD KEY `manguoidung` (`manguoidung`);

--
-- Chỉ mục cho bảng `phieuxuat`
--
ALTER TABLE `phieuxuat`
  ADD PRIMARY KEY (`maphieuxuat`),
  ADD KEY `manguoidung` (`manguoidung`,`magiamgia`),
  ADD KEY `magiamgia` (`magiamgia`);

--
-- Chỉ mục cho bảng `phukien`
--
ALTER TABLE `phukien`
  ADD PRIMARY KEY (`maphukien`);

--
-- Chỉ mục cho bảng `quatang`
--
ALTER TABLE `quatang`
  ADD PRIMARY KEY (`maquatang`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`masanpham`),
  ADD KEY `mathuvienhinh` (`mathuvienhinh`,`maquatang`,`malaptop`,`maphukien`),
  ADD KEY `malaptop` (`malaptop`),
  ADD KEY `maquatang` (`maquatang`),
  ADD KEY `mahang` (`mahang`),
  ADD KEY `maphukien` (`maphukien`);

--
-- Chỉ mục cho bảng `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`maslider`);

--
-- Chỉ mục cho bảng `thuvienhinh`
--
ALTER TABLE `thuvienhinh`
  ADD PRIMARY KEY (`mathuvienhinh`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  MODIFY `mabaiviet` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  MODIFY `machitietphieunhap` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `chitietphieuxuat`
--
ALTER TABLE `chitietphieuxuat`
  MODIFY `machitietphieuxuat` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `giamgia`
--
ALTER TABLE `giamgia`
  MODIFY `idgiamgia` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hangsanxuat`
--
ALTER TABLE `hangsanxuat`
  MODIFY `mahang` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `laptop`
--
ALTER TABLE `laptop`
  MODIFY `malaptop` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `loiphanphoi`
--
ALTER TABLE `loiphanphoi`
  MODIFY `maLH` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `manguoidung` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  MODIFY `maphieunhap` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `phieuxuat`
--
ALTER TABLE `phieuxuat`
  MODIFY `maphieuxuat` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `phukien`
--
ALTER TABLE `phukien`
  MODIFY `maphukien` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `quatang`
--
ALTER TABLE `quatang`
  MODIFY `maquatang` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `masanpham` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `slider`
--
ALTER TABLE `slider`
  MODIFY `maslider` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `thuvienhinh`
--
ALTER TABLE `thuvienhinh`
  MODIFY `mathuvienhinh` int(11) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  ADD CONSTRAINT `chitietphieunhap_ibfk_1` FOREIGN KEY (`maphieunhap`) REFERENCES `phieunhap` (`maphieunhap`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitietphieunhap_ibfk_2` FOREIGN KEY (`masanpham`) REFERENCES `sanpham` (`masanpham`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `chitietphieuxuat`
--
ALTER TABLE `chitietphieuxuat`
  ADD CONSTRAINT `chitietphieuxuat_ibfk_1` FOREIGN KEY (`maphieuxuat`) REFERENCES `phieuxuat` (`maphieuxuat`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitietphieuxuat_ibfk_2` FOREIGN KEY (`masanpham`) REFERENCES `sanpham` (`masanpham`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD CONSTRAINT `phieunhap_ibfk_1` FOREIGN KEY (`manguoidung`) REFERENCES `nguoidung` (`manguoidung`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `phieuxuat`
--
ALTER TABLE `phieuxuat`
  ADD CONSTRAINT `phieuxuat_ibfk_1` FOREIGN KEY (`manguoidung`) REFERENCES `nguoidung` (`manguoidung`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `phieuxuat_ibfk_2` FOREIGN KEY (`magiamgia`) REFERENCES `giamgia` (`idgiamgia`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`malaptop`) REFERENCES `laptop` (`malaptop`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`mathuvienhinh`) REFERENCES `thuvienhinh` (`mathuvienhinh`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sanpham_ibfk_4` FOREIGN KEY (`maquatang`) REFERENCES `quatang` (`maquatang`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `sanpham_ibfk_5` FOREIGN KEY (`mahang`) REFERENCES `hangsanxuat` (`mahang`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sanpham_ibfk_6` FOREIGN KEY (`maphukien`) REFERENCES `phukien` (`maphukien`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
