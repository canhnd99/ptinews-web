<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng Ký</title>
<link rel="stylesheet" href='<c:url value="/static/css/style.css"/>'>
<link rel="stylesheet" href='<c:url value="/static/css/font-awesome.min.css"/>'>
<link rel="stylesheet" href='<c:url value="/static/css/icomoon.css"/>'>
<link rel="stylesheet" href='<c:url value="/static/css/poppin.css"/>'>
<link rel="stylesheet" href='<c:url value="/static/css/themify-icons.css"/>'>
<link rel="stylesheet" href='<c:url value="/static/css/flaticon.css"/>'>
<link rel="stylesheet" href='<c:url value="/static/css/styleSigup.css"/>'>
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
                        <button type="submit" id="loginBtn" class="btn-login">Đăng nhập</button>
                        <a href="<c:url value='/dang-ky'/>" class="btn-sigup">Đăng ký</a>
                        <div class="header-search">
                            <input type="text" placeholder="Tìm kiếm tin tức">
                            <span class="ti-search"></span>
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
            <h2>Đăng ký tài khoản PTIN</h2>
            <div class="frm">
                <form action="<c:url value='/dang-ky'/>" method="post">
                    <label for="username"><b>Tên đăng nhập</b></label>
                    <input type="text"  name="username" required>
                    <label for="email"><b>Email</b></label>
                    <input type="text"  name="email" required>
                    <label for="pass"><b>Mật khẩu</b></label>
                    <input type="password" name="password" required>
                    <input type="submit" name="btnSubmit" value="Đăng ký">
                </form>
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
            <form action="#" name="flogin" action="">
                <div class="field">
                    <span class="fa fa-user" aria-hidden="true"></span>
                    <input type="text" placeholder="Tên đăng nhập" name="uname" id="username">
                </div>
                <div class="field space">
                    <span class="fa fa-lock" aria-hidden="true"></span>
                    <input type="password" placeholder="Mật khẩu" name="pass" id="pass">
                </div>
                <div class="forget">
                    <a href="#">Quên mật khẩu?</a>
                </div>
                <div class="login">
                    <div class="sub">
                        <input type="button" value ="Đăng nhập" id="submit">
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