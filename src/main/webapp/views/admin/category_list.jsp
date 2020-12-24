<!-- HEAD -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title> Category management - Admin Dashboard</title>

  <link href="<c:url value='/static/css/style-admin.css'/>" rel="stylesheet">
  <link href="<c:url value='/static/css/simple-sidebar-admin.css'/>" rel="stylesheet">
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
          
          <h2 class="mb-2" align="center">Category management</h2>

          <table id="table-post">
            
            <tr>
              <th>No</th>
              <th>ID</th>
              <th>Name</th>
              <th>Description</th>
              <th>Create at</th>
              <th>By</th>
              <th>Action</th>
            </tr>
            
<%--             <c:forEach items="${users}" var="u" varStatus="status" >--%>	            
				<tr>
	              <td>1</td>
	              <td>1</td>
	              <td>News</td>
	              <td>Quite a hot. this is main</td>
	              <td>22-11-2020</td>
	              <td>Admin</td>
	              <td>
	                <a class="btn" href="#">Edit</a>  
	                <button class="btn">Delete</button>  
	              </td>
	            </tr>
	            
	            <tr>
	              <td>2</td>
	              <td>22</td>
	              <td>Events</td>
	              <td>This is event. we will be update it anytime.</td>
	              <td>22-10-2020</td>
	              <td>Admin</td>
	              <td>
	                <a class="btn" href="#">Edit</a>  
	                <button class="btn">Delete</button>  
	              </td>
	            </tr>
	            
           <%--  </c:forEach> --%>

          </table>

        </div>

      </div>
  <!-- END MAIN CONTENT -->

		<jsp:directive.include file="footer.jsp" /> <!-- FOOT -->
		
    </div> <!-- /#page-content-wrapper -->

  </div> <!-- /#wrapper -->

</body>

</html>
