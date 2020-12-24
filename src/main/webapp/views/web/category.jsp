<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Kinh Doanh</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="static/css/style.css">
<link rel="stylesheet" type="text/css" href="static/css/styleCategories.css">
<link rel="stylesheet" type="text/css" href="static/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="static/css/icomoon.css">
<link rel="stylesheet" type="text/css" href="static/css/poppin.css">
<link rel="stylesheet" type="text/css" href="static/css/themify-icons.css">
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
                        <button type="submit" id="loginBtn" class="btn-login">Đăng nhập</button>
                        <a href="" class="btn-sigup">Đăng ký</a>
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
            <div class="content-header">
                <div class="content-header-top">
                    <a class ="homepage" href="">TRANG CHỦ </a>
                    <a class ="active" href="#">KINH DOANH</a>
                </div>
                <div class="content-header-bottom">
                    <ul>
                        <li><a href="">Doanh nhân</a></li>
                        <li><a href="">Tài chính</a></li>
                        <li><a href="">Bất động sản</a></li>
                        <li><a href="">Khởi nghiệp</a></li>
                        <li><a href="">Doanh nghiệp</a></li>
                        <li><a href="">Ngân hàng</a></li>
                        <li><a href="">Chứng khoán</a></li>
                    </ul>
                </div>
            </div>
            <div class="content-main">
                <div class="latest-news">
                    <div class="big-news">
                        <div class="item">
                            <div class="img">
                                <img src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-17//1602899551-211-thumbnail-width640height480.jpg" alt="Giá vàng hôm nay 17/10: Bất ngờ lao dốc mạnh cuối tuần, dân chớp thời cơ lướt sóng">
                            </div>
                            <div class = inner>
                                <div class="news-name">
                                    <a title="Giá vàng hôm nay 17/10: Bất ngờ lao dốc mạnh cuối tuần, dân chớp thời cơ lướt sóng" href="https://www.24h.com.vn/gia-vang-hom-nay/gia-vang-hom-nay-17-10-bat-ngo-lao-doc-manh-cuoi-tuan-dan-chop-thoi-co-luot-song-c425a1191379.html">
                                        Giá vàng hôm nay 17/10: Bất ngờ lao dốc mạnh cuối tuần, dân chớp thời cơ lướt sóng                                        </a>
                                </div>
                                <div class="desc">
                                    Sáng nay giá vàng quay đầu giảm khi cơ hội mờ dần về một thỏa thuận kích thích kinh tế do Covid-19.
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col2">
                        <div class="medium-news">
                            <div class="item">
                                <div class="img">
                                    <img src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-16//a1-1602844255-465-width640height480.jpg" alt="Kiếm vài chục triệu đô la nhờ loại quả dân dã mọc khắp Việt Nam">
                                </div>
                                <div class = inner>
                                    <div class="news-name">
                                        <a title="Kiếm vài chục triệu đô la nhờ loại quả dân dã mọc khắp Việt Nam" href="https://www.24h.com.vn/kinh-doanh/kiem-vai-chuc-trieu-do-la-nho-loai-qua-dan-da-moc-khap-viet-nam-c161a1191283.html">Kiếm vài chục triệu đô la nhờ loại quả dân dã mọc khắp Việt Nam</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="medium-news">
                            <div class="item">
                                <div class="img">
                                    <img src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-17//1602903494-54-thumbnail-width640height480.jpg" alt="Từ làng chài nhỏ, nơi này giờ giàu &quot;khủng&quot; mỗi người thu nhập gần 700 triệu/năm">
                                </div>
                                <div class = inner>
                                    <div class="news-name">
                                        <a title="Từ làng chài nhỏ, nơi này giờ giàu &quot;khủng&quot; mỗi người thu nhập gần 700 triệu/năm" href="https://www.24h.com.vn/kinh-doanh/tu-lang-chai-nho-noi-nay-gio-giau-khung-moi-nguoi-thu-nhap-gan-700-trieu-nam-c161a1191399.html">Từ làng chài nhỏ, nơi này giờ giàu "khủng" mỗi người thu nhập gần 700 triệu/năm</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="older-news">
                    <div class="col1">
                        <div class="list-news">
                            <div class="news">
                                <div class="title-news">
                                    <a href="https://vnexpress.net/gia-vang-sjc-mat-gan-1-trieu-dong-moi-luong-4189487.html" title="Giá vàng SJC mất gần 1 triệu đồng mỗi lượng">Giá vàng SJC mất gần 1 triệu đồng mỗi lượng</a>
                                </div>
                                <div>
                                    <div class="img">
                                        <a href="https://vnexpress.net/gia-vang-sjc-mat-gan-1-trieu-dong-moi-luong-4189487.html" title="Giá vàng SJC mất gần 1 triệu đồng mỗi lượng">
                                            <img
											src="./static/image/vang.jpg">
										</a>
                                    </div>
                                    <div class="desc">
                                        <a href="https://vnexpress.net/gia-vang-sjc-mat-gan-1-trieu-dong-moi-luong-4189487.html" title="Giá vàng SJC mất gần 1 triệu đồng mỗi lượng">
                                            Các nhà vàng sáng nay đồng loạt giảm 850.000-900.000 đồng mỗi lượng, xuống 55,5-56,4 triệu đồng khi thị trường kim loại quý thế giới biến động mạnh.
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="news">
                                <div class="title-news">
                                    <a href="https://vnexpress.net/gia-vang-sjc-mat-gan-1-trieu-dong-moi-luong-4189487.html" title="Giá vàng SJC mất gần 1 triệu đồng mỗi lượng">Giá vàng SJC mất gần 1 triệu đồng mỗi lượng</a>
                                </div>
                                <div>
                                    <div class="img">
                                        <a href="https://vnexpress.net/gia-vang-sjc-mat-gan-1-trieu-dong-moi-luong-4189487.html" title="Giá vàng SJC mất gần 1 triệu đồng mỗi lượng">
                                            <img src="./static/image/vang.jpg">
                                        </a>
                                    </div>
                                    <div class="desc">
                                        <a href="https://vnexpress.net/gia-vang-sjc-mat-gan-1-trieu-dong-moi-luong-4189487.html" title="Giá vàng SJC mất gần 1 triệu đồng mỗi lượng">
                                            Các nhà vàng sáng nay đồng loạt giảm 850.000-900.000 đồng mỗi lượng, xuống 55,5-56,4 triệu đồng khi thị trường kim loại quý thế giới biến động mạnh.
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="news">
                                <div class="title-news">
                                    <a href="https://vnexpress.net/gia-vang-sjc-mat-gan-1-trieu-dong-moi-luong-4189487.html" title="Giá vàng SJC mất gần 1 triệu đồng mỗi lượng">Giá vàng SJC mất gần 1 triệu đồng mỗi lượng</a>
                                </div>
                                <div>
                                    <div class="img">
                                        <a href="https://vnexpress.net/gia-vang-sjc-mat-gan-1-trieu-dong-moi-luong-4189487.html" title="Giá vàng SJC mất gần 1 triệu đồng mỗi lượng">
                                            <img src="./static/image/vang.jpg">
                                        </a>
                                    </div>
                                    <div class="desc">
                                        <a href="https://vnexpress.net/gia-vang-sjc-mat-gan-1-trieu-dong-moi-luong-4189487.html" title="Giá vàng SJC mất gần 1 triệu đồng mỗi lượng">
                                            Các nhà vàng sáng nay đồng loạt giảm 850.000-900.000 đồng mỗi lượng, xuống 55,5-56,4 triệu đồng khi thị trường kim loại quý thế giới biến động mạnh.
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="news">
                                <div class="title-news">
                                    <a href="https://vnexpress.net/gia-vang-sjc-mat-gan-1-trieu-dong-moi-luong-4189487.html" title="Giá vàng SJC mất gần 1 triệu đồng mỗi lượng">Giá vàng SJC mất gần 1 triệu đồng mỗi lượng</a>
                                </div>
                                <div>
                                    <div class="img">
                                        <a href="https://vnexpress.net/gia-vang-sjc-mat-gan-1-trieu-dong-moi-luong-4189487.html" title="Giá vàng SJC mất gần 1 triệu đồng mỗi lượng">
                                            <img src="./static/image/vang.jpg">
                                        </a>
                                    </div>
                                    <div class="desc">
                                        <a href="https://vnexpress.net/gia-vang-sjc-mat-gan-1-trieu-dong-moi-luong-4189487.html" title="Giá vàng SJC mất gần 1 triệu đồng mỗi lượng">
                                            Các nhà vàng sáng nay đồng loạt giảm 850.000-900.000 đồng mỗi lượng, xuống 55,5-56,4 triệu đồng khi thị trường kim loại quý thế giới biến động mạnh.
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="news">
                                <div class="title-news">
                                    <a href="https://vnexpress.net/gia-vang-sjc-mat-gan-1-trieu-dong-moi-luong-4189487.html" title="Giá vàng SJC mất gần 1 triệu đồng mỗi lượng">Giá vàng SJC mất gần 1 triệu đồng mỗi lượng</a>
                                </div>
                                <div>
                                    <div class="img">
                                        <a href="https://vnexpress.net/gia-vang-sjc-mat-gan-1-trieu-dong-moi-luong-4189487.html" title="Giá vàng SJC mất gần 1 triệu đồng mỗi lượng">
                                            <img src="./static/image/vang.jpg">
                                        </a>
                                    </div>
                                    <div class="desc">
                                        <a href="https://vnexpress.net/gia-vang-sjc-mat-gan-1-trieu-dong-moi-luong-4189487.html" title="Giá vàng SJC mất gần 1 triệu đồng mỗi lượng">
                                            Các nhà vàng sáng nay đồng loạt giảm 850.000-900.000 đồng mỗi lượng, xuống 55,5-56,4 triệu đồng khi thị trường kim loại quý thế giới biến động mạnh.
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="news">
                                <div class="title-news">
                                    <a href="https://vnexpress.net/gia-vang-sjc-mat-gan-1-trieu-dong-moi-luong-4189487.html" title="Giá vàng SJC mất gần 1 triệu đồng mỗi lượng">Giá vàng SJC mất gần 1 triệu đồng mỗi lượng</a>
                                </div>
                                <div>
                                    <div class="img">
                                        <a href="https://vnexpress.net/gia-vang-sjc-mat-gan-1-trieu-dong-moi-luong-4189487.html" title="Giá vàng SJC mất gần 1 triệu đồng mỗi lượng">
                                            <img src="./static/image/vang.jpg">
                                        </a>
                                    </div>
                                    <div class="desc">
                                        <a href="https://vnexpress.net/gia-vang-sjc-mat-gan-1-trieu-dong-moi-luong-4189487.html" title="Giá vàng SJC mất gần 1 triệu đồng mỗi lượng">
                                            Các nhà vàng sáng nay đồng loạt giảm 850.000-900.000 đồng mỗi lượng, xuống 55,5-56,4 triệu đồng khi thị trường kim loại quý thế giới biến động mạnh.
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col2">
                        <div class="breaking-news">
                            <div class = "news-header">
                                <a href="#">TIÊU ĐIỂM</a>
                            </div>
                            <div class="news-body">
                                <ul class="list-link">
                                    <li>
                                        <div class="img">
                                            <a href="https://dantri.com.vn/kinh-doanh/thuong-chien-my-trung-duoi-thoi-ong-biden-se-ra-sao-20201110063230522.htm" title="Thương chiến Mỹ - Trung dưới thời ông Biden sẽ ra sao?">
                                                <img alt="Thương chiến Mỹ - Trung dưới thời ông Biden sẽ ra sao?" src="https://icdn.dantri.com.vn/zoom/528_352/2020/11/10/thuongchien-my-trungduoithoiong-joe-bidenserasaodocx-1604964093438.jpeg">
                                            </a>
                                        </div>
                                        <div class="title">
                                            <a href="https://dantri.com.vn/kinh-doanh/thuong-chien-my-trung-duoi-thoi-ong-biden-se-ra-sao-20201110063230522.htm" title="Thương chiến Mỹ - Trung dưới thời ông Biden sẽ ra sao?">
                                                Thương chiến Mỹ - Trung dưới thời ông Biden sẽ ra sao?
                                            </a>
                                        </div>
                                    </li>
                                    <li>
                                        <a href="https://dantri.com.vn/kinh-doanh/vuot-qua-cu-tut-bat-ngo-vang-huong-len-60-trieu-dongluong-20201110064243645.htm">
                                            Vượt qua cú tụt bất ngờ, vàng hướng lên 60 triệu đồng/lượng
                                        </a>
                                    </li>
                                    <li>
                                        <a href="https://dantri.com.vn/kinh-doanh/nong-chat-van-10-km-duong-co-2-tram-thu-phi-20201110101236591.htm">
                                            “Nóng” chất vấn 10km đường có 2 trạm thu phí
                                        </a>
                                    </li>
                                    <li>
                                        <a href="https://dantri.com.vn/kinh-doanh/thu-tuong-sap-van-hanh-duong-sat-cat-linh-ha-dong-sau-nhieu-nam-cham-tre-20201110110442979.htm">
                                            Thủ tướng: Sắp vận hành đường sắt Cát Linh - Hà Đông sau nhiều năm chậm trễ
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="news">
                            <div class = "news-header">
                                <a href="#">TÀI CHÍNH - ĐẦU TƯ</a>
                            </div>
                            <div class="news-body">
                                <ul class="list-link">
                                    <li>
                                        <div class="img">
                                            <a href="https://dantri.com.vn/kinh-doanh/thai-do-voi-trung-quoc-cua-ong-biden-va-anh-huong-toi-kinh-te-viet-nam-20201115063129737.htm" title="Thái độ với Trung Quốc của ông Biden và ảnh hưởng tới kinh tế Việt Nam">
                                                <img alt="Thái độ với Trung Quốc của ông Biden và ảnh hưởng tới kinh tế Việt Nam" src="https://icdn.dantri.com.vn/zoom/528_352/2020/11/15/biden-1605396495675.jpg">
                                            </a>
                                        </div>
                                        <div class="title">
                                            <a href="https://dantri.com.vn/kinh-doanh/thai-do-voi-trung-quoc-cua-ong-biden-va-anh-huong-toi-kinh-te-viet-nam-20201115063129737.htm" title="Thái độ với Trung Quốc của ông Biden và ảnh hưởng tới kinh tế Việt Nam">
                                                Thái độ với Trung Quốc của ông Biden và ảnh hưởng tới kinh tế Việt Nam
                                            </a>
                                        </div>
                                        <div class="desc">
                                            <a href="https://dantri.com.vn/kinh-doanh/thai-do-voi-trung-quoc-cua-ong-biden-va-anh-huong-toi-kinh-te-viet-nam-20201115063129737.htm" title="Thái độ với Trung Quốc của ông Biden và ảnh hưởng tới kinh tế Việt Nam">
                                                Trước khả năng ông Joe Biden sẽ trở thành Tổng thống thứ 46 của nước Mỹ, vấn đề được nhiều người quan tâm là thái độ với Trung Quốc của ông Biden sẽ ra sao và kinh tế Việt Nam sẽ chịu ảnh hưởng gì?
                                            </a>
                                        </div>
                                    </li>
                                    <li>
                                        <a href="https://dantri.com.vn/kinh-doanh/thai-do-voi-trung-quoc-cua-ong-biden-va-anh-huong-toi-kinh-te-viet-nam-20201115063129737.htm" title="Thái độ với Trung Quốc của ông Biden và ảnh hưởng tới kinh tế Việt Nam">
                                            Thái độ với Trung Quốc của ông Biden và ảnh hưởng tới kinh tế Việt Nam
                                        </a>
                                    </li>
                                    <li>
                                        <a href="https://dantri.com.vn/kinh-doanh/thoi-den-can-khong-kip-dai-gia-dang-ngoi-tu-tai-san-van-vot-tang-bat-ngo-20201114115416324.htm" title="Thời đến cản không kịp, đại gia đang ngồi tù tài sản vẫn vọt tăng bất ngờ">
                                            Thời đến cản không kịp, đại gia đang ngồi tù tài sản vẫn vọt tăng bất ngờ
                                        </a>
                                    </li>
                                    <li>
                                        <a href="https://dantri.com.vn/kinh-doanh/bo-cong-thuong-da-chuyen-toan-bo-co-phan-sabeco-cho-scic-20201114104235357.htm" title="Bộ Công Thương đã chuyển toàn bộ cổ phần Sabeco cho SCIC">
                                            Bộ Công Thương đã chuyển toàn bộ cổ phần Sabeco cho SCIC
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="news">
                            <div class = "news-header">
                                <a href="#">TÀI CHÍNH - ĐẦU TƯ</a>
                            </div>
                            <div class="news-body">
                                <ul class="list-link">
                                    <li>
                                        <div class="img">
                                            <a href="https://dantri.com.vn/kinh-doanh/thai-do-voi-trung-quoc-cua-ong-biden-va-anh-huong-toi-kinh-te-viet-nam-20201115063129737.htm" title="Thái độ với Trung Quốc của ông Biden và ảnh hưởng tới kinh tế Việt Nam">
                                                <img alt="Thái độ với Trung Quốc của ông Biden và ảnh hưởng tới kinh tế Việt Nam" src="https://icdn.dantri.com.vn/zoom/528_352/2020/11/15/biden-1605396495675.jpg">
                                            </a>
                                        </div>
                                        <div class="title">
                                            <a href="https://dantri.com.vn/kinh-doanh/thai-do-voi-trung-quoc-cua-ong-biden-va-anh-huong-toi-kinh-te-viet-nam-20201115063129737.htm" title="Thái độ với Trung Quốc của ông Biden và ảnh hưởng tới kinh tế Việt Nam">
                                                Thái độ với Trung Quốc của ông Biden và ảnh hưởng tới kinh tế Việt Nam
                                            </a>
                                        </div>
                                        <div class="desc">
                                            <a href="https://dantri.com.vn/kinh-doanh/thai-do-voi-trung-quoc-cua-ong-biden-va-anh-huong-toi-kinh-te-viet-nam-20201115063129737.htm" title="Thái độ với Trung Quốc của ông Biden và ảnh hưởng tới kinh tế Việt Nam">
                                                Trước khả năng ông Joe Biden sẽ trở thành Tổng thống thứ 46 của nước Mỹ, vấn đề được nhiều người quan tâm là thái độ với Trung Quốc của ông Biden sẽ ra sao và kinh tế Việt Nam sẽ chịu ảnh hưởng gì?
                                            </a>
                                        </div>
                                    </li>
                                    <li>
                                        <a href="https://dantri.com.vn/kinh-doanh/thai-do-voi-trung-quoc-cua-ong-biden-va-anh-huong-toi-kinh-te-viet-nam-20201115063129737.htm" title="Thái độ với Trung Quốc của ông Biden và ảnh hưởng tới kinh tế Việt Nam">
                                            Thái độ với Trung Quốc của ông Biden và ảnh hưởng tới kinh tế Việt Nam
                                        </a>
                                    </li>
                                    <li>
                                        <a href="https://dantri.com.vn/kinh-doanh/thoi-den-can-khong-kip-dai-gia-dang-ngoi-tu-tai-san-van-vot-tang-bat-ngo-20201114115416324.htm" title="Thời đến cản không kịp, đại gia đang ngồi tù tài sản vẫn vọt tăng bất ngờ">
                                            Thời đến cản không kịp, đại gia đang ngồi tù tài sản vẫn vọt tăng bất ngờ
                                        </a>
                                    </li>
                                    <li>
                                        <a href="https://dantri.com.vn/kinh-doanh/bo-cong-thuong-da-chuyen-toan-bo-co-phan-sabeco-cho-scic-20201114104235357.htm" title="Bộ Công Thương đã chuyển toàn bộ cổ phần Sabeco cho SCIC">
                                            Bộ Công Thương đã chuyển toàn bộ cổ phần Sabeco cho SCIC
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="pagenum"></div>
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