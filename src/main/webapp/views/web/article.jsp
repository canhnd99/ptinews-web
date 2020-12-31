<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${article.title }</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="static/css/web/style.css">
<link rel="stylesheet" type="text/css" href="static/css/web/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="static/css/web/icomoon.css">
<link rel="stylesheet" type="text/css" href="static/css/web/poppin.css">
<link rel="stylesheet" type="text/css" href="static/css/web/themify-icons.css">
<link rel="stylesheet" type="text/css" href="static/css/web/flaticon.css">
<link rel="stylesheet" type="text/css" href="static/css/web/style-article.css">

</head>
<body>
	<div class="container">
        
        <jsp:directive.include file="header.jsp" />
        
        <div id="content">
            <div class="content-left">
                <div class="left-f1">
                    <!-- tên mục, ngày giờ up -->
                    <div class="cate-1">
                        <div class="cate-name">
                            <a href="${pageContext.request.contextPath}">Trang chủ</a> |
                            <a href=""> ${article.category.name } </a>
                        </div>
                        <div class="time-post"> Đăng ngày ${article.createdDate } (GMT+7)</div>
                    </div>
                    <!-- bài viết -->
                    <div class="cate-2">
                        <div class="cate-2-title">
                            <h1>${article.title }</h1>
                        </div>
                        <div class="cate-2-nd">
                            <!-- phần tóm tắt -->
                            <p class="des">Tổng thống Nga cho biết ông sẵn sàng làm việc với bất kỳ lãnh đạo Mỹ nào nhưng chưa sẵn sàng công nhận chiến thắng bầu cử của Biden.</p>
                            <!-- nội dung -->
                            <article class="noi-dung">
                                <p class="nomal">"Chúng tôi sẽ làm việc với bất kỳ ai có được niềm tin của người dân Mỹ", Tổng thống Nga Vladimir Putin ngày 22/11 nói trên truyền hình quốc gia. "Nhưng niềm tin đó chỉ được trao cho một ứng viên mà chiến thắng được đảng
                                    đối lập công nhận, hoặc sau khi kết quả được xác nhận một cách chính đáng, hợp pháp".</p>
                                <p class="nomal">Ông mô tả quyết định của Điện Kremlin chưa chúc mừng ứng viên tổng thống Mỹ đảng Dân chủ Joe Biden là "bình thường" và không có động cơ thầm kín nào.</p>
                                <img src="./static/image/putin.jpg" alt="">
                                <p class="nomal">"Các thủ tục phải được tuân thủ dựa trên những thông lệ và tiêu chuẩn pháp lý thiết lập sẵn. Không có động cơ thầm kín hay bất kỳ điều gì có thể làm suy giảm thêm mối quan hệ của chúng ta. Đó là cách tiếp cận hoàn toàn
                                    bình thường", Tổng thống Putin nói.</p>
                                <p class="nomal">"Các thủ tục phải được tuân thủ dựa trên những thông lệ và tiêu chuẩn pháp lý thiết lập sẵn. Không có động cơ thầm kín hay bất kỳ điều gì có thể làm suy giảm thêm mối quan hệ của chúng ta. Đó là cách tiếp cận hoàn toàn
                                    bình thường", Tổng thống Putin nói.</p>
                                <p class="nomal"><strong> Theo: ${article.user.username } </strong></p>
                                <div>
                                    <ul>
                                        <li>Từ khóa</li>
                                        <li><a href="">Tổng thống</a></li>
                                        <li><a href="">Mỹ</a></li>
                                    </ul>
                                </div>
                            </article>
                        </div>
                    </div>
                    <div class="cate-comment">
                        <h3>Bình luận</h3>
                       
                       <c:if test="${sessionScope.user == null}"> 
                       		<h4 style="margin-top: 20px; color: red"> <i> Bạn cần đăng nhập để bình luận </i> </h4>
                       </c:if>
                       
                       <c:if test="${sessionScope.user != null}"> 
	                        <div class="cmt">
	                            <form action="comment" method="post" class="form-cmt">
	                                <textarea name="comment" placeholder="Nhập bình luận của bạn" class="comment-field"></textarea>
	                                <input type="hidden" name="articleId" value="${article.id }"/>
	                                <input type="submit" value="Bình luận" class="gui">
	                            </form>
	                        </div>
                        </c:if>
                        
                        <c:if test="${fn:length(comments) > 0}"> 
                        
                        	<h2 class="comment-heading" style="margin: 20px 0 10px;"> Bình luận. Những người khác nói gì? </h2>
                        
	                        <div class="list-comment" style="margin-top: 20px"> 
	                        
		                        <c:forEach items="${comments}" var="comment">
		                        	<div style="margin-top: 10px"> 
		                        		<span> <b> By ${comment.user.username } </b> lúc ${comment.createdDate } </span>
		                        		<p style="padding: 10px 0;"> <i>${ comment.content }</i></p>
		                        		<hr>
		                        	</div>
		                        </c:forEach>
		                        
	                        </div>
                        
                        </c:if>
                        
                    </div>
                </div>
            </div>
            <div class="content-right">
                <div class="fx">
                    <div class="right-title">
                        <h3>TIN LIÊN QUAN</h3>
                    </div>
                    <div class="right-2">
                        <ul>
                            <c:forEach items="${relateArticle}" var="item">
                            	<c:if test="${item.id != article.id }">
                            		<li><a href="${pageContext.request.contextPath}/article?id=${item.id}">${item.title }</a></li>
                            	</c:if>
							</c:forEach>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        
       <jsp:directive.include file="footer.jsp" />
        
    </div>
    
	<jsp:directive.include file="form-login.jsp" />

    <script src="<c:url value='static/js/script.js'/>"></script>
</body>
</html>