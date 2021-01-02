<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title><c:if test="${user != null }"> Update user </c:if> <c:if
		test="${user == null }"> New user </c:if></title>

<link href="<c:url value='/static/css/style-admin.css'/>"
	rel="stylesheet">
<link href="<c:url value='/static/css/simple-sidebar-admin.css'/>"
	rel="stylesheet">
<style>
label {
	display: inline-block;
	margin-bottom: .5rem;
}

.form-group {
	margin-bottom: 1rem;
}

.form-control {
	display: block;
	width: 100%;
	padding: .375rem .75rem;
	font-size: 1rem;
	line-height: 1.5;
	color: #495057;
	background-color: #fff;
	background-clip: padding-box;
	border: 1px solid #ced4da;
	border-radius: .25rem;
	transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;
}
</style>
</head>

<body>
	<div class="d-flex" id="wrapper">

		<jsp:directive.include file="sidebar.jsp" />

		<!-- Page Content -->
		<div id="page-content-wrapper">

			<jsp:directive.include file="header.jsp" />
			<!-- HEADER -->

			<!-- MAIN CONTENT -->
			<div class="container">

				<c:if test="${ err_message != null }">
					<div class="alert alert-danger" role="alert">${err_message}</div>
				</c:if>

				<c:if test="${ success_message != null }">
					<div class="alert alert-success" role="alert">
						${success_message}</div>
				</c:if>
				
				<c:if test="${ updatedUser == null && master == null }">
					<h1>Bạn không được quyền chỉnh sửa người dùng này</h1>
				</c:if>
				
				<c:if test="${ updatedUser != null && master == null }">
					<h2 class="mb-2" align="center">Update User</h2>
						<form action="<c:url value='/admin/users'/>?action=update" method="post" onsubmit="return validateEditFormInput();">
							
							<input type="hidden" type="hidden" name="id" value="${updatedUser.id }" /> 
	
							<div class="form-group">
								<label>Username</label> 
								<input type="text" class="form-control" name="username" value="${ updatedUser.username }" required/> 
								<small><i>Can not be change</i></small>
							</div>
		
							<div class="form-group">
								<label>Email</label> 
								<input type="email" class="form-control" name="email" value="${updatedUser.email }"  value="${ updatedUser.email }" required/> <small><i>Can not be change</i></small>
							</div>
		
							<div class="form-group">
								<label>Password</label> 
								<input class="form-control" value="password" name="password" type="password" required/>
								<small>
									<i>Password is require least 7 to 15 characters which contain at least one numeric digit and a special character</i>
								</small>
							</div>
						
							<div class="form-group">
								<input class="btn btn-primary" type="submit" value="Save" /> 
								<input class="btn btn-success" type="button" value="Cancel" onclick="javascript:history.go(-1)" />
							</div>
						</form>
				</c:if>
				
				<c:if test="${ updatedUser != null && master != null }">
					<div class="container">
						<h2 class="mb-2" align="center">Update User</h2>
						<form action="<c:url value='/admin/users'/>?action=edit" method="post" 
							onsubmit="return validateEditFormInput();">
							
							<input type="hidden" type="hidden" name="id" value="${updatedUser.id }" /> 
	
							<div class="form-group">
								<label>Username</label> 
								<input type="text" class="form-control" name="username" value="${ updatedUser.username }" required/> 
								<small><i>Can not be change</i></small>
							</div>
		
							<div class="form-group">
								<label>Email</label> 
								<input type="email" class="form-control" name="email" value="${updatedUser.email }"  value="${ updatedUser.email }" required/> <small><i>Can not be change</i></small>
							</div>
		
							<div class="form-group">
								<label>Password</label> 
								<input class="form-control" placeholder="New password" name="password" type="password" required/>
								<small>
									<i>Password is require least 7 to 15 characters which contain at least one numeric digit and a special character</i>
								</small>
							</div>
							
							<div class="form-group">
								<label>Role</label><br>
								<input type="radio" name="isAdmin" value="true">
  								<label for="admin">Admin</label><br>
  								<input type="radio" name="isAdmin" value="false">
  								<label for="user">User</label><br>
							</div>
						
							<div class="form-group">
								<label>Status</label>
								<select class="form-control" name="status" required>
									<option value="1">active</option>
									<option value="0">inactive</option>
								</select>
							</div>
							
							<div class="form-group">
								<input class="btn btn-primary" type="submit" value="Save" /> 
								<input class="btn btn-success" type="button" value="Cancel" onclick="javascript:history.go(-1)" />
							</div>
						</form>
					</div>
				</c:if>
			</div>

			<jsp:directive.include file="footer.jsp" />
			<!-- FOOT -->

		</div>
		<!-- /#page-content-wrapper -->

	</div>
	<!-- /#wrapper -->

	<!-- Menu Toggle Script -->
	<script>
		function myFunction() {

			var element1 = document.getElementById("navbarDropdown");
			var element2 = document.getElementById("menu-target");
			element1.classList.toggle("show");
			element2.classList.toggle("show");

		}

		function validateEditFormInput() {

			var newpass = document.getElementById("newpassword").value;
			var repass = document.getElementById("repassword").value;

			if (newpass && !CheckPassword(newpass) && newpass != repass) {
				alert("Pass word invalid!");
				return false;
			}

			return true;
		}

		function validateEmail(email) {
			const re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
			return re.test(String(email).toLowerCase());
		}

		function CheckPassword(pass) {
			var re = /^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{7,15}$/;
			return re.test(String(pass).toLowerCase());
		}
	</script>
</body>
</html>
