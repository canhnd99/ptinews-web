<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang Chủ - Ptinews</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href='<c:url value="static/css/style.css"/>'>
<link rel="stylesheet" href='<c:url value="static/css/font-awesome.min.css"/>'>
<link rel="stylesheet" href='<c:url value="static/css/icomoon.css"/>'>
<link rel="stylesheet" href='<c:url value="static/css/poppin.css"/>'>
<link rel="stylesheet" href='<c:url value="static/css/themify-icons.css"/>'>
<link rel="stylesheet" href='<c:url value="static/css/flaticon.css"/>'>
</head>
<body>
	<div class="container">
        <div id="header">
            <div class="header-content">
                <div class="header-top">
                    <a href="<c:url value='/trang-chu'/>">
                        <img src="./static/image/logo.png" alt="logo">
                    </a>
                    <div class="right">
                    <c:if test="${loggedUser==null}">
                        <button type="submit" id="loginBtn" class="btn-login">Đăng nhập</button>
                        <a href="<c:url value='/dang-ky'/>" class="btn-sigup">Đăng ký</a>
                     </c:if> 
                     
                     <c:if test="${loggedUser!=null}">
                     	<span> Hello, ${loggedUser.username}</span>
                     </c:if>   
                     
                        <div class="header-search">
                            <input type="text" placeholder="Tìm kiếm tin tức">
                            <span class="ti-search"></span>
                        </div>
                        <div style="display: flex; flex-direction: row; margin-top: 60px">
                        <c:if test="${loggedUser!=null}">
                        	<h4>Login as: <c:out value="${ loggedUser.username }"/> </h4>
                        	<a style="margin-left: 30px" href="<c:url value='/dang-xuat'/>">Đăng Xuất</a>
                        </c:if>
                        	
                        </div>
                    </div>
                </div>
                <div class="header-menu">
                    <ul>
                        <li><a href="<c:url value='/trang-chu'/>">Trang chủ</a></li>
                        <li class="drop">
                        	<a class="dropbtn" href="<c:url value='/kinh-doanh'/>">Kinh Doanh</a>
                            <div class="dropdown-content">
                                <a href="#">Tài chính đầu tư</a>
                                <a href="#">Thị trường</a>
                                <a href="#">Doanh nghiệp</a>
                                <a href="#">Bảo hiểm</a>
                                <a href="#">Y tế</a>
                            </div>
                        </li>
                        <li class="drop">
                            <a class="dropbtn" href="">Chính trị</a>
                            <div class="dropdown-content">
                                <a href="#">Trong nước</a>
                                <a href="#">Quốc tế</a>
                            </div>
                        </li>
                        <li class="drop">
                            <a class="dropbtn" href="">Văn hóa</a>
                            <div class="dropdown-content">
                                <a href="#">Du lịch</a>
                                <a href="#">Ẩm thực</a>
                                <a href="#">Sự kiện</a>
                            </div>
                        </li>
                        <li class="drop">
                            <a class="dropbtn" href="">Xã hội</a>
                            <div class="dropdown-content">
                                <a href="#">Môi trường</a>
                                <a href="#">Giao thông</a>
                                <a href="#">Đời sống</a>
                            </div>
                        </li>
                        <li class="drop">
                            <a class="dropbtn" href="">Giải trí</a>
                            <div class="dropdown-content">
                                <a href="#">Hài</a>
                                <a href="#">Thời trang</a>
                                <a href="#">Sao Việt</a>
                            </div>
                        </li>
                        <li class="drop">
                            <a class="dropbtn" href="">Nghệ thuật</a>
                            <div class="dropdown-content">
                                <a href="#">Phim-Điện ảnh</a>
                                <a href="#">Kiến trúc</a>
                                <a href="#">Âm nhạc</a>
                            </div>
                        </li>
                        <li class="drop">
                            <a class="dropbtn" href="">Thể thao</a>
                            <div class="dropdown-content">
                                <a href="#">Bóng đá châu Á</a>
                                <a href="#">Bóng đá châu Âu</a>
                                <a href="#">Thể thao khácp</a>
                            </div>
                        </li>
                        <li class="drop">
                            <a class="dropbtn" href="">Sức khỏe</a>
                            <div class="dropdown-content">
                                <a href="#">Bệnh viện-Phòng khám</a>
                                <a href="#">Covid 19</a>
                                <a href="#">Ung thư</a>
                            </div>
                        </li>
                        <li class="drop">
                            <a class="dropbtn" href="">Pháp luật</a>
                            <div class="dropdown-content">
                                <a href="#">Vụ án mới</a>
                                <a href="#">Trọng án</a>
                                <a href="#">Kỳ án</a>
                            </div>
                        </li>
                        <li class="drop">
                            <a class="dropbtn" href="">Giáo dục</a>
                            <div class="dropdown-content">
                                <a href="#">Đào tạo</a>
                                <a href="#">Học bổng du học</a>
                                <a href="#">Tuyển sinh</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div id="content">
            <div class="banner">
                <img src="./static/image/unnamed.png" alt="img">
                <!-- <img src="./static/image/unnamed.png" alt="img"> -->
            </div>
            <div class="content-content">
                <div class="content-left">
                    <div class="content-left-new">
                        <div class="title">
                            <p>Mới nhất</p>
                        </div>
                        <div class="new-content">
                            <a href="<c:url value='/bai-viet'/>">
                                <div class="new-content-f1">
                                    <div class="f1-title">
                                        <h2>Đỗ Thị Hà đăng quang Hoa hậu Việt Nam 2020</h2>
                                    </div>
                                    <div class="f1-content">
                                        <div class="f1-content-img">
                                        	<img src="./static/image/hoa-hau.jpg" alt="hoa hau Viet Nam" />
                                        </div>
                                        <div class="f1-content-description">
                                            Vượt qua 34 thí sinh trong đêm chung kết, Đỗ Thị Hà đã được xướng tên ở ngôi vị cao nhất. Kết quả này không nằm ngoài dự đoán của giới chuyên môn...	
                                        </div>
                                    </div>
                                </div>
                            </a>
                            <!-- nhặt ra 3 bài mới nhất sau tin t1-->
                            <div class="new-content-slide">
                                <div class="new-slide">
                                    <a href="">
                                        <div class="slide-img">
                                            <img src="./static/image/hoa-hau-2.jpg" alt="Hoa hau Viet Nam">
                                        </div>
                                        <div class="slide-content">
                                            <b>Nhan sắc đời thường của Hoa hậu Việt Nam 2020 Đỗ Thị Hà</b>
                                        </div>
                                    </a>
                                </div>
                                <div class="new-slide">
                                    <a href="">
                                        <div class="slide-img">
                                            <img src="./static/image/cong-nghe.jpg" alt="">
                                        </div>
                                        <div class="slide-content">
                                            <b>Diễn đàn doanh nghiệp công nghệ số diễn ra giữa tháng 12</b>
                                        </div>
                                    </a>
                                </div>
                                <div class="new-slide">
                                    <a href="">
                                        <div class="slide-img">
                                            <img src="./static/image/trump.jpg" alt="">
                                        </div>
                                        <div class="slide-content">
                                            <b>Mỹ tái thảo luận kế hoạch cắt quốc tịch cho trẻ sơ sinh nước ngoài</b>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- tin mới từng categories -->
                    <div class="new-category">
                        <div class="cate-col">
                            <div class="cate-col-row">
                                <!-- menu -->
                                <div class="cate-row-menu">
                                    <ul>
                                        <li class="menu-f1"><a href="">Kinh doanh</a></li>
                                        <li><a href="">Tài chính</a></li>
                                        <li><a href="">Bất động sản</a></li>
                                        <li><a href="">Tiền tệ</a></li>
                                    </ul>
                                </div>
                                <!-- bài mới nhất cate -->
                                <div class="cate-row-content">
                                    <a href="">
                                        <div class="cate-1">
                                            <h4>Đại gia tuần qua: Bắt tay Singapore, bầu Hiển bước vào “sân chơi” hàng nghìn tỷ</h4>
                                        </div>
                                        <div class="cate-2">
                                            <div class="cate-2-img">
                                                <img src="./static/image/cate.jpg" alt="">
                                            </div>
                                            <div class="cate-2-des">
                                                Tập đoàn của bầu Hiển vừa hợp tác đầu tư với tập đoàn lớn tại Singgapore xây dựng dự án logistics.
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <!-- danh sách các bài mới tiếp theo của cate -->
                                <div class="cate-row-list">
                                    <ul>
                                        <li><a href="">Phía sau vụ buôn lậu khủng hơn 50 kg vàng khủng hơn 50 kg vàng khủng hơn 50 kg vàng</a></li>
                                        <li><a href="">Phía sau vụ buôn lậu khủng hơn 50 kg vàng khủng hơn 50 kg vàng khủng hơn 50 kg vàng khủng hơn 50 kg vàng</a></li>
                                        <li><a href="">Phía sau vụ buôn lậu khủng hơn 50 kg vàng</a></li>
                                        <li><a href="">Phía sau vụ buôn lậu khủng hơn 50 kg vàng</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="cate-col-row">
                                <!-- menu -->
                                <div class="cate-row-menu">
                                    <ul>
                                        <li class="menu-f1"><a href="">Pháp luật</a></li>
                                        <li><a href="">Vụ án nổi tiếng</a></li>
                                        <li><a href="">Trọng án</a></li>
                                        <li><a href="">Kỳ án</a></li>
                                    </ul>
                                </div>
                                <!-- bài mới nhất cate -->
                                <div class="cate-row-content">
                                    <a href="">
                                        <div class="cate-1">
                                            <h4>Đại gia tuần qua: Bắt tay Singapore, bầu Hiển bước vào “sân chơi” hàng nghìn tỷ</h4>
                                        </div>
                                        <div class="cate-2">
                                            <div class="cate-2-img">
                                                <img src="./static/image/cate.jpg" alt="">
                                            </div>
                                            <div class="cate-2-des">
                                                Tập đoàn của bầu Hiển vừa hợp tác đầu tư với tập đoàn lớn tại Singgapore xây dựng dự án logistics.
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <!-- danh sách các bài mới tiếp theo của cate -->
                                <div class="cate-row-list">
                                    <ul>
                                        <li><a href="">Phía sau vụ buôn lậu khủng hơn 50 kg vàng khủng hơn 50 kg vàng khủng hơn 50 kg vàng</a></li>
                                        <li><a href="">Phía sau vụ buôn lậu khủng hơn 50 kg vàng khủng hơn 50 kg vàng khủng hơn 50 kg vàng khủng hơn 50 kg vàng</a></li>
                                        <li><a href="">Phía sau vụ buôn lậu khủng hơn 50 kg vàng</a></li>
                                        <li><a href="">Phía sau vụ buôn lậu khủng hơn 50 kg vàng</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="cate-col-row">
                                <!-- menu -->
                                <div class="cate-row-menu">
                                    <ul>
                                        <li class="menu-f1"><a href="">Chính trị</a></li>
                                        <li><a href="">Nổi bật</a></li>
                                        <li><a href="">Trong nước</a></li>
                                        <li><a href="">Quốc tế</a></li>
                                    </ul>
                                </div>
                                <!-- bài mới nhất cate -->
                                <div class="cate-row-content">
                                    <a href="">
                                        <div class="cate-1">
                                            <h4>Đại gia tuần qua: Bắt tay Singapore, bầu Hiển bước vào “sân chơi” hàng nghìn tỷ</h4>
                                        </div>
                                        <div class="cate-2">
                                            <div class="cate-2-img">
                                                <img src="./static/image/cate.jpg" alt="">
                                            </div>
                                            <div class="cate-2-des">
                                                Tập đoàn của bầu Hiển vừa hợp tác đầu tư với tập đoàn lớn tại Singgapore xây dựng dự án logistics.
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <!-- danh sách các bài mới tiếp theo của cate -->
                                <div class="cate-row-list">
                                    <ul>
                                        <li><a href="">Phía sau vụ buôn lậu khủng hơn 50 kg vàng khủng hơn 50 kg vàng khủng hơn 50 kg vàng</a></li>
                                        <li><a href="">Phía sau vụ buôn lậu khủng hơn 50 kg vàng khủng hơn 50 kg vàng khủng hơn 50 kg vàng khủng hơn 50 kg vàng</a></li>
                                        <li><a href="">Phía sau vụ buôn lậu khủng hơn 50 kg vàng</a></li>
                                        <li><a href="">Phía sau vụ buôn lậu khủng hơn 50 kg vàng</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="cate-col-row">
                                <!-- menu -->
                                <div class="cate-row-menu">
                                    <ul>
                                        <li class="menu-f1"><a href="">Xã hội</a></li>
                                        <li><a href="">Môi trường</a></li>
                                        <li><a href="">Giao thông</a></li>
                                        <li><a href="">Đời sống</a></li>
                                    </ul>
                                </div>
                                <!-- bài mới nhất cate -->
                                <div class="cate-row-content">
                                    <a href="">
                                        <div class="cate-1">
                                            <h4>Đại gia tuần qua: Bắt tay Singapore, bầu Hiển bước vào “sân chơi” hàng nghìn tỷ</h4>
                                        </div>
                                        <div class="cate-2">
                                            <div class="cate-2-img">
                                                <img src="./static/image/cate.jpg" alt="">
                                            </div>
                                            <div class="cate-2-des">
                                                Tập đoàn của bầu Hiển vừa hợp tác đầu tư với tập đoàn lớn tại Singgapore xây dựng dự án logistics.
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <!-- danh sách các bài mới tiếp theo của cate -->
                                <div class="cate-row-list">
                                    <ul>
                                        <li><a href="">Phía sau vụ buôn lậu khủng hơn 50 kg vàng khủng hơn 50 kg vàng khủng hơn 50 kg vàng</a></li>
                                        <li><a href="">Phía sau vụ buôn lậu khủng hơn 50 kg vàng khủng hơn 50 kg vàng khủng hơn 50 kg vàng khủng hơn 50 kg vàng</a></li>
                                        <li><a href="">Phía sau vụ buôn lậu khủng hơn 50 kg vàng</a></li>
                                        <li><a href="">Phía sau vụ buôn lậu khủng hơn 50 kg vàng</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="cate-col-row">
                                <!-- menu -->
                                <div class="cate-row-menu">
                                    <ul>
                                        <li class="menu-f1"><a href="">Thể thao</a></li>
                                        <li><a href="">Bóng đá châu Á</a></li>
                                        <li><a href="">Bóng đá châu Âu</a></li>
                                        <li><a href="">Khác</a></li>
                                    </ul>
                                </div>
                                <!-- bài mới nhất cate -->
                                <div class="cate-row-content">
                                    <a href="">
                                        <div class="cate-1">
                                            <h4>Đại gia tuần qua: Bắt tay Singapore, bầu Hiển bước vào “sân chơi” hàng nghìn tỷ</h4>
                                        </div>
                                        <div class="cate-2">
                                            <div class="cate-2-img">
                                                <img src="./static/image/cate.jpg" alt="">
                                            </div>
                                            <div class="cate-2-des">
                                                Tập đoàn của bầu Hiển vừa hợp tác đầu tư với tập đoàn lớn tại Singgapore xây dựng dự án logistics.
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <!-- danh sách các bài mới tiếp theo của cate -->
                                <div class="cate-row-list">
                                    <ul>
                                        <li><a href="">Phía sau vụ buôn lậu khủng hơn 50 kg vàng khủng hơn 50 kg vàng khủng hơn 50 kg vàng</a></li>
                                        <li><a href="">Phía sau vụ buôn lậu khủng hơn 50 kg vàng khủng hơn 50 kg vàng khủng hơn 50 kg vàng khủng hơn 50 kg vàng</a></li>
                                        <li><a href="">Phía sau vụ buôn lậu khủng hơn 50 kg vàng</a></li>
                                        <li><a href="">Phía sau vụ buôn lậu khủng hơn 50 kg vàng</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="cate-col">
                            <div class="cate-col-row">
                                <!-- menu -->
                                <div class="cate-row-menu">
                                    <ul>
                                        <li class="menu-f1"><a href="">Văn hóa</a></li>
                                        <li><a href="">Du lịch</a></li>
                                        <li><a href="">Ẩm thực</a></li>
                                        <li><a href="">Sự kiện</a></li>
                                    </ul>
                                </div>
                                <!-- bài mới nhất cate -->
                                <div class="cate-row-content">
                                    <a href="">
                                        <div class="cate-1">
                                            <h4>Đại gia tuần qua: Bắt tay Singapore, bầu Hiển bước vào “sân chơi” hàng nghìn tỷ</h4>
                                        </div>
                                        <div class="cate-2">
                                            <div class="cate-2-img">
                                                <img src="./static/image/cate.jpg" alt="">
                                            </div>
                                            <div class="cate-2-des">
                                                Tập đoàn của bầu Hiển vừa hợp tác đầu tư với tập đoàn lớn tại Singgapore xây dựng dự án logistics.
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <!-- danh sách các bài mới tiếp theo của cate -->
                                <div class="cate-row-list">
                                    <ul>
                                        <li><a href="">Phía sau vụ buôn lậu khủng hơn 50 kg vàng khủng hơn 50 kg vàng khủng hơn 50 kg vàng</a></li>
                                        <li><a href="">Phía sau vụ buôn lậu khủng hơn 50 kg vàng khủng hơn 50 kg vàng khủng hơn 50 kg vàng khủng hơn 50 kg vàng</a></li>
                                        <li><a href="">Phía sau vụ buôn lậu khủng hơn 50 kg vàng</a></li>
                                        <li><a href="">Phía sau vụ buôn lậu khủng hơn 50 kg vàng</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="cate-col-row">
                                <!-- menu -->
                                <div class="cate-row-menu">
                                    <ul>
                                        <li class="menu-f1"><a href="">Giải trí</a></li>
                                        <li><a href="">Hài</a></li>
                                        <li><a href="">Thời trang</a></li>
                                        <li><a href="">Sao Việt</a></li>
                                    </ul>
                                </div>
                                <!-- bài mới nhất cate -->
                                <div class="cate-row-content">
                                    <a href="">
                                        <div class="cate-1">
                                            <h4>Đại gia tuần qua: Bắt tay Singapore, bầu Hiển bước vào “sân chơi” hàng nghìn tỷ</h4>
                                        </div>
                                        <div class="cate-2">
                                            <div class="cate-2-img">
                                                <img src="./static/image/cate.jpg" alt="">
                                            </div>
                                            <div class="cate-2-des">
                                                Tập đoàn của bầu Hiển vừa hợp tác đầu tư với tập đoàn lớn tại Singgapore xây dựng dự án logistics.
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <!-- danh sách các bài mới tiếp theo của cate -->
                                <div class="cate-row-list">
                                    <ul>
                                        <li><a href="">Phía sau vụ buôn lậu khủng hơn 50 kg vàng khủng hơn 50 kg vàng khủng hơn 50 kg vàng</a></li>
                                        <li><a href="">Phía sau vụ buôn lậu khủng hơn 50 kg vàng khủng hơn 50 kg vàng khủng hơn 50 kg vàng khủng hơn 50 kg vàng</a></li>
                                        <li><a href="">Phía sau vụ buôn lậu khủng hơn 50 kg vàng</a></li>
                                        <li><a href="">Phía sau vụ buôn lậu khủng hơn 50 kg vàng</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="cate-col-row">
                                <!-- menu -->
                                <div class="cate-row-menu">
                                    <ul>
                                        <li class="menu-f1"><a href="">Nghệ thuật</a></li>
                                        <li><a href="">Ca nhạc</a></li>
                                        <li><a href="">Phim-Điện ảnh</a></li>
                                        <li><a href="">Kiến trúc</a></li>
                                    </ul>
                                </div>
                                <!-- bài mới nhất cate -->
                                <div class="cate-row-content">
                                    <a href="">
                                        <div class="cate-1">
                                            <h4>Đại gia tuần qua: Bắt tay Singapore, bầu Hiển bước vào “sân chơi” hàng nghìn tỷ</h4>
                                        </div>
                                        <div class="cate-2">
                                            <div class="cate-2-img">
                                                <img src="./static/image/cate.jpg" alt="">
                                            </div>
                                            <div class="cate-2-des">
                                                Tập đoàn của bầu Hiển vừa hợp tác đầu tư với tập đoàn lớn tại Singgapore xây dựng dự án logistics.
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <!-- danh sách các bài mới tiếp theo của cate -->
                                <div class="cate-row-list">
                                    <ul>
                                        <li><a href="">Phía sau vụ buôn lậu khủng hơn 50 kg vàng khủng hơn 50 kg vàng khủng hơn 50 kg vàng</a></li>
                                        <li><a href="">Phía sau vụ buôn lậu khủng hơn 50 kg vàng khủng hơn 50 kg vàng khủng hơn 50 kg vàng khủng hơn 50 kg vàng</a></li>
                                        <li><a href="">Phía sau vụ buôn lậu khủng hơn 50 kg vàng</a></li>
                                        <li><a href="">Phía sau vụ buôn lậu khủng hơn 50 kg vàng</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="cate-col-row">
                                <!-- menu -->
                                <div class="cate-row-menu">
                                    <ul>
                                        <li class="menu-f1"><a href="">Thế giới</a></li>
                                        <li><a href="">Điểm nóng</a></li>
                                        <li><a href="">Quân sự</a></li>
                                    </ul>
                                </div>
                                <!-- bài mới nhất cate -->
                                <div class="cate-row-content">
                                    <a href="">
                                        <div class="cate-1">
                                            <h4>Đại gia tuần qua: Bắt tay Singapore, bầu Hiển bước vào “sân chơi” hàng nghìn tỷ</h4>
                                        </div>
                                        <div class="cate-2">
                                            <div class="cate-2-img">
                                                <img src="./static/image/cate.jpg" alt="">
                                            </div>
                                            <div class="cate-2-des">
                                                Tập đoàn của bầu Hiển vừa hợp tác đầu tư với tập đoàn lớn tại Singgapore xây dựng dự án logistics.
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <!-- danh sách các bài mới tiếp theo của cate -->
                                <div class="cate-row-list">
                                    <ul>
                                        <li><a href="">Phía sau vụ buôn lậu khủng hơn 50 kg vàng khủng hơn 50 kg vàng khủng hơn 50 kg vàng</a></li>
                                        <li><a href="">Phía sau vụ buôn lậu khủng hơn 50 kg vàng khủng hơn 50 kg vàng khủng hơn 50 kg vàng khủng hơn 50 kg vàng</a></li>
                                        <li><a href="">Phía sau vụ buôn lậu khủng hơn 50 kg vàng</a></li>
                                        <li><a href="">Phía sau vụ buôn lậu khủng hơn 50 kg vàng</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- <div class="new-cate-2">
                        
                    </div> -->
                </div>
                <div class="content-right">
                    <div class="title">
                        <p>Sự kiện</p>
                    </div>
                    <div class="link-list">
                        <ul>
                            <li><a href="">Tổng Bí thư: Nhân sự chuẩn bị kỹ, “chạy” phiếu, “chạy” chức giảm hẳn!</a></li>
                            <li><a href="">Tổng Bí thư: Nhân sự chuẩn bị kỹ, “chạy” phiếu, “chạy” chức giảm hẳn!</a></li>
                            <li><a href="">Tổng Bí thư: Nhân sự chuẩn bị kỹ, “chạy” phiếu, “chạy” chức giảm hẳn!</a></li>
                            <li><a href="">Tổng Bí thư: Nhân sự chuẩn bị kỹ, “chạy” phiếu, “chạy” chức giảm hẳn!</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div id="footer">
            <div class="footer-menu">
                <div class="content">
                    <ul>
                        <li><a class="menu-title" href="">Kinh tế</a></li>
                        <li><a href="">Tài chính - Đầu tư</a></li>
                        <li><a href="">Thị trường</a></li>
                        <li><a href="">Doanh nghiệp</a></li>
                        <li><a href="">Bảo hiểm</a></li>
                        <li><a href="">Quốc tế</a></li>
                    </ul>
                    <ul>
                        <li><a class="menu-title" href="">Chính trị</a></li>
                        <li><a href="">Trong nước</a></li>
                        <li><a href="">QUốc tế</a></li>
                    </ul>
                    <ul>
                        <li><a class="menu-title" href="">Văn hóa</a></li>
                        <li><a href="">Du lịch</a></li>
                        <li><a href="">Ẩm thực</a></li>
                        <li><a href="">Sự kiện</a></li>
                    </ul>
                    <ul>
                        <li><a class="menu-title" href="">Xã hội</a></li>
                        <li><a href="">Môi trường</a></li>
                        <li><a href="">Giao thông</a></li>
                        <li><a href="">Đời sống</a></li>
                    </ul>
                    <ul>
                        <li><a class="menu-title" href="">Giải trí</a></li>
                        <li><a href="">Hài</a></li>
                        <li><a href="">Thời trang</a></li>
                        <li><a href="">Sao Việt</a></li>
                    </ul>
                    <ul>
                        <li><a class="menu-title" href="">Nghệ thuật</a></li>
                        <li><a href="">Âm nhạc</a></li>
                        <li><a href="">Phim - điện ảnh</a></li>
                        <li><a href="">Kiến trúc</a></li>
                    </ul>
                    <ul>
                        <li><a class="menu-title" href="">Thể thao</a></li>
                        <li><a href="">Bóng đáchâu Á</a></li>
                        <li><a href="">Bóng đá châu ÂU</a></li>
                        <li><a href="">Thể thao khác</a></li>
                    </ul>
                    <ul>
                        <li><a class="menu-title" href="">Sức khỏe</a></li>
                        <li><a href="">Bệnh viện - Phòng khám</a></li>
                        <li><a href="">Bệnh ung thư</a></li>
                        <li><a href="">Làm đẹp</a></li>
                        <li><a href="">Covid 19</a></li>
                    </ul>
                    <ul>
                        <li><a class="menu-title" href="">Pháp luật</a></li>
                        <li><a href="">Vụ án mới</a></li>
                        <li><a href="">Trọng án</a></li>
                        <li><a href="">Kỳ án</a></li>
                    </ul>
                    <ul>
                        <li><a class="menu-title" href="">Giáo dục</a></li>
                        <li><a href="">Đào tạo</a></li>
                        <li><a href="">Học bổng du học</a></li>
                        <li><a href="">Tuyển sinh</a></li>

                    </ul>
                </div>
            </div>
            <div class="footer-infor">
                <div class="f-img">
                    <img src="./static/image/logo.png" alt="">
                </div>
                <div class="f-des">
                    Cơ quan chủ quản: Công ty Cổ phần Quảng cáo Trực tuyến 24H <br>
                    Trụ sở: Tầng 12, Tòa nhà Geleximco, 36 Hoàng Cầu, Phường Ô Chợ Dừa, Quận Đống Đa, TP Hà Nội. <br>
                    Tel: (84-24) 73 00 24 24 hoặc (84-24) 3512 1806 - Fax: (84-24) 3512 1804. <br>
                    Chi nhánh: Tầng 7, Tòa nhà Việt Úc, 402 Nguyễn Thị Minh Khai, Phường 5, Quận 3, TP. Hồ Chí Minh. <br>
                    Tel: (84-28) 7300 2424 / Giấy phép số 332/GP – TT ĐT ngày cấp 22/01/2018 SỞ THÔNG TIN VÀ TRUYỀN THÔNG HÀ NỘI. 
                    <br>Chịu trách nhiệm xuất bản: Phan Minh Tâm. 
                    <br>HOTLINE: 0965 08 24 24
                </div>
                
            </div>
        </div>
    </div>

    <div id="myModal" class="modal">
        <div class="modal-content">
            <span class="close">&times;</span>
            <h3>Đăng nhập</h3>
            <form action="<c:url value='/dang-nhap'/>" method="post" name="flogin">
                <div class="field">
                    <span class="fa fa-user" aria-hidden="true"></span>
                    <input type="text" placeholder="Email" name="email" id="username" value="hieupq@gmail.com">
                </div>
                <div class="field space">
                    <span class="fa fa-lock" aria-hidden="true"></span>
                    <input type="password" placeholder="Mật khẩu" name="password" id="pass" value="hieu12@">
                </div>
                <div class="forget">
                    <a href="#">Quên mật khẩu?</a>
                </div>
                <div class="login">
                    <div class="sub">
                        <input type="submit" value ="Đăng nhập" id="submit">
                    </div>
                </div>
                <div class="signup">
                    <span>Chưa có tài khoản?</span>
                    <a href="sigup.html">Đăng kí</a>
                </div>
            </form>
        </div>
    </div>
    <script src="<c:url value='static/js/script.js'/>"></script>
</body>
</html>