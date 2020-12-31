<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Kinh Doanh</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="static/css/web/style.css">
<link rel="stylesheet" type="text/css" href="static/css/web/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="static/css/web/icomoon.css">
<link rel="stylesheet" type="text/css" href="static/css/web/poppin.css">
<link rel="stylesheet" type="text/css" href="static/css/web/themify-icons.css">
<link rel="stylesheet" type="text/css" href="static/css/web/flaticon.css">
<link rel="stylesheet" type="text/css" href="static/css/web/styleCategories.css">

</head>
<body>

	<div class="container">
	
	 <jsp:directive.include file="header.jsp" />
        
        <div id="content">
            <div class="content-header">
                <div class="content-header-top">
                    <a class ="homepage" href="">Trang chủ </a>
                    <a class ="active" href="#">${category.name }</a>
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
            
                <div class="older-news">
                    <div class="col1">
                        <div class="list-news">
                        
                        <c:forEach items="${lists}" var="item">
                            
                            <div class="news container-item">
                                <div class="detail-item">
                                    <div class="img">
                                        <a href="${pageContext.request.contextPath}/article?id=${item.id}">
                                            <img src="./static/image/vang.jpg" />
										</a>
                                    </div>
                                    <div class="desc">
                                    
	                                    <h2 class="title-news">
		                                    <a href="${pageContext.request.contextPath}/article?id=${item.id}">${item.title }</a>
		                                </h2>
		                                
                                        <p> ${item.description } </p>
                                        
                                    </div>
                                </div>
                            </div>
                            
                         </c:forEach>
                            
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
        
         <jsp:directive.include file="footer.jsp" />
        
    </div>
    
     <jsp:directive.include file="form-login.jsp" />
    
    <script src="<c:url value='static/js/script.js'/>"></script>
</body>
</html>