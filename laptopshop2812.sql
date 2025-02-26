-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 28, 2022 lúc 07:00 AM
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
-- Cơ sở dữ liệu: `laptopshop`
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

--
-- Đang đổ dữ liệu cho bảng `baiviet`
--

INSERT INTO `baiviet` (`mabaiviet`, `hinh`, `manguoidung`, `tieude`, `mota`, `motangan`, `ngaytao`) VALUES
(1, '639d405501b41_1671250005.jpg', 1, 'Top 10 Laptop Bán Chạy Nhất Năm 2022', '<h2>MacBook Air M2 được nhiều người tin d&ugrave;ng&nbsp;</h2>\r\n\r\n<p><a href=\"https://phongvu.vn/macbook-air-m2-2022-13-6-inch-z15y00051--s220806189?sku=220806189\">MacBook Air M2</a>&nbsp;đứng đầu danh sắc kh&ocirc;ng phải v&igrave; n&oacute; mạnh nhất hay cao cấp nhất m&agrave; v&igrave; n&oacute; ph&ugrave; hợp với nhiều người nhất. N&oacute; kết hợp tốt giữa sức mạnh t&iacute;nh di động v&agrave; t&iacute;nh thẩm mỹ v&agrave; tất cả những yếu tố đ&oacute; lại đi c&ugrave;ng một vi&ecirc;n pin đủ tốt, những đặc điểm đ&oacute; đ&atilde; khiến cho MacBook Air M2 trở th&agrave;nh sự lựa chọn h&agrave;ng đầu.&nbsp;</p>\r\n\r\n<p><img alt=\"MacBook Air M2 \" src=\"https://phongvu.vn/cong-nghe/wp-content/uploads/sites/2/2022/12/MacBook-Air-M2.jpg\" style=\"height:450px; width:800px\" /></p>\r\n\r\n<p>MacBook Air M2</p>\r\n\r\n<p>Cấu h&igrave;nh cơ bản bao gồm bộ nhớ 8GB, dung lượng lưu trữ 256GB, CPU 8 nh&acirc;n c&oacute; gi&aacute; khởi điểm 1.199 USD. C&oacute; thể MacBook Air M2 thay đổi một t&iacute; về thiết kế huyền thoại của d&ograve;ng Air nhưng n&oacute; vẫn giữ lại những thứ đủ cần thiết như MagSafe, Touch ID v&agrave; b&agrave;n ph&iacute;m cắt k&eacute;o, đồng thời bổ sung th&ecirc;m một webcam 1080p mới v&agrave; hai t&ugrave;y chọn m&agrave;u mới.</p>\r\n\r\n<p>V&agrave; nếu anh em cảm thấy MacBook Air M2 ngon nhưng gi&aacute; vẫn cao th&igrave; MacBook Air M1 l&agrave; một gợi &yacute; thay thế kh&ocirc;ng tồi với m&agrave;n h&igrave;nh 13,3 inch 2560 x 1600, Touch ID, webcam 720p, cảm biến v&acirc;n tay v&agrave; b&agrave;n ph&iacute;m cắt k&eacute;o.&nbsp;</p>\r\n\r\n<h2>MacBook Pro 16 inch hoặc MacBook Pro 14 inch&nbsp;</h2>\r\n\r\n<p>Dĩ nhi&ecirc;n nằm trong danh s&aacute;ch đ&aacute;ng mua trong năm 2022 th&igrave; kh&ocirc;ng thể thiếu&nbsp;<a href=\"https://phongvu.vn/macbook-pro-16-inch-z14v00122--s220806146?sku=220806146\">MacBook Pro 16 inch</a>&nbsp;l&agrave; một chiếc MacBook mạnh nhất m&agrave; Apple từng sản xuất. Dĩ nhi&ecirc;n n&oacute; c&oacute; một mức gi&aacute; kh&ocirc;ng dễ chịu nhưng vẫn ho&agrave;n to&agrave;n xứng đ&aacute;ng với những g&igrave; m&igrave;nh mang lại. Những t&aacute;c vụ nặng nhất như thiết kế, xuất video,&hellip;dường như kh&ocirc;ng c&oacute; đối thủ v&agrave; đi k&egrave;m với một thời lượng pin ấn tượng khi MacBook chip M1 Pro 16 inch c&oacute; thời lượng sử dụng li&ecirc;n tục hơn 16 tiếng.&nbsp;</p>\r\n\r\n<p><img alt=\"MacBook Pro 16 inch\" src=\"https://phongvu.vn/cong-nghe/wp-content/uploads/sites/2/2022/12/MacBook-Pro-16-inch.jpg\" style=\"height:420px; width:800px\" /></p>\r\n\r\n<p>MacBook Pro 16 inch</p>\r\n\r\n<p>Nếu anh em c&oacute; một đ&ograve;i hỏi khắt khe với laptop của m&igrave;nh th&igrave; macBook Pro 16 inch chắc chắn l&agrave; một sự lựa chọn h&agrave;ng đầu với sức mạnh kh&ocirc;ng thể b&agrave;n c&atilde;i, m&agrave;n h&igrave;nh tuyệt đẹp c&oacute; thể đạt đến 1000 nits khi ph&aacute;t HDR, hệ thống loa xịn mịn v&agrave; c&oacute; thể xuất đa m&agrave;n.&nbsp;</p>\r\n\r\n<h3>MacBook Pro 14 inch cũng l&agrave; một gợi &yacute; nhỏ gọn hơn&nbsp;</h3>\r\n\r\n<p><img alt=\"MacBook Pro 14 inch\" src=\"https://phongvu.vn/cong-nghe/wp-content/uploads/sites/2/2022/12/MacBook-Pro-14-inch.jpg\" style=\"height:420px; width:800px\" /></p>\r\n\r\n<p>MacBook Pro 14 inch</p>\r\n\r\n<p>Nếu anh em cần một chiếc m&aacute;y nhỏ gọn hơn v&agrave; vẫn kh&ocirc;ng thể thiếu sức mạnh th&igrave;&nbsp;<a href=\"https://phongvu.vn/macbook-pro-14-inch-z15g001mp--s220303619?sku=220303619\">MacBook Pro 14 inch</a>&nbsp;l&agrave; một lựa chọn thay thế. Nhỏ hơn, nhẹ hơn v&agrave; rẻ hơn nhưng vẫn đảm bảo sức mạnh v&agrave; một m&agrave;n h&igrave;nh xuất sắc. Sức mạnh kh&ocirc;ng c&oacute; nhiều sự kh&aacute;c biệt, kh&aacute;c biệt đ&aacute;ng kể đến nhất sau k&iacute;ch thước m&agrave;n h&igrave;nh c&oacute; thể l&agrave; thời lượng pin khi k&iacute;ch thước nhỏ hơn kh&ocirc;ng cho ph&eacute;p một vi&ecirc;n pin lớn v&agrave; n&oacute; c&oacute; thời lượng khi&ecirc;m tốn hơn phi&ecirc;n bản 16 inch v&agrave;i giờ l&agrave;m việc.&nbsp;</p>\r\n\r\n<h2>HP Spectre x360 14 m&aacute;y windows đ&aacute;ng mua nhất&nbsp;</h2>\r\n\r\n<p>Thật kh&oacute; để đưa ra một lời ph&agrave;n n&agrave;n n&agrave;o về Spectre x360 14. Đ&oacute; l&agrave; một chiếc m&aacute;y tuyệt đẹp với thiết kế chắc chắn v&agrave; giao diện cao cấp. Bộ xử l&yacute; thế hệ thứ 11 mới nhất của Intel v&agrave; đồ họa t&iacute;ch hợp Iris Xe mang lại hiệu suất linh hoạt m&agrave; kh&ocirc;ng bị chậm hoặc đơ khi hoạt động hiệu suất cao. Thời lượng pin trung b&igrave;nh l&agrave; 10 giờ sử dụng l&agrave; một con số ấn tượng.&nbsp;</p>\r\n\r\n<p><img alt=\"HP Spectre x360 14\" src=\"https://phongvu.vn/cong-nghe/wp-content/uploads/sites/2/2022/12/HP-Spectre-x360-14.jpg\" style=\"height:450px; width:800px\" /></p>\r\n\r\n<p>HP Spectre x360 14</p>\r\n\r\n<p>Spectre c&oacute; m&agrave;n h&igrave;nh tỷ lệ 3: 2 rộng r&atilde;i v&agrave; nếu độ ph&acirc;n giải FHD kh&ocirc;ng ph&ugrave; hợp với sở th&iacute;ch của bạn, th&igrave; c&oacute; sẵn c&aacute;c t&ugrave;y chọn OLED v&agrave; 1.000 nit. Thậm ch&iacute; c&ograve;n c&oacute; một b&uacute;t stylus được gắn từ t&iacute;nh v&agrave;o mặt b&ecirc;n của Spectre tiện dụng nếu bạn đang sử dụng thiết bị như một m&aacute;y t&iacute;nh bảng.</p>\r\n\r\n<p>Sản phẩm tương tự:&nbsp;<a href=\"https://phongvu.vn/may-tinh-xach-tay-laptop-hp-pavilion-x360-14-ek0055tu-6l293pa-i7-1255u-vang--s221000237?sku=221000237\">Laptop HP Pavilion X360</a></p>\r\n\r\n<h2>Asus ROG Zephyrus G15 laptop gaming đ&aacute;ng mua&nbsp;</h2>\r\n\r\n<p><img alt=\"Asus ROG Zephyrus G15\" src=\"https://phongvu.vn/cong-nghe/wp-content/uploads/sites/2/2022/12/Asus-ROG-Zephyrus-G15.jpg\" style=\"height:449px; width:800px\" /></p>\r\n\r\n<p>Asus ROG Zephyrus G15</p>\r\n\r\n<p>Với trọng lượng chỉ hơn 4 pound,&nbsp;<a href=\"https://phongvu.vn/asus-rog-zephyrus-g15-ga503rm-ln006w--s220503384?sku=220503384\">Zephyrus G15</a>&nbsp;l&agrave; một trong những m&aacute;y t&iacute;nh x&aacute;ch tay chơi game 15 inch nhẹ nhất m&agrave; anh em c&oacute; thể mua. Nhưng anh em sẽ kh&ocirc;ng phải đ&aacute;nh đổi hiệu năng để lấy sự nhẹ nh&agrave;ng đ&oacute;,&nbsp; G15 được trang bị chip di động h&agrave;ng đầu m&agrave; AMD v&agrave; Nvidia cung cấp, đồng thời kết hợp với m&agrave;n h&igrave;nh QHD 165Hz.&nbsp;</p>\r\n\r\n<p>Hầu hết mọi thứ về G15 cũng rất tuyệt: &acirc;m thanh hay, b&agrave;n ph&iacute;m v&agrave; b&agrave;n di chuột thuộc loại tốt nhất tr&ecirc;n thị trường, cổng kết nối đa dạng v&agrave; pin c&oacute; thể k&eacute;o d&agrave;i hơn 8,5 giờ.&nbsp;</p>\r\n\r\n<h2>Asus Zenbook Pro Duo 14 m&aacute;y c&oacute; m&agrave;n k&eacute;p đặc biệt&nbsp;</h2>\r\n\r\n<p>C&oacute; một m&aacute;y t&iacute;nh x&aacute;ch tay m&agrave;n h&igrave;nh k&eacute;p m&agrave; tin rằng anh em sẽ th&iacute;ch nếu quan t&acirc;m đến loại h&igrave;nh laptop n&agrave;y Asus Zenbook Pro Duo 14. Trước đ&acirc;y&nbsp; h&igrave;nh thức m&agrave;n h&igrave;nh k&eacute;p c&oacute; cảm gi&aacute;c ph&ocirc; trương, kh&oacute; nh&igrave;n v&agrave; kh&oacute; sử dụng. Nhưng trong Zenbook Duo 14, Asus đ&atilde; n&acirc;ng g&oacute;c m&agrave;n h&igrave;nh cao hơn đ&aacute;ng kể so với trước đ&acirc;y, l&agrave;m m&agrave;n h&igrave;nh c&oacute; độ ph&acirc;n giải cao hơn v&agrave; trang bị cho m&agrave;n h&igrave;nh một lớp chống l&oacute;a thực sự hữu &iacute;ch.&nbsp;</p>\r\n\r\n<p><img alt=\"Asus Zenbook Pro Duo 14\" src=\"https://phongvu.vn/cong-nghe/wp-content/uploads/sites/2/2022/12/Asus-Zenbook-Pro-Duo-14.jpg\" style=\"height:450px; width:800px\" /></p>\r\n\r\n<p>Asus Zenbook Pro Duo 14</p>\r\n\r\n<p>Sử dụng phần mềm ScreenXpert của Asus, người d&ugrave;ng Zenbook Pro Duo c&oacute; một m&agrave;n h&igrave;nh OLED phụ nhỏ, sắc n&eacute;t tr&ecirc;n b&agrave;n ph&iacute;m. M&agrave;n h&igrave;nh thứ hai n&agrave;y cũng c&oacute; thể được biến th&agrave;nh một b&agrave;n di chuột khổng lồ. Thiết bị n&agrave;y cũng đi k&egrave;m với chip hiệu suất cao của Intel v&agrave; Nvidia. M&agrave;n h&igrave;nh ch&iacute;nh 16:10 rộng r&atilde;i. D&ugrave; thiết kế b&agrave;n ph&iacute;m c&oacute; phần hơi lạ v&agrave; cần l&agrave;m quen tuy nhi&ecirc;n đổi lại những diện t&iacute;ch hiển thị rộng r&atilde;i v&agrave; đa dạng hơn nhiều.&nbsp;</p>\r\n\r\n<p>Sản phẩm tương tự:&nbsp;<a href=\"https://phongvu.vn/asus-zenbook-14-flip-oled-up5401za-kn101w--s220802100?sku=220802100\">Laptop ASUS Zenbook 14 Flip OLED</a></p>\r\n\r\n<h2>Asus ROG Zephyrus G14&nbsp;</h2>\r\n\r\n<p>Đảm bảo rằng đ&uacute;ng mẫu SKU $1.649,99 với GPU 6700S v&igrave; model n&agrave;y l&agrave;&nbsp;<a href=\"https://phongvu.vn/asus-rog-zephyrus-g14-ga401qc-k2199w--s220500091?sku=220500091\">m&aacute;y t&iacute;nh x&aacute;ch tay chơi game 14 inch</a>&nbsp;ngon nhưng những c&aacute;i kh&aacute;c th&igrave; qu&aacute; đắt so với hiệu năng của n&oacute;.&nbsp;</p>\r\n\r\n<p><img alt=\"Asus ROG Zephyrus G14 \" src=\"https://phongvu.vn/cong-nghe/wp-content/uploads/sites/2/2022/12/Asus-ROG-Zephyrus-G14-.jpg\" style=\"height:450px; width:800px\" /></p>\r\n\r\n<p>Asus ROG Zephyrus G14&nbsp;</p>\r\n\r\n<p>Đ&acirc;y l&agrave; một thiết bị di động ho&agrave;n hảo với trọng lượng chỉ 3,79 pound v&agrave; d&agrave;y 0,77 inch đi k&egrave;m với b&agrave;n ph&iacute;m, b&agrave;n di chuột, kết nối ngoại vi, m&agrave;n h&igrave;nh v&agrave; một thời lượng pin tuyệt vời.&nbsp;</p>\r\n\r\n<p>Nếu anh em th&iacute;ch c&oacute; đ&egrave;n m&agrave;u tr&ecirc;n m&aacute;y t&iacute;nh của m&igrave;nh c&oacute; thể trả nhiều tiền hơn cho kiểu m&aacute;y c&oacute; Ma trận AniMe của Asus. Dĩ nhi&ecirc;n n&oacute; chỉ l&agrave; tốn th&ecirc;m tiền v&agrave; m&agrave;u sắc hơn th&ocirc;i chứ lợi &iacute;ch th&igrave; kh&ocirc;ng c&oacute; mấy, nhưng ch&uacute;ng dễ thương khi c&oacute; thể t&ugrave;y chỉnh hiển thị c&aacute;c từ hoặc h&igrave;nh ảnh được chọn v&agrave; c&oacute; một th&uacute; cưng ảo tr&ecirc;n đ&oacute; kh&aacute; th&uacute; vị.</p>\r\n\r\n<h2>Asus Chromebook Flip CX5 xứng đ&aacute;ng l&agrave; Chromebook 15 inch tốt nhất&nbsp;</h2>\r\n\r\n<p><img alt=\"Asus Chromebook Flip CX5\" src=\"https://phongvu.vn/cong-nghe/wp-content/uploads/sites/2/2022/12/Asus-Chromebook-Flip-CX5.jpg\" style=\"height:337px; width:800px\" /></p>\r\n\r\n<p>Asus Chromebook Flip CX5</p>\r\n\r\n<p>Asus đ&atilde; l&agrave;m ch&uacute;ng ta ngạc nhi&ecirc;n với Chromebook Flip CX5, một chiếc m&aacute;y t&iacute;nh x&aacute;ch tay tuyệt đẹp trị gi&aacute; 800 USD chạy Chrome OS. N&oacute; chắc chắn v&agrave; được ho&agrave;n thiện tốt như tất cả c&aacute;c loại m&aacute;y t&iacute;nh x&aacute;ch tay Windows ở mức gi&aacute; cao hơn v&agrave; c&oacute; kết cấu độc đ&aacute;o. Pin 57Wh, hiệu suất mạnh mẽ v&agrave; ổn định, thời lượng pin d&agrave;i v&agrave; sạc nhanh, kết nối ngoại vi đầy đủ bao gồm cả HDMI v&agrave; khe thẻ microSD. &Acirc;m thanh tuyệt vời v&agrave; b&agrave;n ph&iacute;m ngon l&agrave; những yếu tố chốt hạ để anh em quyết định chọn một chiếc Chromebook m&agrave;n 15 inch ngon l&agrave;nh.&nbsp;</p>\r\n\r\n<h2>Dell XPS 13 laptop h&agrave;ng đầu cho sinh vi&ecirc;n&nbsp;</h2>\r\n\r\n<p><img alt=\"Dell XPS 13\" src=\"https://phongvu.vn/cong-nghe/wp-content/uploads/sites/2/2022/12/Dell-XPS-13.jpg\" style=\"height:516px; width:800px\" /></p>\r\n\r\n<p>Dell XPS 13</p>\r\n\r\n<p><a href=\"https://phongvu.vn/laptop-dell-xps-13-9320-70295789--s220920065?sku=220920065\">Dell XPS 13</a>&nbsp;l&agrave; một m&aacute;y t&iacute;nh x&aacute;ch tay nhỏ gọn v&agrave; mang đến khả năng l&agrave;m việc ổn định. Khung m&aacute;y đẹp, m&agrave;n h&igrave;nh 16:10 xuất sắc v&agrave; hiệu suất tuyệt vời khiến n&oacute; trở th&agrave;nh lựa chọn tuyệt vời cho người d&ugrave;ng đa năng như sinh vi&ecirc;n, văn ph&ograve;ng,&hellip; Thậm ch&iacute; n&oacute; cũng ph&ugrave; hợp với c&aacute;c t&aacute;c vụ n&acirc;ng cao hơn v&agrave; cả những tựa game kh&ocirc;ng đ&ograve;i hỏi cấu h&igrave;nh qu&aacute; nhiều.&nbsp;</p>\r\n\r\n<p>Ngo&agrave;i ra Dell XPS 13 Plus đẹp hơn v&agrave; bao gồm tất cả c&aacute;c loại t&iacute;nh năng mới m&agrave; XPS 13 kh&ocirc;ng c&oacute; bao gồm t&ugrave;y chọn m&agrave;n h&igrave;nh OLED, b&agrave;n di chuột haptic kh&ocirc;ng viền v&agrave; c&aacute;c ph&iacute;m chức năng cảm ứng LED.</p>\r\n\r\n<h2>Lenovo ThinkPad X1 Nano gọn nhẹ v&agrave; di động&nbsp;</h2>\r\n\r\n<p>ThinkPad X1 Nano l&agrave; một chiếc ThinkPad b&igrave;nh thường&nbsp; c&oacute; khung m&aacute;y chắc chắn, n&uacute;t bấm v&agrave; m&agrave;n trập vật l&yacute;, Trackpoint nằm ch&iacute;nh giữa b&agrave;n ph&iacute;m v&agrave; đầy đủ những t&iacute;nh năng quản l&yacute; v&agrave; bảo mật d&agrave;nh ri&ecirc;ng cho doanh nghiệp.&nbsp;</p>\r\n\r\n<p><img alt=\"Lenovo ThinkPad X1 Nano \" src=\"https://phongvu.vn/cong-nghe/wp-content/uploads/sites/2/2022/12/Lenovo-ThinkPad-X1-Nano.jpg\" style=\"height:533px; width:800px\" /></p>\r\n\r\n<p>Lenovo ThinkPad X1 Nano</p>\r\n\r\n<p>Nano đặc biệt v&igrave; đ&acirc;y l&agrave; chiếc ThinkPad nhẹ nhất m&agrave; Lenovo từng sản xuất. Đ&acirc;y cũng l&agrave; một trong những m&aacute;y t&iacute;nh x&aacute;ch tay nhẹ nhất c&oacute; thể mua khi n&oacute; chỉ nặng 1,99 pound. Anh em cũng kh&ocirc;ng phải hy sinh hiệu suất để c&oacute; được trọng lượng đ&aacute;ng kinh ngạc đ&oacute;: Nano mạnh mẽ v&agrave; kh&ocirc;ng gặp phải những vấn đề sụt giảm hiệu năng nghi&ecirc;m trọng cũng như những vấn đề về nhiệt độ. Nếu anh em đang t&igrave;m kiếm một chiếc m&aacute;y t&iacute;nh x&aacute;ch tay d&agrave;nh cho doanh nh&acirc;n đ&aacute;ng tin cậy m&agrave; lại gọn nhẹ tiện cho qu&aacute; tr&igrave;nh di chuyển thường xuy&ecirc;n th&igrave; đ&acirc;y l&agrave; sự lựa chọn h&agrave;ng đầu.&nbsp;</p>\r\n\r\n<p>Sản phẩm tương tự:&nbsp;<a href=\"https://phongvu.vn/laptop-lenovo-thinkpad-x1-carbon-gen-10--s220908928?sku=220908928\">Laptop Lenovo ThinkPad X1 Carbon Gen 10</a></p>\r\n\r\n<h2>Razer Book 13 thời trang v&agrave; mạnh mẽ&nbsp;</h2>\r\n\r\n<p>Razer nổi tiếng với m&aacute;y t&iacute;nh x&aacute;ch tay chơi game, nhưng c&ocirc;ng lại g&acirc;y được tiếng vang lớn bằng thiết kế v&agrave; năng suất với Razer Book 13 mới. Với độ d&agrave;y 0,6 inch v&agrave; nặng 3,09 pound, Book 13 l&agrave; một m&aacute;y trạm di động với vẻ ngo&agrave;i tuyệt đẹp v&agrave; chắc chắn với vỏ nh&ocirc;m. Kết nối ngoại vi cũng ngon l&agrave;nh bao gồm Thunderbolt 4, USB-A, HDMI 2.0 v&agrave; khe cắm thẻ nhớ microSD, v&agrave; đ&acirc;y l&agrave; một trong số rất &iacute;t m&aacute;y t&iacute;nh x&aacute;ch tay kh&ocirc;ng chơi game đi k&egrave;m với b&agrave;n ph&iacute;m RGB tr&ecirc;n mỗi ph&iacute;m.&nbsp;</p>\r\n\r\n<p><img alt=\"Razer Book 13\" src=\"https://phongvu.vn/cong-nghe/wp-content/uploads/sites/2/2022/12/Razer-Book-13.jpg\" style=\"height:479px; width:800px\" /></p>\r\n\r\n<p>Razer Book 13</p>\r\n\r\n<p>Ở b&ecirc;n trong, chiếc m&aacute;y t&iacute;nh x&aacute;ch tay n&agrave;y thậm ch&iacute; c&ograve;n ấn tượng hơn. Con chip mạnh mẽ của n&oacute; hoạt động tốt hơn bất kỳ m&aacute;y t&iacute;nh x&aacute;ch tay Windows n&agrave;o kh&aacute;c c&ugrave;ng k&iacute;ch cỡ. V&agrave; mặc d&ugrave; Book 13 kh&ocirc;ng phải l&agrave; m&aacute;y t&iacute;nh x&aacute;ch tay chơi game, nhưng n&oacute; mang lại một số hiệu suất chơi game tốt. Mặc d&ugrave; mức gi&aacute; cao của Razer Book 13 c&oacute; nghĩa l&agrave; n&oacute; sẽ kh&ocirc;ng phải l&agrave; lựa chọn l&yacute; tưởng cho tất cả mọi người, nhưng đ&acirc;y vẫn l&agrave; một chiếc m&aacute;y t&iacute;nh x&aacute;ch tay nổi bật kết hợp khung m&aacute;y chất lượng cao với hiệu năng mạnh mẽ.</p>', 'Top 10 Laptop bán chạy nhất năm 2022 sẽ là bài đánh giá thực tế nhất phản ánh qua doanh số của chính những cái tên sau đây', '2022-12-17 11:06:45'),
(2, '639d40f2824d9_1671250162.jpg', 1, 'Review Laptop HP Envy X360 13-bf0096TU: Lựa Chọn Laptop Mỏng Nhẹ Cao Cấp Tốt Nhất', '<p>Trong ph&acirc;n kh&uacute;c&nbsp;<a href=\"https://phongvu.vn/c/laptop-mong-nhe\" rel=\"noreferrer noopener\" target=\"_blank\">laptop mỏng nhẹ</a>&nbsp;c&oacute; thiết kế cao cấp v&agrave; sang trọng th&igrave; HP Envy chắc chắn l&agrave; một c&aacute;i t&ecirc;n m&agrave; bạn kh&ocirc;ng n&ecirc;n bỏ qua. D&ograve;ng&nbsp;<a href=\"https://phongvu.vn/c/laptop-sinh-vien-van-phong\" rel=\"noreferrer noopener\" target=\"_blank\">laptop sinh vi&ecirc;n-văn ph&ograve;ng</a>&nbsp;đến từ thương hiệu nổi tiếng HP hứa hẹn mang đến cho người d&ugrave;ng một hiệu năng ấn tượng v&agrave; vẻ ngo&agrave;i lịch thiệp đ&aacute;ng mơ ước.&nbsp;</p>\r\n\r\n<p>Kế thừa tất cả những tinh hoa của d&ograve;ng&nbsp;<a href=\"https://phongvu.vn/c/laptop-hp\" rel=\"noreferrer noopener\" target=\"_blank\">laptop HP</a>&nbsp;Envy trong suốt những năm vừa qua, phi&ecirc;n bản Laptop HP Envy x360 13-bf0096TU mang trong m&igrave;nh bộ vi xử l&yacute; Intel Gen 12 v&agrave; sự nhỏ gọn tinh tế trong thiết kế chắc chắn sẽ l&agrave; người bạn đồng h&agrave;nh l&yacute; tưởng của giới trẻ trong năm nay!</p>\r\n\r\n<p>Phi&ecirc;n bản m&igrave;nh đang được review đ&oacute; ch&iacute;nh l&agrave;&nbsp;<a href=\"https://phongvu.vn/may-tinh-xach-tay-laptop-hp-envy-x360-13-bf0096tu-76b16pa-i5-1230u-xanh--s221003310?sku=221003310\" rel=\"noreferrer noopener\" target=\"_blank\">Laptop HP Envy x360 13-bf0096TU</a>&nbsp;với trang bị Intel Core i5 1230U v&agrave; RAM 8GB. Sản phẩm hiện đang được Phong Vũ ph&acirc;n phối ch&iacute;nh h&atilde;ng với mức gi&aacute; cực tốt chỉ 27.690.000 VNĐ.</p>\r\n\r\n<h2>1.&nbsp; Khẳng định c&aacute; t&iacute;nh với thiết kế hiện đại tr&ecirc;n HP Envy x360 13&nbsp;</h2>\r\n\r\n<p>Khi cầm tr&ecirc;n tay chiếc Laptop HP Envy x360 13-bf0096TU, m&igrave;nh đ&atilde; thực sự bị chinh phục bởi những g&igrave; m&agrave; HP đ&atilde; mang đến tr&ecirc;n chiếc m&aacute;y n&agrave;y. N&oacute; l&agrave;m m&igrave;nh li&ecirc;n tưởng đến những chiếc MacBook c&oacute; gi&aacute; tiền đắt đỏ cũng c&oacute; lối thiết kế mỏng nhẹ tương tự, tuy nhi&ecirc;n về chất lượng ho&agrave;n thiện cũng như độ chi tiết th&igrave; HP Envy x360 13 cũng kh&ocirc;ng hề k&eacute;m cạnh.&nbsp;</p>\r\n\r\n<p><img alt=\"thiet-ke-laptop-hp-envy-x360-13-bf0096TU\" src=\"https://phongvu.vn/cong-nghe/wp-content/uploads/sites/2/2022/12/thiet-ke-laptop-hp-envy-x360-13-bf0096TU.jpg\" style=\"height:533px; width:800px\" /></p>\r\n\r\n<p>Tr&ecirc;n sản phẩm HP Envy x360 mới nhất, h&atilde;ng HP vẫn khẳng định được vị thế h&agrave;ng đầu của chiếc m&aacute;y n&agrave;y trong ph&acirc;n kh&uacute;c laptop văn ph&ograve;ng cao cấp. Laptop HP Envy x360 13-bf0096TU được thừa hưởng gần như to&agrave;n bộ những n&eacute;t tinh t&uacute;y nhất trong thiết kế của d&ograve;ng HP Envy từ sự ho&agrave;n thiện tỉ mỉ đến vẻ ngo&agrave;i sang trọng.&nbsp;</p>\r\n\r\n<p><img alt=\"danh-gia-laptop-hp-envy-x360-13\" src=\"https://phongvu.vn/cong-nghe/wp-content/uploads/sites/2/2022/12/danh-gia-laptop-hp-envy-x360-13.jpg\" style=\"height:533px; width:800px\" /></p>\r\n\r\n<p>Đầu ti&ecirc;n, ch&uacute;ng ta sẽ sở hữu một chiếc m&aacute;y được ho&agrave;n thiện 100% bằng hợp kim nguy&ecirc;n khối cao cấp rất chắc chắn. Ch&iacute;nh v&igrave; vậy m&agrave; khi cầm m&aacute;y tr&ecirc;n tay, bạn sẽ cảm nhận được sự thoải m&aacute;i v&agrave; đầm tay mỗi khi sử dụng m&aacute;y m&agrave; kh&ocirc;ng hề c&oacute; cảm gi&aacute;c ọp ẹp.</p>\r\n\r\n<p><img alt=\"\" src=\"https://phongvu.vn/cong-nghe/wp-content/uploads/sites/2/2022/12/tan-nhiet-laptop-hp-envy-x360-13-bf0096TU.jpg\" style=\"height:533px; width:800px\" /></p>\r\n\r\n<p>D&ograve;ng HP Envy x360 13-bf0096TU c&oacute; lối thiết kế tổng thể kh&aacute; vu&ocirc;ng vức để l&agrave;m nổi bật l&ecirc;n sự c&aacute; t&iacute;nh, mạnh mẽ v&agrave; hiện đại của một chiếc m&aacute;y cao cấp. Tuy nhi&ecirc;n thiết kế n&agrave;y vẫn kh&ocirc;ng qu&aacute; &ldquo;cứng&rdquo; đồng thời cũng rất ph&ugrave; hợp với những bạn nữ khi h&atilde;ng đ&aacute; bo tr&ograve;n c&aacute;c cạnh để c&oacute; cảm gi&aacute;c cầm nắm thoải m&aacute;i.&nbsp;&nbsp;</p>\r\n\r\n<p><img alt=\"danh-gia-thiet-ke-laptop-hp-envy-x360-13-bf0096TU\" src=\"https://phongvu.vn/cong-nghe/wp-content/uploads/sites/2/2022/12/danh-gia-thiet-ke-laptop-hp-envy-x360-13-bf0096TU.jpg\" style=\"height:533px; width:800px\" /></p>\r\n\r\n<p>K&iacute;ch thước v&agrave; trọng lượng của chiếc HP Envy x360 13-bf0096TU sẽ l&agrave;m bạn phải bất ngờ, d&ugrave; sở hữu chiếc m&agrave;n h&igrave;nh k&iacute;ch thước 13 inch nhưng chiếc m&aacute;y n&agrave;y chỉ c&oacute; c&acirc;n nặng 1.3kg v&agrave; độ mỏng 1.61cm. Nếu bạn l&agrave; một fan của những chiếc m&aacute;y mỏng nhẹ cấu h&igrave;nh ổn định để dễ d&agrave;ng mang đi mọi nơi th&igrave; Laptop HP Envy x360 13-bf0096TU sẽ l&agrave; một ứng cử vi&ecirc;n s&aacute;ng gi&aacute; v&igrave; đ&acirc;y l&agrave; một trong những chiếc laptop mỏng nhẹ nhất thế giới hiện nay.&nbsp;</p>\r\n\r\n<p><img alt=\"danh-gia-laptop-hp-envy-x360-13-bf0096TU\" src=\"https://phongvu.vn/cong-nghe/wp-content/uploads/sites/2/2022/12/danh-gia-laptop-hp-envy-x360-13-bf0096TU-1.jpg\" style=\"height:533px; width:800px\" /></p>\r\n\r\n<p>Một điểm kh&aacute; đ&aacute;ng khen tr&ecirc;n chiếc m&aacute;y n&agrave;y nữa đ&oacute; ch&iacute;nh l&agrave; nước sơn Xanh-Đen t&ocirc;ng trầm vừa mang đến vẻ hiện đại v&agrave; cứng c&aacute;p vừa chống b&aacute;m dấu v&acirc;n tay kh&aacute; tốt. Nếu so với những sản phẩm kh&aacute;c tr&ecirc;n thị trường th&igrave; m&igrave;nh nhận thấy HP Envy x360 13-bf0096TU đ&atilde; l&agrave;m rất tốt trong kh&acirc;u n&agrave;y.&nbsp;</p>\r\n\r\n<h2>2. Bản lề gập mở 360 độ si&ecirc;u ấn tượng</h2>\r\n\r\n<p>Laptop HP Envy x360 13-bf0096TU mang đến khả năng l&agrave;m việc kh&ocirc;ng giới hạn kh&ocirc;ng gian nhờ v&agrave;o bản lề x360 cho ph&eacute;p người d&ugrave;ng mở m&aacute;y g&oacute;c si&ecirc;u rộng l&ecirc;n đến 360 độ. V&igrave; l&agrave; một chiếc m&aacute;y thuộc ph&acirc;n kh&uacute;c cao cấp n&ecirc;n chiếc&nbsp;<a href=\"https://phongvu.vn/c/laptop-mong-nhe\">laptop mỏng nhẹ</a>&nbsp;n&agrave;y cũng c&oacute; thể mở m&agrave;n h&igrave;nh bằng một tay tiện lợi.&nbsp;</p>\r\n\r\n<p><img alt=\"ban-le-laptop-hp-envy-x360-13-bf0096TU\" src=\"https://phongvu.vn/cong-nghe/wp-content/uploads/sites/2/2022/12/ban-le-laptop-hp-envy-x360-13-bf0096TU.jpg\" style=\"height:533px; width:800px\" /></p>\r\n\r\n<p>Tuy nhi&ecirc;n c&oacute; một nhược điểm cố hữu của loại bản lề x360 đ&oacute; ch&iacute;nh l&agrave; n&oacute; c&oacute; một độ &ldquo;cứng&rdquo; nhất định nhằm giữ bản lề ổn định, ch&iacute;nh v&igrave; vậy m&agrave; khi người d&ugrave;ng gập mở m&agrave;n h&igrave;nh sẽ c&oacute; cảm gi&aacute;c chưa được mượt m&agrave; lắm.&nbsp;</p>\r\n\r\n<p>Một điểm đ&aacute;ng tiếc nữa m&agrave; m&igrave;nh nghĩ h&atilde;ng n&ecirc;n cần cải thiện ngay để trải nghiệm của người d&ugrave;ng được tốt hơn đ&oacute; ch&iacute;nh l&agrave; phần gờ để mở m&agrave;n h&igrave;nh qu&aacute; nhỏ khiến cho việc mở m&agrave;n h&igrave;nh kh&aacute; kh&oacute; khăn. Th&ecirc;m v&agrave;o đ&oacute;, v&igrave; phần khung m&agrave;n h&igrave;nh đ&atilde; được bo cong n&ecirc;n bạn sẽ thấy bất tiện hơn nếu như muốn gập mở m&agrave;n h&igrave;nh nhanh.&nbsp;</p>\r\n\r\n<p><img alt=\"ban-phim-laptop-hp-envy-x360-13-bf0096TU\" src=\"https://phongvu.vn/cong-nghe/wp-content/uploads/sites/2/2022/12/ban-phim-laptop-hp-envy-x360-13-bf0096TU-1.jpg\" style=\"height:533px; width:800px\" /></p>\r\n\r\n<h2>3. M&agrave;n h&igrave;nh hiển thị 2K+ với chất lượng h&igrave;nh ảnh vượt trội</h2>\r\n\r\n<p>M&agrave;n h&igrave;nh tr&ecirc;n HP Envy x360 13-bf0096TU chắc chắn sẽ chinh phục được những người d&ugrave;ng kh&oacute; t&iacute;nh nhất d&ugrave; đ&oacute; l&agrave; t&aacute;c vụ giải tr&iacute; đơn thuần hay l&agrave;m việc chuy&ecirc;n nghiệp. HP đ&atilde; trang bị cho chiếc m&aacute;y n&agrave;y một chiếc m&agrave;n h&igrave;nh OLED c&ocirc;ng nghệ BrightView với k&iacute;ch thước 13.3 inch c&ugrave;ng độ ph&acirc;n giải 2K+ v&ocirc; c&ugrave;ng sắc n&eacute;t.&nbsp;</p>\r\n\r\n<p><img alt=\"man-hinh-laptop-hp-envy-x360-13-bf0096TU\" src=\"https://phongvu.vn/cong-nghe/wp-content/uploads/sites/2/2022/12/man-hinh-laptop-hp-envy-x360-13-bf0096TU.jpg\" style=\"height:533px; width:800px\" /></p>\r\n\r\n<p>Kh&ocirc;ng giống như những tấm nền OLED kh&aacute;c tr&ecirc;n thị trường, m&agrave;n h&igrave;nh của HP Envy x360 13 được phủ một lớp k&iacute;nh to&agrave;n bộ bề mặt gi&uacute;p đem lại h&igrave;nh ảnh c&oacute; độ trong trẻo, m&agrave;u sắc thể hiện rất sống động. B&ecirc;n cạnh đ&oacute;, 3 viền m&agrave;n h&igrave;nh của chiếc m&aacute;y n&agrave;y được v&aacute;t kh&aacute; mỏng kết hợp c&ugrave;ng viền đen gi&uacute;p cho h&igrave;nh ảnh c&oacute; độ s&acirc;u trường ảnh rất tốt, ch&uacute;ng ta gần như kh&ocirc;ng thể nhận ra chiếc viền m&agrave;n h&igrave;nh n&agrave;y khi sử dụng.&nbsp;</p>\r\n\r\n<p>Để phục vụ nhu cầu l&agrave;m việc chuy&ecirc;n nghiệp th&igrave; chiếc m&agrave;n h&igrave;nh n&agrave;y cũng đạt chuẩn m&agrave;u sắc 100% DCI-P3, dải m&agrave;u rộng v&agrave; chuẩn m&agrave;u cao sẽ gi&uacute;p bạn l&agrave;m việc li&ecirc;n quan đến thiết kế đồ họa, dựng phim một c&aacute;ch chuy&ecirc;n nghiệp.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://phongvu.vn/cong-nghe/wp-content/uploads/sites/2/2022/12/danh-gia-man-hinh-laptop-hp-envy-x360-13-bf0096TU.jpg\" style=\"height:533px; width:800px\" /></p>\r\n\r\n<p>Đặc biệt hơn cả, m&agrave;n h&igrave;nh của HP Envy x360 13 l&agrave; một chiếc m&agrave;n h&igrave;nh cảm ứng rất nhạy v&agrave; c&oacute; thể tương th&iacute;ch được với b&uacute;t cảm ứng. Bạn cũng c&oacute; thể sử dụng chiếc m&aacute;y n&agrave;y như một chiếc m&aacute;y t&iacute;nh bảng khi cần với bản lề gập mở 360 độ.&nbsp;</p>\r\n\r\n<p>Đối với những người d&ugrave;ng hay l&agrave;m việc ngo&agrave;i trời th&igrave; chiếc laptop HP n&agrave;y vẫn c&oacute; thể đ&aacute;p ứng tốt với độ s&aacute;ng l&ecirc;n đến 500 nits c&ugrave;ng lớp k&iacute;nh chống ch&oacute;i, c&ocirc;ng nghệ Low Blue Light gi&uacute;p bảo vệ mắt tốt hơn.&nbsp;</p>\r\n\r\n<h2>4. Laptop mỏng nhẹ cấu h&igrave;nh mạnh nhờ v&agrave;o con chip Intel Gen 12</h2>\r\n\r\n<p>Khi x&eacute;t về cấu h&igrave;nh th&igrave; chiếc Laptop HP Envy x360 13-bf0096TU kh&ocirc;ng hề l&eacute;p vế khi n&oacute; được trang bị một con chip Intel Gen 12. Bộ vi xử l&yacute; Intel Core i5-1230U d&ugrave; định danh chỉ l&agrave; một con chip tiết kiệm điện nhưng n&oacute; sở hữu đến 10 nh&acirc;n v&agrave; 12 luồng, xung nhịp tối đa m&agrave; con chip n&agrave;y mang đến l&ecirc;n tới 4.4 GHz, một con số ấn tượng tr&ecirc;n một chiếc laptop.&nbsp;</p>\r\n\r\n<p>Những t&aacute;c vụ văn ph&ograve;ng th&ocirc;ng thường hay học tập kh&ocirc;ng thể l&agrave;m kh&oacute; được chiếc laptop n&agrave;y, thậm ch&iacute; l&agrave; khi bạn d&ugrave;ng n&oacute; để thiết kế đồ họa, dựng phim th&igrave; card đồ họa t&iacute;ch hợp Intel Iris Xe Graphics vẫn c&oacute; thể đảm đương được một c&aacute;ch tương đối mượt m&agrave;.&nbsp;</p>\r\n\r\n<p><img alt=\"cau-hinh-laptop-hp-envy-x360-13-bf0096TU\" src=\"https://phongvu.vn/cong-nghe/wp-content/uploads/sites/2/2022/12/cau-hinh-laptop-hp-envy-x360-13-bf0096TU.jpg\" style=\"height:533px; width:800px\" /></p>\r\n\r\n<p>Laptop HP Envy x360 13-bf0096TU được trang bị sẵn 8GB RAM t&iacute;ch hợp c&oacute; tốc độ si&ecirc;u cao l&ecirc;n đến 4266MHz. Người d&ugrave;ng cũng c&oacute; thể thoải m&aacute;i lưu trữ với ổ cứng 512GB SSD v&agrave; hỗ trợ th&ecirc;m 1 khe SSD để n&acirc;ng cấp.&nbsp;</p>\r\n\r\n<h2>5. Cổng kết nối</h2>\r\n\r\n<p>D&ugrave; c&oacute; thiết kế mỏng nhẹ nhưng HP Envy x360 13 cũng được trang bị kha kh&aacute; c&aacute;c cổng kết nối th&ocirc;ng dụng gồm 2 x USB 3.2 , 2 x Thunderbolt 4 , 1 x micro SD card slot v&agrave; cổng 3.5mm.</p>\r\n\r\n<p><img alt=\"cong-ket-noi-laptop-hp-envy-x360-13-bf0096TU\" src=\"https://phongvu.vn/cong-nghe/wp-content/uploads/sites/2/2022/12/cong-ket-noi-laptop-hp-envy-x360-13-bf0096TU.jpg\" style=\"height:481px; width:800px\" /></p>\r\n\r\n<p>Đặc biệt, 2 cổng USB-C t&iacute;ch hợp Thunderbolt 4 kh&ocirc;ng chỉ xuất dữ liệu si&ecirc;u nhanh c&ograve;n cho ph&eacute;p bạn sạc nhanh Power Delivery v&agrave; hỗ trợ xuất m&agrave;n h&igrave;nh chuẩn&nbsp;<a href=\"https://en.wikipedia.org/wiki/DisplayPort\" rel=\"nofollow noopener\" target=\"_blank\">DisplayPort&trade; 1.4</a>.&nbsp;</p>\r\n\r\n<p><img alt=\"cong-ket-noi-laptop-hp-envy-x360-13-bf0096TU-da-dang\" src=\"https://phongvu.vn/cong-nghe/wp-content/uploads/sites/2/2022/12/cong-ket-noi-laptop-hp-envy-x360-13-bf0096TU-da-dang.jpg\" style=\"height:533px; width:800px\" /></p>\r\n\r\n<h2>6. B&agrave;n ph&iacute;m v&agrave; hệ thống loa</h2>\r\n\r\n<p>B&agrave;n ph&iacute;m tr&ecirc;n&nbsp; HP Envy x360 13-bf0096TU c&oacute; layout cơ bản nhưng được thiết kế gần như l&agrave; tr&agrave;n viền đem lại cảm gi&aacute;c cao cấp. Về cảm gi&aacute;c g&otilde; th&igrave; m&igrave;nh đ&aacute;nh gi&aacute; b&agrave;n ph&iacute;m n&agrave;y c&oacute; độ nảy kh&aacute; tốt, tạo ra cảm gi&aacute;c g&otilde; ph&iacute;m dứt kho&aacute;t v&agrave; ch&iacute;nh x&aacute;c.&nbsp;</p>\r\n\r\n<p><img alt=\"track-pad-laptop-hp-envy-x360-13-bf0096TU\" src=\"https://phongvu.vn/cong-nghe/wp-content/uploads/sites/2/2022/12/track-pad-laptop-hp-envy-x360-13-bf0096TU.jpg\" style=\"height:533px; width:800px\" /></p>\r\n\r\n<p>Về trải nghiệm &acirc;m thanh, HP Envy x360 13 sử dụng hệ thống loa của h&atilde;ng &acirc;m thanh nổi tiếng Bang &amp; Olufsen. Nhờ đ&oacute; m&agrave; &acirc;m thanh khi nghe nhạc, xem phim kh&oacute; to v&agrave; r&otilde; r&agrave;ng.&nbsp;</p>\r\n\r\n<h2>7. C&oacute; n&ecirc;n mua Laptop HP Envy x360 13-bf0096TU hay kh&ocirc;ng?&nbsp;</h2>\r\n\r\n<p>Sau khi c&oacute; thời gian trải nghiệm chiếc Laptop HP Envy x360 13-bf0096TU th&igrave; m&igrave;nh nhận thấy đ&acirc;y l&agrave; một sản phẩm đ&aacute;ng để trải nghiệm. Chiếc laptop Envy x360 13-bf0096TU thực sự sẽ l&agrave; một đối thủ đ&aacute;ng gờm trong ph&acirc;n kh&uacute;c&nbsp;<a href=\"https://phongvu.vn/c/laptop-sinh-vien-van-phong\">laptop học sinh-văn ph&ograve;ng</a>, kể cả đối với những chiếc MacBook trong c&ugrave;ng tầm gi&aacute;.&nbsp;</p>\r\n\r\n<p><img alt=\"danh-gia-laptop-hp-envy-x360-13-bf0096TU\" src=\"https://phongvu.vn/cong-nghe/wp-content/uploads/sites/2/2022/12/danh-gia-laptop-hp-envy-x360-13-bf0096TU.jpg\" style=\"height:533px; width:800px\" /></p>\r\n\r\n<p>Bạn n&ecirc;n sở hữu chiếc m&aacute;y n&agrave;y v&igrave; n&oacute; mang đến một thiết kế kh&aacute; đẹp mắt v&agrave; c&aacute; t&iacute;nh, kh&ocirc;ng chỉ ph&ugrave; hợp với những bạn sinh vi&ecirc;n năng động m&agrave; c&ograve;n đủ sang trọng để l&agrave; một chiếc laptop doanh nh&acirc;n cao cấp.&nbsp;</p>\r\n\r\n<p>Cấu h&igrave;nh v&agrave; trải nghiệm m&agrave;n h&igrave;nh đẹp xuất sắc sẽ chinh phục bất kỳ người d&ugrave;ng kh&oacute; t&iacute;nh n&agrave;o. Kh&ocirc;ng chỉ đ&aacute;p ứng tốt nhu cầu l&agrave;m việc v&agrave; học tập, Laptop HP Envy x360 13-bf0096TU c&ograve;n đ&ecirc;m lại khả năng giải tr&iacute; đỉnh cao to&agrave;n diện.&nbsp;</p>', 'Phiên bản mình đang được review đó chính là Laptop HP Envy x360 13-bf0096TU với trang bị Intel Core i5 1230U và RAM 8GB.', '2022-12-17 11:09:22'),
(3, '639d411fcfa72_1671250207.jpg', 1, 'Review Chuột Logitech MX Master 3S Không Dây: đầu Tư Hơn 2 Triệu Có đáng?', '<p><a href=\"https://phongvu.vn/chuot-khong-day-logitech-mx-master-3s-graphite--s220610012?sku=220610012\" rel=\"noreferrer noopener\" target=\"_blank\">Chuột Logitech MX Master 3S</a>&nbsp;sẽ kh&ocirc;ng giống bất kỳ con chuột m&aacute;y t&iacute;nh n&agrave;o m&agrave; bạn từng sử dụng. Với mức gi&aacute; l&ecirc;n tới 2,5 triệu đồng, con chuột cao cấp của thương hiệu phụ kiện điện tử uy t&iacute;n h&agrave;ng đầu nước Mỹ c&oacute; g&igrave; &ldquo;cao si&ecirc;u&rdquo; tới vậy?</p>\r\n\r\n<h2>Thiết kế c&ocirc;ng th&aacute;i học chuột Logitech MX Master 3S</h2>\r\n\r\n<p>Hơn 2 triệu đồng l&agrave; con số kh&aacute; lớn để đầu tư cho một con chuột m&aacute;y t&iacute;nh. Thế nhưng kể từ khi ra mắt&nbsp;v&agrave;o th&aacute;ng 9 năm 2019, MX Master 3 của Logitech đ&atilde; thống trị nhiều danh s&aacute;ch b&aacute;n chạy khắp thế giới.&nbsp;<a href=\"https://phongvu.vn/c/chuot-gaming-logitech\" rel=\"noreferrer noopener\" target=\"_blank\">Chuột gaming Logitech</a>&nbsp;MX Master 3S c&oacute; thiết kế chuẩn dạng c&ocirc;ng th&aacute;i học.</p>\r\n\r\n<p>Chỉ cần nh&igrave;n qua l&agrave; bạn sẽ thấy chuột c&oacute; một phần ph&igrave;nh ra để l&oacute;t ng&oacute;n tay c&aacute;i. Tuy nhi&ecirc;n cần lưu &yacute; l&agrave; thiết kế như thế n&agrave;y chỉ d&agrave;nh cho người thuận tay phải. Trọng lượng của n&oacute; si&ecirc;u nhẹ &ndash; chỉ 141 g v&agrave; c&aacute;c chiều k&iacute;ch thước l&agrave; 12.5 x 8.4 x 5.1 cm.</p>\r\n\r\n<p>Vỏ chuột được l&agrave;m bằng nhựa t&aacute;i chế 22% hoặc 27% t&ugrave;y thuộc v&agrave;o m&agrave;u bạn chọn. Phần b&aacute;nh xe cuộn điện từ được thiết kế th&ocirc;ng minh gi&uacute;p tăng hoặc giảm lực cản dựa tr&ecirc;n tốc độ hoặc &aacute;p lực cuộn của người d&ugrave;ng.&nbsp;Một n&uacute;t nhỏ b&ecirc;n dưới b&aacute;nh xe chuyển đổi giữa cuộn ch&iacute;nh x&aacute;c v&agrave; cuộn tự do.</p>\r\n\r\n<p><img alt=\"chuot-Logitech-MX-Master-3S-5\" src=\"https://phongvu.vn/cong-nghe/wp-content/uploads/sites/2/2022/12/chuot-Logitech-MX-Master-3S-5.jpg\" style=\"height:449px; width:800px\" /></p>\r\n\r\n<p>Thiết kế c&ocirc;ng th&aacute;i học đặc biệt v&agrave; &ecirc;m tay của chuột Logitech MX Master 3S</p>\r\n\r\n<p>Đ&oacute; kh&ocirc;ng phải l&agrave; b&aacute;nh xe cuộn duy nhất. Ngo&agrave;i b&aacute;nh xe mạ cr&ocirc;m c&oacute; thể nhấp được, c&aacute;c n&uacute;t ch&iacute;nh b&ecirc;n tr&aacute;i v&agrave; b&ecirc;n phải cũng như n&uacute;t tr&ecirc;n c&ugrave;ng, c&ograve;n c&oacute; một b&aacute;nh xe cuộn ngang rộng ở b&ecirc;n tr&aacute;i, được đặt ở vị tr&iacute; ng&oacute;n tay c&aacute;i b&ecirc;n phải của bạn. B&ecirc;n dưới n&oacute; l&agrave; hai n&uacute;t mỏng mặc định để điều hướng tiến v&agrave; l&ugrave;i trong tr&igrave;nh duyệt v&agrave; b&ecirc;n dưới l&agrave; phần tựa ng&oacute;n tay c&aacute;i gi&uacute;p n&acirc;ng đỡ b&agrave;n tay của bạn ở vị tr&iacute; hơi nghi&ecirc;ng.</p>\r\n\r\n<p>Thiết kế kỹ lưỡng trong từng chi tiết của chuột Logitech MX Master 3S l&agrave; kết quả của rất nhiều nghi&ecirc;n cứu v&agrave; đo đạc ch&iacute;nh x&aacute;c của nh&agrave; sản xuất. Mục đ&iacute;ch cuối c&ugrave;ng l&agrave; đem đến cảm gi&aacute;c cầm v&agrave; di chuột &ecirc;m nhẹ như kh&ocirc;ng, thoải m&aacute;i hơn hẳn so với chuột b&igrave;nh thường.</p>\r\n\r\n<h2>Tốc độ v&agrave; khả năng t&ugrave;y chỉnh</h2>\r\n\r\n<p>Th&ocirc;ng số của chuột Logitech MX Master 3S cực kỳ ấn tượng: 8000 DPI. N&oacute; thậm ch&iacute; c&ograve;n c&oacute; cuộn si&ecirc;u nhanh&nbsp;<strong>1000 d&ograve;ng 1 gi&acirc;y</strong>. Khi bạn thao t&aacute;c, đừng lo đến tiếng ồn v&igrave; gần như n&oacute; ho&agrave;n to&agrave;n kh&ocirc;ng tạo tiếng động, trừ khi bạn phải gh&eacute; s&aacute;t tai v&agrave;o mới nghe thấy.</p>\r\n\r\n<p>Con chuột cao cấp n&agrave;y được t&iacute;ch hợp&nbsp;<a href=\"https://www.logitech.com/vi-vn/software/options.html\" rel=\"noreferrer noopener nofollow\" target=\"_blank\">c&ocirc;ng nghệ Options+</a>&nbsp;độc quyền của Logitech. Người d&ugrave;ng được cung cấp khả năng t&ugrave;y chỉnh gần như v&ocirc; hạn. H&atilde;y t&ugrave;y chỉnh thoải m&aacute;i 7 n&uacute;t bấm theo nhu cầu v&agrave; sở th&iacute;ch của bản th&acirc;n bản. N&oacute; cũng hỗ trợ c&aacute;c c&aacute;ch g&aacute;n n&uacute;t kh&aacute;c nhau cho c&aacute;c ứng dụng kh&aacute;c nhau như Adobe Photoshop v&agrave; Premiere, bộ Microsoft Office v&agrave; tr&igrave;nh duyệt Edge, cung cấp nhiều kết hợp c&agrave;i sẵn hoặc c&aacute; nh&acirc;n như bạn muốn.</p>\r\n\r\n<p><img alt=\"chuot-Logitech-MX-Master-3S-3\" src=\"https://phongvu.vn/cong-nghe/wp-content/uploads/sites/2/2022/12/chuot-Logitech-MX-Master-3S-3.jpg\" style=\"height:441px; width:800px\" /></p>\r\n\r\n<p>Bạn c&oacute; thể t&ugrave;y chỉnh chuột theo h&agrave;ng trăm c&aacute;ch</p>\r\n\r\n<h2>Kết nối Bluetooth si&ecirc;u đỉnh</h2>\r\n\r\n<p>Chuột Logitech MX Master 3S sử dụng kết nối Bluetooth năng lượng thấp hoặc bộ thu USB Logi Bolt đi k&egrave;m. Chuột d&ugrave;ng cổng USB Loại A cung cấp li&ecirc;n kết 2,4 GHz kh&aacute; phổ biến.</p>\r\n\r\n<p>Chuột Logitech MX Master 3S c&oacute; một n&uacute;t ở dưới c&ugrave;ng của chuột cho ph&eacute;p bạn chuyển đổi giữa tối đa ba thiết bị c&oacute; kết nối Bluetooth hoặc USB kh&aacute;c nhau v&agrave; c&ocirc;ng nghệ Flow của Logitech thậm ch&iacute; c&ograve;n cho ph&eacute;p ch&uacute;ng ta di chuyển chuột từ m&agrave;n h&igrave;nh n&agrave;y sang m&agrave;n h&igrave;nh kh&aacute;c (chẳng hạn như từ m&aacute;y t&iacute;nh để b&agrave;n Windows sang m&aacute;y t&iacute;nh x&aacute;ch tay Mac) v&agrave; sao ch&eacute;p/d&aacute;n giữa c&aacute;c hệ thống. Một nhược điểm nhỏ l&agrave; 3S kh&ocirc;ng c&oacute; chỗ để cất giữ hoặc mang theo đầu USB nếu bạn cần đi du lịch.</p>\r\n\r\n<p>Để sạc, thiết bị c&oacute; cổng USB Type-C tr&ecirc;n mũi chuột v&agrave; c&aacute;p USB-C-to-A trong hộp.&nbsp;Nh&agrave; sản xuất cho biết cắm trong 1 ph&uacute;t sẽ cung cấp đủ năng lượng cho 3 giờ sử dụng v&agrave; một lần sạc đầy k&eacute;o d&agrave;i tới 70 ng&agrave;y.</p>\r\n\r\n<p><img alt=\"chuot-Logitech-MX-Master-3S-2\" src=\"https://phongvu.vn/cong-nghe/wp-content/uploads/sites/2/2022/12/chuot-Logitech-MX-Master-3S-2.jpg\" style=\"height:450px; width:800px\" /></p>\r\n\r\n<p>Chuột Logitech MX Master 3S l&agrave; một con chuột cực kỳ xịn x&ograve; để d&ugrave;ng trong văn ph&ograve;ng v&agrave; l&agrave; biểu tượng &ldquo;đắt xắt ra miếng&rdquo;. Nếu l&agrave; người c&oacute; nhu cầu cao với chuột m&aacute;y t&iacute;nh, bạn c&oacute; thể đầu tư v&agrave; tự thưởng cho m&igrave;nh con chuột ho&agrave;n to&agrave;n kh&aacute;c biệt n&agrave;y.</p>', 'Logitech MX Master 3S là con chuột cao cấp dành cho dân văn phòng hay bất kỳ ai cần chuột thực sự xịn xò.', '2022-12-17 11:10:07');

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

--
-- Đang đổ dữ liệu cho bảng `chitietphieunhap`
--

INSERT INTO `chitietphieunhap` (`machitietphieunhap`, `maphieunhap`, `masanpham`, `soluong`, `dongia`) VALUES
(34, 1, 5, 20, 18000000),
(35, 1, 6, 20, 19000000),
(36, 1, 7, 20, 27000000),
(37, 1, 8, 20, 54000000),
(38, 1, 9, 20, 38000000),
(39, 1, 10, 20, 40000000),
(40, 1, 15, 20, 25000000),
(41, 1, 18, 20, 9000000),
(42, 1, 1, 100, 0),
(43, 1, 2, 100, 0),
(44, 1, 3, 100, 0),
(45, 1, 4, 100, 0),
(46, 1, 19, 50, 12990000),
(47, 1, 11, 50, 35000000),
(48, 1, 12, 50, 20000000),
(49, 1, 13, 50, 22990000),
(50, 1, 14, 50, 23990000),
(51, 1, 16, 50, 30000000),
(52, 1, 17, 50, 16000000),
(53, 1, 19, 50, 11000000),
(54, 1, 20, 50, 15000000),
(55, 2, 23, 20, 479000),
(56, 2, 24, 20, 800000),
(57, 2, 25, 20, 109000),
(58, 2, 26, 20, 179000);

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

--
-- Đang đổ dữ liệu cho bảng `chitietphieuxuat`
--

INSERT INTO `chitietphieuxuat` (`machitietphieuxuat`, `maphieuxuat`, `masanpham`, `baohanh`, `soluong`, `dongia`) VALUES
(7, 1, 6, 12, 1, 19990000),
(8, 1, 1, 24, 1, 0),
(9, 1, 4, 24, 1, 0),
(10, 1, 5, 12, 1, 18990000),
(11, 1, 1, 24, 1, 0),
(12, 1, 4, 24, 1, 0),
(21, 2, 1, 24, 1, 0),
(22, 2, 1, 24, 1, 0),
(23, 2, 18, 12, 1, 8099000),
(24, 2, 19, 12, 1, 13990000),
(33, 3, 1, 24, 1, 0),
(34, 3, 1, 24, 1, 0),
(35, 3, 1, 24, 1, 0),
(36, 3, 4, 24, 1, 0),
(37, 3, 17, 12, 1, 17000000),
(38, 3, 18, 12, 1, 8099000),
(39, 3, 19, 12, 1, 13990000),
(40, 3, 20, 12, 1, 16000000),
(89, 6, 4, 24, 1, 0),
(90, 6, 17, 12, 1, 17000000),
(91, 5, 1, 24, 1, 0),
(92, 5, 19, 12, 1, 13990000),
(93, 4, 1, 24, 1, 0),
(94, 4, 2, 24, 1, 0),
(95, 4, 2, 24, 1, 0),
(96, 4, 3, 24, 1, 0),
(97, 4, 3, 24, 1, 0),
(98, 4, 9, 18, 1, 34990000),
(99, 4, 10, 12, 1, 35990000),
(100, 4, 13, 12, 1, 23990000),
(107, 10, 1, 24, 1, 0),
(108, 10, 20, 12, 1, 16000000),
(111, 7, 1, 24, 1, 0),
(112, 7, 18, 12, 1, 8099000),
(117, 11, 1, 24, 1, 0),
(118, 11, 16, 12, 1, 31990000),
(121, 8, 1, 24, 1, 0),
(122, 8, 18, 12, 1, 8099000),
(127, 12, 4, 24, 1, 0),
(128, 12, 17, 12, 1, 17000000),
(175, 13, 1, 24, 1, 0),
(176, 13, 19, 12, 1, 13990000),
(191, 17, 1, 24, 1, 0),
(192, 17, 19, 12, 2, 13990000),
(197, 18, 1, 24, 1, 0),
(198, 18, 19, 12, 1, 13990000),
(245, 25, 1, 24, 1, 0),
(246, 25, 20, 12, 1, 16000000),
(251, 14, 1, 24, 1, 0),
(252, 14, 18, 12, 1, 9990000),
(253, 15, 1, 24, 1, 0),
(254, 15, 19, 12, 1, 13990000),
(255, 16, 1, 24, 1, 0),
(256, 16, 20, 12, 1, 16000000),
(257, 19, 1, 24, 1, 0),
(258, 19, 19, 12, 1, 13990000),
(259, 22, 4, 24, 1, 0),
(260, 22, 17, 12, 1, 17000000),
(261, 24, 1, 24, 1, 0),
(262, 24, 20, 12, 1, 16000000),
(285, 28, 18, 12, 10, 8099000),
(286, 28, 1, 24, 1, 0),
(287, 27, 1, 24, 1, 0),
(288, 27, 1, 24, 1, 0),
(289, 27, 1, 24, 1, 0),
(290, 27, 2, 24, 1, 0),
(291, 27, 3, 24, 1, 0),
(292, 27, 4, 24, 1, 0),
(293, 27, 4, 24, 1, 0),
(294, 27, 7, 12, 1, 27990000),
(295, 27, 8, 12, 1, 54990000),
(296, 27, 9, 18, 1, 38900000),
(297, 27, 10, 12, 1, 40990000),
(298, 26, 1, 24, 1, 0),
(299, 26, 1, 24, 1, 0),
(300, 26, 1, 24, 1, 0),
(301, 26, 4, 24, 1, 0),
(302, 26, 4, 24, 1, 0),
(303, 26, 4, 24, 1, 0),
(304, 26, 5, 12, 1, 18990000),
(305, 26, 6, 12, 1, 19990000),
(306, 26, 7, 12, 1, 27990000),
(307, 26, 25, 12, 1, 129000),
(308, 26, 26, 12, 2, 199000);

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

--
-- Đang đổ dữ liệu cho bảng `giamgia`
--

INSERT INTO `giamgia` (`idgiamgia`, `magiamgia`, `mota`, `sotiengiam`, `ngaybatdau`, `ngayketthuc`) VALUES
(4, 'giam120k', 'Giảm giá sự kiện đặc biệt', 120000, '2022-12-17', '2023-02-28'),
(5, 'giam50k', 'giảm giá cuối năm', 50000, '2022-12-17', '2022-12-31'),
(6, 'giam100k', 'Giảm giá đầu năm', 100000, '2023-01-01', '2023-01-31'),
(7, 'giam70k', 'dasdasfasfasfa', 70000, '2022-12-22', '2022-12-22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hangsanxuat`
--

CREATE TABLE `hangsanxuat` (
  `mahang` int(11) NOT NULL,
  `tenhang` varchar(50) NOT NULL,
  `loaihang` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `hangsanxuat`
--

INSERT INTO `hangsanxuat` (`mahang`, `tenhang`, `loaihang`) VALUES
(1, 'ACER', 0),
(2, 'ASUS', 0),
(3, 'DELL', 0),
(4, 'HP', 0),
(5, 'MSI', 0),
(6, 'APPLE', 0),
(7, 'LOGITECH', 1),
(8, 'FUHLEN', 1);

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

--
-- Đang đổ dữ liệu cho bảng `laptop`
--

INSERT INTO `laptop` (`malaptop`, `tensanpham`, `cpu`, `ram`, `carddohoa`, `ocung`, `manhinh`, `nhucau`, `tinhtrang`) VALUES
(1, 'Laptop ACER Swift 3 SF314-511-55QE', 'Intel Core i5-1135G7', 16, 0, 512, 14, 'Doanh Nhân', 0),
(2, 'Laptop Asus Vivobook Pro M3401QA-KM025W R7', 'AMD Ryzen 7 5800H', 8, 2, 512, 14, 'Doanh Nhân', 0),
(3, 'Laptop Dell Vostro V5320', 'Intel Core i7 1260P', 16, 0, 256, 13.3, 'Doanh Nhân', 0),
(4, 'Laptop HP Envy 16-h0033TX', 'Intel Core i7 12900H', 8, 1, 128, 15.6, 'Doanh Nhân', 0),
(6, 'MacBook Air M2', 'Intel Core i3-M2', 16, 0, 128, 13.6, 'Doanh Nhân', 0),
(7, 'Laptop Acer Predator Gaming Helios PH315-54-99S6', 'Intel Core i7 11900H', 16, 1, 512, 15.6, 'Gaming', 0),
(8, 'Laptop Asus TUF Gaming FA507RR-HN835W', 'AMD Ryzen 7 6800H', 32, 2, 512, 15.6, 'Gaming', 0),
(9, 'Laptop Dell Gaming G15 5515 R5', 'AMD Ryzen 5 5600H', 8, 1, 128, 15.6, 'Gaming', 0),
(10, 'Laptop HP Gaming Victus 16-e0175AX R5', 'AMD Ryzen 5 5600H', 4, 1, 128, 15.6, 'Gaming', 0),
(11, 'Laptop MSI Gaming Katana GF66 12UCK-815VN', 'Intel Core i5 12450H', 8, 1, 256, 15.6, 'Gaming', 0),
(12, 'Laptop Asus Zenbook UX3402ZA-KM218W', 'Intel Core i3 12400P', 8, 0, 512, 14, 'Mỏng Nhẹ', 0),
(13, 'Laptop Dell XPS 13 9320', 'Intel Core i5 1240P', 32, 0, 512, 13.4, 'Mỏng Nhẹ', 0),
(14, 'Laptop HP Pavilion x360 14 ek0059TU', 'Intel Core i3 1215U', 8, 0, 128, 14, 'Mỏng Nhẹ', 0),
(15, 'Laptop Acer Aspire 3 A315-58-35AG', 'Intel Core i3 1115G4', 4, 0, 128, 15.6, 'Sinh Viên', 1),
(16, 'Laptop Asus Vivobook X415EA-EK1387W', 'Intel Core i3 1115G4', 8, 0, 256, 14, 'Sinh Viên', 1),
(17, 'Laptop Dell Inspiron N3505 R5', 'AMD Ryzen 3 3450U', 8, 2, 128, 15.6, 'Sinh Viên', 1),
(18, 'Laptop HP Pavilion 14 dv2036TU', 'Intel Core i5 1235U', 4, 0, 256, 14, 'Sinh Viên', 1),
(19, 'Laptop MSI Modern 15 A5M 234VN', 'AMD Ryzen 5 5500U', 8, 2, 512, 15.6, 'Sinh Viên', 0);

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

--
-- Đang đổ dữ liệu cho bảng `loiphanphoi`
--

INSERT INTO `loiphanphoi` (`maLH`, `hoten`, `sdt`, `email`, `noidung`, `trangthai`, `ngaytao`) VALUES
(1, 'Trần Khánh Duy', '0971001321', 'duy@gmail.com', 'Vui lòng để giá con Laptop ACER Swift 3 SF314-511-55QE. Không biết giá thế nào. Cảm ơn', 1, '2022-12-18 11:08:25');

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

--
-- Đang đổ dữ liệu cho bảng `nguoidung`
--

INSERT INTO `nguoidung` (`manguoidung`, `hoten`, `sodienthoai`, `diachi`, `trangthai`, `loainguoidung`, `email`, `password`, `ngaytao`) VALUES
(1, 'Admin', '0123456789', '180Cao Lỗ, Phường 4, Quận 8, Thành phố Hồ Chí Minh', 0, 2, 'admin@gmail.com', 'e64b78fc3bc91bcbc7dc232ba8ec59e0', '2022-12-16 11:45:04'),
(2, 'Nguyễn Võ Duy Tú Vinh', '0967087508', 'xã Tân Thành, huyện Gò Công Đông, tỉnh Tiền Giang', 0, 1, NULL, NULL, '2022-12-16 18:03:25'),
(3, 'Lê Phú Thành', '0907301579', 'Cai Lậy', 0, 0, 'thanh@gmail.com', '25f4f0d03b2dd2fd09a2e57a2b0d67b7', '2022-12-17 15:31:39'),
(4, 'Trương Văn Toàn', '0907301571', 'Cai Lậy, Tiền Giang', 0, 0, 'toan@gmail.com', '25f4f0d03b2dd2fd09a2e57a2b0d67b7', '2022-12-18 10:31:05'),
(5, 'Trần Khánh Duy', '0971001321', 'Tiền Giang', 0, 0, 'duy@gmail.com', '25f4f0d03b2dd2fd09a2e57a2b0d67b7', '2022-12-18 10:52:13'),
(6, 'Liên', '0907301574', 'Cà Mau', 0, 0, 'lien@gmail.com', '25f4f0d03b2dd2fd09a2e57a2b0d67b7', '2022-12-18 11:58:29'),
(7, 'Mai', '0909936629', 'TpHCm', 0, 0, 'mai@gmail.com', '25f4f0d03b2dd2fd09a2e57a2b0d67b7', '2022-12-18 12:07:19'),
(8, 'Lê Cẩm Tú', '0907894561', 'Tiền Giang', 0, 0, 'tutu@gmail.com', '25f4f0d03b2dd2fd09a2e57a2b0d67b7', '2022-12-19 21:08:51'),
(9, 'Thanh Thanh', '0349521973', 'An Giang', 0, 0, 'thanhthanh@gmail.com', '25f4f0d03b2dd2fd09a2e57a2b0d67b7', '2022-12-19 23:38:47'),
(10, 'Lý Phong Vũ', '0773456789', '17 Bà Huyện Thanh Quan, Phường Võ Thị Sáu, Quận 3, TP. Hồ Chí Minh', 0, 1, NULL, NULL, '2022-12-22 20:01:35'),
(11, 'Nguyễn Thanh Quân', '0333456789', 'Tiền Giang', 0, 1, NULL, NULL, '2022-12-22 20:49:54'),
(12, 'Thanh Trúc', '0349521970', 'Cà Mau', 0, 0, 'truc@gmail.com', '25f4f0d03b2dd2fd09a2e57a2b0d67b7', '2022-12-22 20:53:31');

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

--
-- Đang đổ dữ liệu cho bảng `phieunhap`
--

INSERT INTO `phieunhap` (`maphieunhap`, `manguoidung`, `ghichu`, `tongtien`, `congno`, `ngaytao`) VALUES
(1, 1, 'cập nhật lần 3', 13948500000, 0, '2022-12-17 11:15:00'),
(2, 2, 'cập nhật lần 1', 31340000, 0, '2022-12-22 20:47:33'),
(3, 11, 'cập nhật lần 1', 0, 0, '2022-12-23 09:13:41');

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
  `ngaytao` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `phieuxuat`
--

INSERT INTO `phieuxuat` (`maphieuxuat`, `hotennguoinhan`, `sodienthoainguoinhan`, `diachinguoinhan`, `manguoidung`, `magiamgia`, `ghichu`, `tongtien`, `tinhtranggiaohang`, `hinhthucthanhtoan`, `congno`, `ngaytao`) VALUES
(1, 'Lê Phú Thành', '0907301579', 'Cai Lậy', 3, NULL, NULL, 38980000, 4, 0, 0, '2022-12-17 00:00:00'),
(2, 'Trương Văn Toàn', '0907301571', 'Cai Lậy, Tiền Giang', 4, NULL, 'Giao tới Cai Lậy', 22089000, 4, 0, 0, '2022-12-18 00:00:00'),
(3, 'Trần Khánh Duy', '0971001321', 'Tiền Giang', 5, NULL, NULL, 55089000, 4, 0, 120000, '2022-12-18 00:00:00'),
(4, 'Liên', '0907301574', 'Cà Mau', 6, NULL, NULL, 94970000, 4, 0, 0, '2022-12-18 17:19:55'),
(5, 'Mai', '0909936629', 'TpHCm', 7, NULL, NULL, 13990000, 4, 0, 0, '2022-12-18 17:19:43'),
(6, 'Mai', '0909936629', 'TpHCm', 7, NULL, 'dasdada', 17000000, 4, 0, 0, '2022-12-18 17:19:30'),
(7, 'Mai', '0909936629', 'TpHCm', 7, NULL, NULL, 8099000, 4, 0, 0, '2022-12-18 17:27:00'),
(8, 'Admin', '0123456789', '180Cao Lỗ, Phường 4, Quận 8, Thành phố Hồ Chí Minh', 1, 5, NULL, 8099000, 4, 0, 0, '2022-12-18 18:55:37'),
(10, 'Liên', '0907301574', 'Cà Mau', 6, 4, 'dasdadada', 16000000, 4, 0, 0, '2022-12-18 17:22:55'),
(11, 'Liên', '0907301574', 'Cà Mau', 6, 4, 'dasdasd', 31990000, 4, 0, 0, '2022-12-18 17:28:36'),
(12, 'Trần Khánh Duy', '0971001321', 'Tiền Giang', 5, 4, NULL, 17000000, 4, 0, 0, '2022-12-18 10:13:51'),
(13, 'Trương Văn Toàn', '0907301571', 'Cai Lậy, Tiền Giang', 4, NULL, 'dsadsadadada', 13990000, 4, 0, 0, '2022-12-19 19:53:10'),
(14, 'Trương Văn Toàn', '0907301571', 'Cai Lậy, Tiền Giang', 4, 4, NULL, 8099000, 4, 0, 0, '2022-12-19 17:35:10'),
(15, 'Liên', '0907301574', 'Cà Mau', 6, 4, 'dasdadad', 13990000, 4, 0, 0, '2022-12-19 18:20:47'),
(16, 'Liên', '0907301574', 'Cà Mau', 6, 4, NULL, 16000000, 4, 0, 0, '2022-12-19 19:30:58'),
(17, 'Lê Cẩm Tú', '0907894561', 'Tiền Giang', 8, 4, 'dadadadad', 27980000, 4, 0, 0, '2022-12-19 21:24:06'),
(18, 'Lê Cẩm Tú', '0907894561', 'Tiền Giang', 8, 4, NULL, 13990000, 4, 0, 0, '2022-12-19 21:33:43'),
(19, 'Admin', '0123456789', '180Cao Lỗ, Phường 4, Quận 8, Thành phố Hồ Chí Minh', 1, 4, 'áp mã vào giá 13,870,000đ', 13870000, 4, 0, 0, '2022-12-19 21:49:16'),
(22, 'Lê Cẩm Tú', '0907894561', 'Tiền Giang', 8, 4, 'dasddaadasd', 16880000, 4, 0, 0, '2022-12-19 21:57:33'),
(24, 'Admin', '0123456789', '180Cao Lỗ, Phường 4, Quận 8, Thành phố Hồ Chí Minh', 1, 4, NULL, 15880000, 4, 0, 0, '2022-12-19 22:20:59'),
(25, 'Thanh Thanh', '0349521973', 'An Giang', 9, 4, 'dasdda', 15880000, 4, 0, 0, '2022-12-19 23:39:11'),
(26, 'Thanh Trúc', '0349521970', 'Cà Mau', 12, NULL, 'Giao đến nhanh', 67497000, 4, 0, 0, '2022-12-22 20:54:24'),
(27, 'Thanh Trúc', '0349521970', 'Cà Mau', 12, NULL, 'dasdsadadad', 162870000, 4, 0, 0, '2022-12-22 20:55:49'),
(28, 'Admin', '0123456789', '180Cao Lỗ, Phường 4, Quận 8, Thành phố Hồ Chí Minh', 1, 4, 'dasdaddd', 80870000, 4, 1, 0, '2022-12-23 10:07:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phukien`
--

CREATE TABLE `phukien` (
  `maphukien` int(11) NOT NULL,
  `tenphukien` varchar(255) NOT NULL,
  `loaiphukien` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `phukien`
--

INSERT INTO `phukien` (`maphukien`, `tenphukien`, `loaiphukien`) VALUES
(1, 'Chuột Logitech B175 Optical Wireless', 'Chuột'),
(2, 'Chuột Fuhlen G3 RGB Gaming', 'Chuột'),
(3, 'Bàn phím Fuhlen Destroyer RGB Gaming', 'Phím'),
(4, 'Bàn phím Logitech K270 Optical Wireless', 'Phím'),
(5, 'Chuột Fuhlen G90 Pro 5000 DPI Infrared USB Led RGB (Đen)', 'Chuột'),
(6, 'Bàn phím cơ Fuhlen SM680', 'Phím'),
(7, 'Chuột gaming Fuhlen L102 1000 DPI', 'Chuột'),
(8, 'Bàn phím Fuhlen L411', 'Phím'),
(9, 'Tai nghe On-ear Logitech H370 (Đen)', 'Tai nghe'),
(10, 'Chuột gaming Logitech G102 Gen2 Lightsync', 'Chuột'),
(11, 'Chuột gaming không dây Logitech G304 (Trắng)', 'Chuột');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quatang`
--

CREATE TABLE `quatang` (
  `maquatang` int(11) NOT NULL,
  `tensanpham` varchar(255) NOT NULL,
  `masanpham` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `quatang`
--

INSERT INTO `quatang` (`maquatang`, `tensanpham`, `masanpham`) VALUES
(1, 'Laptop ACER Swift 3 SF314-511-55QE', '1,4'),
(2, 'Laptop Asus Vivobook Pro M3401QA-KM025W R7', '1,4'),
(3, 'Laptop Dell Vostro V5320', '1,4'),
(4, 'Laptop HP Envy 16-h0033TX', '1,4'),
(5, 'MacBook Air M2 2022', '1'),
(6, 'MacBook Air M2', '1'),
(7, 'Laptop Acer Predator Gaming Helios PH315-54-99S6', '2,3'),
(8, 'Laptop Asus TUF Gaming FA507RR-HN835W', '2,3'),
(9, 'Laptop Dell Gaming G15 5515 R5', '2,3'),
(10, 'Laptop HP Gaming Victus 16-e0175AX R5', '2,3'),
(11, 'Laptop MSI Gaming Katana GF66 12UCK-815VN', '2,3'),
(12, 'Laptop Asus Zenbook UX3402ZA-KM218W', '1,4'),
(13, 'Laptop Dell XPS 13 9320', '1'),
(14, 'Laptop HP Pavilion x360 14 ek0059TU', '4'),
(15, 'Laptop Acer Aspire 3 A315-58-35AG', '1'),
(16, 'Laptop Asus Vivobook X415EA-EK1387W', '1'),
(17, 'Laptop Dell Inspiron N3505 R5', '1'),
(18, 'Laptop HP Pavilion 14 dv2036TU', '1,4'),
(19, 'Laptop MSI Modern 15 A5M 234VN', '1,4');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `masanpham` int(11) NOT NULL,
  `tensanpham` varchar(255) NOT NULL,
  `baohanh` tinyint(4) NOT NULL,
  `mota` varchar(500) NOT NULL,
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

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`masanpham`, `tensanpham`, `baohanh`, `mota`, `soluong`, `gianhap`, `giaban`, `giakhuyenmai`, `mathuvienhinh`, `mahang`, `maquatang`, `malaptop`, `maphukien`, `loaisanpham`, `trangthai`, `ngaytao`) VALUES
(1, 'Chuột Logitech B175 Optical Wireless', 24, 'Chuột Logitech B175 Optical Wireless', 71, 0, 0, 0, 1, 7, NULL, NULL, 1, 1, 0, '2022-12-16 18:09:11'),
(2, 'Chuột Fuhlen G3 RGB Gaming', 24, 'Chuột Fuhlen G3 RGB Gaming', 97, 0, 0, 0, 2, 8, NULL, NULL, 2, 1, 0, '2022-12-16 18:09:56'),
(3, 'Bàn phím Fuhlen Destroyer RGB Gaming', 24, 'Bàn phím Fuhlen Destroyer RGB Gaming', 97, 0, 0, 0, 3, 8, NULL, NULL, 3, 1, 0, '2022-12-16 18:14:40'),
(4, 'Bàn phím Logitech K270 Optical Wireless', 24, 'Bàn phím Logitech K270 Optical Wireless', 91, 0, 0, 0, 4, 7, NULL, NULL, 4, 1, 0, '2022-12-16 18:15:18'),
(5, 'Laptop ACER Swift 3 SF314-511-55QE', 12, 'Acer Swift 3 SF314-511-55QE NX.ABNSV.003 của Acer sở hữu hiệu năng mạnh mẽ đến từ chip Intel core thế hệ 11 cùng với Ram chạy đa nhiệm mượt mà và bộ nhớ SSD có dung lượng lớn. Cùng với màu sắc và kiểu dáng sang trọng hiện đại phù hợp cho nhu cầu học tập và làm việc với hiệu suất cao của các doanh nhân.', 19, 18000000, 18990000, 0, 5, 1, 1, 1, NULL, 0, 0, '2022-12-17 10:12:14'),
(6, 'Laptop Asus Vivobook Pro M3401QA-KM025W R7', 12, 'Đã đến lúc bạn tận hưởng những tinh hoa của công nghệ, nơi hình ảnh tuyệt đẹp từ màn hình 2.8K OLED và âm thanh Harman Kardon tạo nên một trải nghiệm chưa từng có trên chiếc laptop ASUS Vivobook Pro M3401QA-KM025W đầy tính di động.', 19, 19000000, 19990000, 0, 6, 2, 2, 2, NULL, 0, 0, '2022-12-17 10:14:10'),
(7, 'Laptop Dell Vostro V5320', 12, 'Mô tả: Dell Vostro 5320 gói gọn tốc độ và sức mạnh hàng đầu trong một chiếc laptop thời trang, kiểu dáng bắt mắt, siêu mỏng nhẹ. Mọi trải nghiệm trên Dell Vostro V5320 đều diễn ra hoàn hảo, từ hiệu năng, khả năng phản hồi, thời lượng pin cho đến màn hình tuyệt đẹp.', 18, 27000000, 27990000, 0, 7, 3, 3, 3, NULL, 0, 0, '2022-12-17 10:15:49'),
(8, 'Laptop HP Envy 16-h0033TX', 12, 'Với bộ vi xử lý Intel Core i9 12900H, sức mạnh của HP Envy 16-h0033TX vượt mọi giới hạn, mang đến hiệu năng xử lý nhanh chưa từng thấy. Bạn sẽ có một thiết bị làm việc chuyên nghiệp, làm được những điều tưởng chừng không thể trên một chiếc máy tính xách tay di động.', 19, 54000000, 54990000, 0, 8, 4, 4, 4, NULL, 0, 0, '2022-12-17 10:18:27'),
(9, 'MacBook Air M2', 18, 'Được cải tiến để có hiệu năng vượt trội, MacBook Air M2 2022 giờ đây đạt tới ngưỡng sức mạnh cao nhất trên phiên bản RAM 16GB. Bạn sẽ dễ dàng thực hiện cùng lúc nhiều tác vụ nặng, đa nhiệm xuất sắc và có thể chỉnh sửa nhiều luồng video 4K và 8K ProRes hiệu suất cao.', 18, 38000000, 38900000, 34990000, 10, 6, 6, 6, NULL, 0, 0, '2022-12-17 10:23:23'),
(10, 'Laptop Acer Predator Gaming Helios PH315-54-99S6', 12, 'Acer Predator Helios 300 PH315-54-99S6 có sức mạnh khiến tất cả phải kinh ngạc với bộ vi xử lý Intel Core i9 11900H, giúp đáp ứng hiệu suất chơi game và khối lượng công việc khổng lồ. Bên cạnh đó là GPU RTX 3060 và màn hình QHD 165Hz, cho bạn trải nghiệm chơi game thực sự đỉnh cao.', 18, 40000000, 40990000, 35990000, 11, 1, 7, 7, NULL, 0, 0, '2022-12-17 10:29:41'),
(11, 'Laptop Asus TUF Gaming FA507RR-HN835W', 12, 'Bên trong thiết kế vô cùng thanh lịch của Asus TUF Gaming A15 2022 là một sức mạnh chơi game hàng đầu với bộ xử lý AMD Ryzen 7 6800H và card đồ hoạ rời RTX 3070. Hơn nữa, chiếc laptop gaming này còn được trang bị hàng loạt công nghệ tiên tiến khác để hỗ trợ tối đa cho game thủ.', 50, 35000000, 36990000, 0, 12, 2, 8, 8, NULL, 0, 0, '2022-12-17 10:31:12'),
(12, 'Laptop Dell Gaming G15 5515 R5', 12, 'Một chiếc laptop gaming đầy khác biệt với thiết kế phối màu trắng – đen độc đáo, sở hữu cấu hình hàng đầu và độ bền chuẩn Dell, Dell G15 5515 Ryzen 5 dành cho những game thủ cá tính, năng động.', 50, 20000000, 21000000, 19990000, 13, 3, 9, 9, NULL, 0, 0, '2022-12-17 10:37:25'),
(13, 'Laptop HP Gaming Victus 16-e0175AX R5', 12, 'Cùng bạn cháy bỏng với đam mê, laptop HP Victus 16-e0175AX mang trên mình màn hình lớn 144Hz siêu mượt cho game thủ cùng hiệu năng trên cả tuyệt vời với sự kết hợp giữa AMD Ryzen 5 5600H và RTX 3050 Ti, đảm bảo chiến tốt mọi tựa game.', 49, 22990000, 23990000, 0, 14, 4, 10, 10, NULL, 0, 0, '2022-12-17 10:40:04'),
(14, 'Laptop MSI Gaming Katana GF66 12UCK-815VN', 12, 'Một siêu phẩm laptop gaming hàng đầu với thiết kế đầy cảm hứng và hiệu suất tiên tiến lại được bán với giá rẻ không ngờ, MSI Gaming Katana GF66 12UCK-815VN đưa bạn đến với đam mê chơi game theo cách đơn giản nhất.', 50, 23990000, 24990000, 0, 15, 5, 11, 11, NULL, 0, 0, '2022-12-17 10:41:20'),
(15, 'Laptop Asus Zenbook UX3402ZA-KM218W', 12, 'ASUS Zenbook UX3402ZA-KM218W là một chiếc Zenbook đầy đột phá so với những gì bạn từng biết trước đây. Từ một diện mạo hoàn toàn mới, màn hình 14 inch OLED 2.8K đỉnh cao cho đến bộ vi xử lý Intel thế hệ thứ 12 mới nhất, Zenbook 14 OLED thể hiện quyền năng vượt trội trong mức giá bán hấp dẫn.', 20, 25000000, 25550000, 0, 16, 2, 12, 12, NULL, 0, 0, '2022-12-17 10:44:26'),
(16, 'Laptop Dell XPS 13 9320', 12, 'Dell XPS 13 Plus 9320 mang trên mình vẻ đẹp mê hoặc mà bạn chưa từng thấy ở bất kỳ chiếc laptop nào trước đây. Một chiếc laptop không giới hạn với màn hình tràn viền, bàn phím tràn cạnh và hiệu suất vượt xa khỏi kỳ vọng của dòng UltraBook siêu mỏng nhẹ.', 49, 30000000, 31990000, 0, 17, 3, 13, 13, NULL, 0, 0, '2022-12-17 10:46:30'),
(17, 'Laptop HP Pavilion x360 14 ek0059TU', 12, 'HP Pavilion x360 14-ek0059TU dành cho những người thích một sản phẩm đa năng, có thể chuyển đổi linh hoạt giữa laptop – máy tính bảng và hơn thế nữa. Sở hữu hiệu năng tuyệt vời với bộ vi xử lý Intel thế hệ thứ 12 mới nhất, thiết kế độc đáo nhưng máy lại được bán ở mức giá rẻ đến giật mình.', 46, 16000000, 17000000, 0, 18, 4, 14, 14, NULL, 0, 0, '2022-12-17 10:47:51'),
(18, 'Laptop Acer Aspire 3 A315-58-35AG', 12, 'Không cần phải bỏ ra quá nhiều tiền, bạn vẫn có thể “rinh” về nhà một chiếc laptop thời trang, màn hình đẹp và trang bị bộ vi xử lý Intel thế hệ thứ 11 mạnh mẽ, Acer Aspire 3 A315-58-35AG là sự lựa chọn rất kinh tế dành cho người làm văn phòng hay học sinh, sinh viên.', 6, 9000000, 9990000, 8099000, 19, 1, 15, 15, NULL, 0, 0, '2022-12-17 10:50:23'),
(19, 'Laptop Asus Vivobook X415EA-EK1387W', 12, 'Asus Vivobook X415EA-EK1387W dành cho những ai đang tìm kiếm một chiếc laptop nhỏ gọn, thiết kế đẹp và hiệu năng đủ tốt để chạy các ứng dụng văn phòng mượt mà. Với mức giá khá rẻ, không khó để VivoBook X415 chinh phục người dùng.', 40, 11000000, 13990000, 0, 20, 2, 16, 16, NULL, 0, 0, '2022-12-17 10:51:36'),
(20, 'Laptop Dell Inspiron N3505 R5', 12, 'Dell Inspiron 3505 phiên bản màn hình cảm ứng phù hợp cho những ai thích tương tác trực tiếp vào màn hình, trang bị bộ vi xử lý AMD Ryzen 5 tích hợp GPU Radeon Vega 8 đầy mạnh mẽ.', 43, 15000000, 16000000, 0, 21, 3, 17, 17, NULL, 0, 0, '2022-12-17 10:53:01'),
(21, 'Laptop HP Pavilion 14 dv2036TU', 12, 'Thiết kế cá tính, siêu nhỏ gọn, màn hình tuyệt đẹp và trên hết là cấu hình cực mạnh từ bộ vi xử lý Intel thế hệ thứ 12 mới nhất, HP Pavilion 14 dv2036TU luôn sát cánh bên bạn để hoàn thành công việc nhanh chóng.', 0, 0, 0, 0, 22, 4, 18, 18, NULL, 0, 0, '2022-12-22 20:03:39'),
(22, 'Laptop MSI Modern 15 A5M 234VN', 12, 'Tập hợp những công nghệ mới nhất trong một thiết kế thời thượng, MSI Modern 15 A5M 234VN tự tin hỗ trợ tối đa cho công việc của bạn, đồng thời thể hiện cá tính riêng biệt.', 0, 0, 0, 0, 23, 5, 19, 19, NULL, 0, 0, '2022-12-22 20:04:31'),
(23, 'Chuột Fuhlen G90 Pro 5000 DPI Infrared USB Led RGB (Đen)', 12, 'Chuột chơi game Fuhlen G90 Pro là mẫu chuột chơi game giá rẻ có thiết kế công thái học phù hợp với mọi kích thước bàn tay của game thủ, được trang bị những công nghệ tiên tiến như mắt cảm biến Pixart PWM3325, nút switch Magnet Driven Micro cho phép số lần click chuột lên đến 100 triệu lượt, mang lại trải nghiệm game tuyệt vời nhất cho người chơi.', 20, 479000, 499000, 0, 24, 8, NULL, NULL, 5, 1, 0, '2022-12-22 20:37:37'),
(24, 'Bàn phím cơ Fuhlen SM680', 12, 'Bàn phím cơ Fuhlen SM680 RGB LED với mẫu bàn phím có thiết kế dạng TenKeyLess nên khá gọn gàng, thích hợp cho những game thủ.', 20, 800000, 829000, 0, 25, 8, NULL, NULL, 6, 1, 0, '2022-12-22 20:38:38'),
(25, 'Chuột gaming Fuhlen L102 1000 DPI', 12, 'Chuột game Fuhlen L102 tại hà nội có màu đen chủ đạo với thiết kế Ergonomic khỏe khoẳn, cầm khá vừa tay và thoải mái để người dùng có thể thao tác, sử dụng trong một thời gian dài mà không có cảm giác bị mỏi tay và khó chịu. Bạn có thể chơi game, lướt web đọc tin tức hàng giờ liền mà vẫn thoải mái.', 19, 109000, 129000, 0, 26, 8, NULL, NULL, 7, 1, 0, '2022-12-22 20:39:23'),
(26, 'Bàn phím Fuhlen L411', 12, 'FUHLEN là thương hiệu chuyên sản xuất bàn phím và chuột thuộc sở hữu của GTECH được thành lập từ năm 1996. Thương hiệu này luôn thực hiện tốt sứ mệnh của mình là mang đến cho khách hàng những sản phẩm thiết kế đẹp và chất lượng đảm bảo ở một mức giá hợp lý', 18, 179000, 199000, 0, 27, 8, NULL, NULL, 8, 1, 0, '2022-12-22 20:40:06'),
(27, 'Tai nghe On-ear Logitech H370 (Đen)', 12, 'Thưởng thức các cuộc gọi internet trong trẻo cho cảm giác như bạn đang nói chuyện trực tiếp. Việc chơi game trở nên đẳng cấp với các thao tác và hiệu ứng thú vị. Và nghe nhạc vượt ra ngoài các giai điệu và đoạn điệp khúc để hội tụ âm điệu đầy đủ.', 0, 0, 0, 0, 28, 7, NULL, NULL, 9, 1, 0, '2022-12-22 20:40:34'),
(28, 'Chuột gaming Logitech G102 Gen2 Lightsync', 12, 'Chuột gaming Logitech G102 Gen2 Lightsync có một thiết kế hiện đại, cao cấp. Sở hữu công nghệ LIGHTSYNC, cảm biến DPI cao và 6 nút tiện lợi giúp bạn dễ dàng sử dụng làm việc và chơi game hơn.', 0, 0, 0, 0, 29, 7, NULL, NULL, 10, 1, 0, '2022-12-22 20:41:01'),
(29, 'Chuột gaming không dây Logitech G304 (Trắng)', 12, 'Chuột là thiết bị ngoại vi không thể thiếu cho mỗi bộ máy tính PC hay laptop của bạn để sử dụng hằng ngày. Chuột gaming không dây Logitech G304 (Trắng) sẽ là lựa chọn không thể bỏ qua dành cho bạn khi sử dụng hằng ngay. Hãy cùng Phong Vũ đi tìm hiểu chi tiết chuột Logitech G304 này nhé!', 0, 0, 0, 0, 30, 7, NULL, NULL, 11, 1, 0, '2022-12-22 20:41:33');

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

--
-- Đang đổ dữ liệu cho bảng `slider`
--

INSERT INTO `slider` (`maslider`, `tieude1`, `tieude2`, `tieude3`, `duongdan`, `hinh`) VALUES
(1, 'Giảm  <span>Black Friday</span>  Tuần này', 'Laptop Gamming', 'Chỉ từ <span>19.990.000đ</span>', 'https://vitinhqv.me/chi-tiet-san-pham/12', '639d3ef666a36_1671249654.jpg'),
(2, 'Giảm  <span>20%</span>  Tuần này', 'Laptop Sinh Viên', 'Chỉ từ <span>8.990.000đ</span>', 'https://vitinhqv.me/chi-tiet-san-pham/18', '639d3f26e6059_1671249702.jpg'),
(3, 'Giảm  <span>cuối năm</span>  Tháng này', 'Laptop Đồ Họa', 'Chỉ từ <span>25.550.000đ</span>', 'https://vitinhqv.me/chi-tiet-san-pham/15', '639d3f7d0f19d_1671249789.jpg');

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
-- Đang đổ dữ liệu cho bảng `thuvienhinh`
--

INSERT INTO `thuvienhinh` (`mathuvienhinh`, `tensanpham`, `hinh`) VALUES
(1, 'Chuột Logitech B175 Optical Wireless', '639c51d6dafc7_1671188950.jpg|639c51d76a5aa_1671188951.jpg|639c51d77be60_1671188951.jpg'),
(2, 'Chuột Fuhlen G3 RGB Gaming', '639c5203d43e1_1671188995.jpg|639c5203e7ca8_1671188995.jpg|639c52040587d_1671188996.jpg|639c520418366_1671188996.jpg'),
(3, 'Bàn phím Fuhlen Destroyer RGB Gaming', '639c531ff403c_1671189279.jpg|639c532013c51_1671189280.jpg|639c532025faa_1671189280.jpg|639c532038d2e_1671189280.jpg'),
(4, 'Bàn phím Logitech K270 Optical Wireless', '639c5346a98bd_1671189318.jpg|639c5346bd226_1671189318.jpg|639c5346cfd1f_1671189318.jpg'),
(5, 'Laptop ACER Swift 3 SF314-511-55QE', '639d338e750bc_1671246734.png|639d338e8528c_1671246734.png|639d338e91b18_1671246734.png|639d338e9f0cf_1671246734.png|639d338eab4cc_1671246734.png'),
(6, 'Laptop Asus Vivobook Pro M3401QA-KM025W R7', '639d3401a55b1_1671246849.png|639d3401b6ea3_1671246849.png|639d3401c721e_1671246849.png|639d3401d5a94_1671246849.png|639d3401e4a5b_1671246849.png'),
(7, 'Laptop Dell Vostro V5320', '639d3464f106f_1671246948.png|639d34650cdbc_1671246949.png|639d34651ce6a_1671246949.png|639d34652b740_1671246949.png|639d34653811e_1671246949.png'),
(8, 'Laptop HP Envy 16-h0033TX', '639d3502c5ca7_1671247106.png|639d3502d57dc_1671247106.png|639d3502e29ec_1671247106.png|639d3502f1f60_1671247106.png|639d35030b9e3_1671247107.png'),
(9, 'MacBook Air M2 2022', '639d355f0c40a_1671247199.png|639d355f20e1e_1671247199.png|639d355f31aec_1671247199.png|639d355f41b26_1671247199.png|639d355f5236e_1671247199.png'),
(10, 'MacBook Air M2', '639d362ac0d00_1671247402.png|639d362ad3ad3_1671247402.png|639d362ae7818_1671247402.png|639d362af3926_1671247402.png|639d362b1425f_1671247403.png'),
(11, 'Laptop Acer Predator Gaming Helios PH315-54-99S6', '639d37a4dbbfd_1671247780.png|639d37a4ed881_1671247780.png|639d37a50a7d9_1671247781.png|639d37a517d1c_1671247781.png|639d37a52ad50_1671247781.png'),
(12, 'Laptop Asus TUF Gaming FA507RR-HN835W', '639d3800381cb_1671247872.png|639d38004a1ca_1671247872.png|639d38005a162_1671247872.png|639d380067fc6_1671247872.png|639d380077599_1671247872.png'),
(13, 'Laptop Dell Gaming G15 5515 R5', '639d397592adb_1671248245.png|639d3975a9a01_1671248245.png|639d3975b9e5f_1671248245.png|639d3975c8882_1671248245.png|639d3975dbb87_1671248245.png'),
(14, 'Laptop HP Gaming Victus 16-e0175AX R5', '639d3a1422ba2_1671248404.png|639d3a1433638_1671248404.png|639d3a1442a96_1671248404.png|639d3a14524f6_1671248404.png|639d3a1460bf3_1671248404.png'),
(15, 'Laptop MSI Gaming Katana GF66 12UCK-815VN', '639d3a606c32c_1671248480.png|639d3a608055b_1671248480.png|639d3a608e724_1671248480.png|639d3a6099b11_1671248480.png|639d3a60a5d6e_1671248480.png'),
(16, 'Laptop Asus Zenbook UX3402ZA-KM218W', '639d3b1a5e95c_1671248666.png|639d3b1a6e7a6_1671248666.png|639d3b1a7dc79_1671248666.png|639d3b1a919c7_1671248666.png|639d3b1a9f56b_1671248666.png'),
(17, 'Laptop Dell XPS 13 9320', '639d3b968cac3_1671248790.png|639d3b969f5be_1671248790.png|639d3b96af428_1671248790.png|639d3b96bdd96_1671248790.png|639d3b96cde5e_1671248790.png'),
(18, 'Laptop HP Pavilion x360 14 ek0059TU', '639d3be6a2d96_1671248870.png|639d3be6b4019_1671248870.png|639d3be6c3e2c_1671248870.png|639d3be6d6a3c_1671248870.png|639d3be6e5d05_1671248870.png'),
(19, 'Laptop Acer Aspire 3 A315-58-35AG', '639d3c7f8ce9e_1671249023.png|639d3c7f9fff0_1671249023.png|639d3c7fb12ea_1671249023.png|639d3c7fc1fa8_1671249023.png|639d3c7fd2899_1671249023.png'),
(20, 'Laptop Asus Vivobook X415EA-EK1387W', '639d3cc80dd29_1671249096.png|639d3cc82097e_1671249096.png|639d3cc833198_1671249096.png|639d3cc847f5f_1671249096.png|639d3cc855ae6_1671249096.png'),
(21, 'Laptop Dell Inspiron N3505 R5', '639d3d1cf096b_1671249180.png|639d3d1d0e827_1671249181.png|639d3d1d1df3b_1671249181.png|639d3d1d304ce_1671249181.png|639d3d1d4331f_1671249181.png'),
(22, 'Laptop HP Pavilion 14 dv2036TU', '63a455aab08d3_1671714218.png|63a455aad425b_1671714218.png|63a455aae6732_1671714218.png|63a455ab02f54_1671714219.png|63a455ab13c05_1671714219.png'),
(23, 'Laptop MSI Modern 15 A5M 234VN', '63a455df534a5_1671714271.png|63a455df63fa7_1671714271.png|63a455df703f8_1671714271.png|63a455df7b3fa_1671714271.png|63a455df86d31_1671714271.png'),
(24, 'Chuột Fuhlen G90 Pro 5000 DPI Infrared USB Led RGB (Đen)', '63a45da125ed6_1671716257.png|63a45da138e98_1671716257.png|63a45da146939_1671716257.png|63a45da156568_1671716257.png'),
(25, 'Bàn phím cơ Fuhlen SM680', '63a45dde4b425_1671716318.png|63a45dde5e1f0_1671716318.png|63a45dde70fbb_1671716318.png|63a45dde85c54_1671716318.png|63a45dde9692c_1671716318.png'),
(26, 'Chuột gaming Fuhlen L102 1000 DPI', '63a45e0b044f0_1671716363.png|63a45e0b15add_1671716363.png|63a45e0b25f0d_1671716363.png|63a45e0b33c73_1671716363.png'),
(27, 'Bàn phím Fuhlen L411', '63a45e364cfbb_1671716406.png|63a45e365bb0c_1671716406.png|63a45e366ac56_1671716406.png|63a45e3678e88_1671716406.png|63a45e3688843_1671716406.png'),
(28, 'Tai nghe On-ear Logitech H370 (Đen)', '63a45e522ad84_1671716434.png|63a45e523a68d_1671716434.png|63a45e524c632_1671716434.png|63a45e5263411_1671716434.png'),
(29, 'Chuột gaming Logitech G102 Gen2 Lightsync', '63a45e6cec79d_1671716460.png|63a45e6d25f3f_1671716461.png|63a45e6d4508d_1671716461.png'),
(30, 'Chuột gaming không dây Logitech G304 (Trắng)', '63a45e8d0ced2_1671716493.png|63a45e8d27a0b_1671716493.png|63a45e8d40d92_1671716493.png');

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
  MODIFY `mabaiviet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  MODIFY `machitietphieunhap` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT cho bảng `chitietphieuxuat`
--
ALTER TABLE `chitietphieuxuat`
  MODIFY `machitietphieuxuat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=309;

--
-- AUTO_INCREMENT cho bảng `giamgia`
--
ALTER TABLE `giamgia`
  MODIFY `idgiamgia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `hangsanxuat`
--
ALTER TABLE `hangsanxuat`
  MODIFY `mahang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `laptop`
--
ALTER TABLE `laptop`
  MODIFY `malaptop` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `loiphanphoi`
--
ALTER TABLE `loiphanphoi`
  MODIFY `maLH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `manguoidung` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  MODIFY `maphieunhap` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `phieuxuat`
--
ALTER TABLE `phieuxuat`
  MODIFY `maphieuxuat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `phukien`
--
ALTER TABLE `phukien`
  MODIFY `maphukien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `quatang`
--
ALTER TABLE `quatang`
  MODIFY `maquatang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `masanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `slider`
--
ALTER TABLE `slider`
  MODIFY `maslider` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `thuvienhinh`
--
ALTER TABLE `thuvienhinh`
  MODIFY `mathuvienhinh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

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
