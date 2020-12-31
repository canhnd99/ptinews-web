<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Users management - Admin Dashboard</title>

<link href="<c:url value='/static/css/style-admin.css'/>" rel="stylesheet">
<link href="<c:url value='/static/css/simple-sidebar-admin.css'/>" rel="stylesheet">

</head>

<body>

	<div class="d-flex" id="wrapper">

		<jsp:directive.include file="sidebar.jsp" />

		<!-- Page Content -->
		<div id="page-content-wrapper">

			<jsp:directive.include file="header.jsp" />
			<!-- HEADER -->

			<!-- MAIN CONTENT -->
			<div>

				<c:if test="${ err_message != null }">
					<div class="alert alert-danger" role="alert">${err_message}</div>
				</c:if>

				<c:if test="${ success_message != null }">
					<div class="alert alert-success" role="alert">
						${success_message}</div>
				</c:if>

				<div class="container">

					<h2 class="mb-2" align="center">Users management</h2>

					<table id="table-post">

						<tr>
							<th>No</th>
							<th>ID</th>
							<th>Username</th>
							<th>Email</th>
							<th>Status</th>
							<th>Action</th>
						</tr>

						<c:forEach var="user" items="${users}" varStatus="status">
							<tr>
								<td>${ status.index+1}</td>
								<td>${ user.id }</td>
								<td>${ user.username }</td>
								<td>${ user.email }</td>
								<td>${ user.status }</td>
								<td><a class="btn" href="edit?id=${user.id }">Edit</a>
									<button class="btn" onclick="delete(${user.id})">Delete</button>
								</td>
							</tr>
						</c:forEach>

					</table>

				</div>

			</div>

			<jsp:directive.include file="footer.jsp" />

		</div>

	</div>

	<!-- Menu Toggle Script -->
	<script>
  
    function myFunction() {
       var element1 = document.getElementById("navbarDropdown");
       var element2 = document.getElementById("menu-target");
       element1.classList.toggle("show");
       element2.classList.toggle("show");
       
    }
  	
    function deleteUser(id){
    	if ( confirm('Are u sure delete user with ID = ' + id + '?') ){
			window.location.href = 'delete-user?id=' + id ;
		}
    }
    
  </script>

</body>

</html>


<!-- END FOOT -->