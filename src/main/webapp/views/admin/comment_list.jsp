<!-- HEAD -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href="<c:url value='/static/css/style-admin.css'/>" rel="stylesheet">
<link href="<c:url value='/static/css/simple-sidebar-admin.css'/>" rel="stylesheet">

  <title> Comment management - Admin Dashboard</title>

  <link href="../css/style-admin.css" rel="stylesheet">
  <link href="../css/simple-sidebar-admin.css" rel="stylesheet">

</head>

<body>

  <div class="d-flex" id="wrapper">

    <jsp:directive.include file="sidebar.jsp" />

    <!-- Page Content -->
    <div id="page-content-wrapper">

      <jsp:directive.include file="header.jsp" /> <!-- HEADER -->

  <!-- MAIN CONTENT -->
      <div>

        <div class="container">
          
          <h2 class="mb-2" align="center">Comment list</h2>

          <table id="table-post">
            
            <tr>
              <th>No</th>
              <th style="width: 30%; max-width: 45%">Content</th>
              <th>By</th>
              <th style="width: 30%; max-width: 45%">On</th>
              <th>At</th>
              <th>Action</th>
            </tr>
            
            <c:forEach items="${comments}" var="item" varStatus="status"> 
            
	            <tr>
	              <td>${status.index+1 }</td>
	              <td>${fn:substring(item.content, 0, 80)} <c:if test="${fn:length(item.content) > 80}"> ... </c:if>  </td>
	              <td>${item.user.username }</td>
	              <td>${fn:substring(item.article.title, 0, 50)} <c:if test="${fn:length(item.article.title) > 50}"> ... </c:if>  </td>
	              
	              <td>${item.createdDate }</td>
	              <td>
	                <a class="btn" href="#">Edit</a>  
	                <button class="btn">Delete</button> 
	              </td>
	            </tr>
            </c:forEach>

          </table>
          
          <c:if test="${ totalPage!=null && totalPage > 1}">
	          <div class="pagination mt-2 mb-2" align="center">
	          	<c:forEach begin="1" end="${totalPage }" varStatus="num">
	          		<c:if test="${num.index!=currentPage }">
			          	<a href="${pageContext.request.contextPath}/admin/comments?action=list&page=${num.index}"> 
				          	<button class="button-paginate"> ${num.index } </button> 
			          	</a>
		          	</c:if>
		          	
		          	<c:if test="${num.index==currentPage }"> 
		          		<button class="button-paginate" style="background-color: red; color:white"> ${num.index } </button>
		          	</c:if>
		          	
	          	</c:forEach>
	          </div>
          </c:if>

        </div>

      </div>
  <!-- END MAIN CONTENT -->

		<jsp:directive.include file="footer.jsp" /> <!-- FOOT -->
		
    </div> <!-- /#page-content-wrapper -->

  </div> <!-- /#wrapper -->


</body>

</html>