<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>                    

        <div id="header">
            <div class="header-content">
                <div class="header-top">
                    <div class="site-logo">
						<a href="${pageContext.request.contextPath}">
			                 <img src="./static/image/logo.png" alt="logo">
			            </a>
                    </div>

                    <div class="header-search">
                            <input type="text" placeholder="Tìm kiếm tin tức">
                            <span class="ti-search"></span>
                    </div>
                    
                    <div class="right">
                        <c:if test="${sessionScope.user.username ==null}">
			                 <button type="submit" id="loginBtn" class="btn-login">Đăng nhập</button>
			                 <a href="<c:url value='/dang-ky'/>" class="btn-sigup">Đăng ký</a>
		                </c:if>
		                
		                <c:if test="${sessionScope.user.username !=null}">
		            		<span> Hi, ${sessionScope.user.username } </span>
		            		<a href="<c:url value='/dang-xuat'/>"> Logout </a>
		                </c:if>
                    </div>


                    <div id="menuToggle">
                        <input type="checkbox" />
                        <span></span>
                        <span></span>
                        <span></span>

                        <div id="menu">
                            <input type="text" value="Tìm kiếm..."><br><br>
                            
                            <ul>
                                 <c:forEach items="${categories}" var="cat">
	                                <li><a href="">${cat.name }</a></li>
								 </c:forEach>
                            </ul>
                            <img src="./image/logo.png" alt="logo">

                        </div>


                    </div>
                </div>
                <div class="header-menu">
                    <ul class="nav-menu-list">
                        <li class="nav-menu-item home-item"><a href="${pageContext.request.contextPath}">Trang chủ</a></li>
                        
                        <c:forEach items="${categories}" var="cat">
	                        <li class="nav-menu-item">
	                            <a class="dropbtn" href="${pageContext.request.contextPath}/category?id=${cat.id}">${cat.name }</a>
	                        </li>
	                    </c:forEach>
                    </ul>
                </div>

            </div>
        </div>  <!-- END HEADER -->