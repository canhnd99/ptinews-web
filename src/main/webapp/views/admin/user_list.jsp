<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
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

				<div class="container">

					<h2 class="mb-2" align="center">Users Management</h2>

					<h3 align="center">
						<a href="<c:url value='/admin/users'/>?action=create"
							class="p-10 block"> New user</a>
					</h3>

					<c:if test="${ err_message != null }">
						<div class="alert alert-danger" role="alert">${err_message}</div>
					</c:if>

					<c:if test="${ success_message != null }">
						<div class="alert alert-success" role="alert">
							${success_message}</div>
					</c:if>

					<table id="table-post">

						<tr>
							<th style="text-align: center;">No</th>
							<th style="text-align: center;">Username</th>
							<th style="text-align: center;">Email</th>
							<th style="text-align: center;">Role</th>
							<th style="text-align: center;">Status</th>
							<th style="text-align: center;">Created Date</th>
							<th style="text-align: center;">Last Modified</th>
							<th style="text-align: center;">Action</th>
						</tr>

						<c:forEach var="user" items="${users}" varStatus="status">
							
							<c:if test="${ loggedAdmin.email.equals('admin@ptinnews.io') }">
								<tr>
									<td>${ status.index+1}</td>
									<td>${ user.username }</td>
									<td>${ user.email }</td>
									<c:if test="${ user.isAdmin == true}">
										<td>Admin</td>
									</c:if>
									<c:if test="${ user.isAdmin == false}">
										<td>User</td>
									</c:if>
									<c:if test="${ user.status == 1}">
										<td>Active</td>
									</c:if>
									<c:if test="${ user.status == 0}">
										<td>Inactive</td>
									</c:if>
									<td>${ user.createdDate }</td>
									<td>${ user.lastModified }</td>
									<td>
										<a class="btn" href="?action=edit&id=${ user.id }"><button>Edit</button></a>
										<button style="height: 30px; margin-top: 10px" onclick="confirmDelete('${user.id}')">Delete</button>
									</td>
								</tr>
							</c:if>
							
							<c:if test="${ !loggedAdmin.email.equals('admin@ptinnews.io') }">
								<c:if test="${ !user.email.equals('admin@ptinnews.io') }">
									<tr>
										<td>${ status.index+1}</td>
										<td>${ user.username }</td>
										<td>${ user.email }</td>
										<c:if test="${ user.isAdmin == true}">
											<td>Admin</td>
										</c:if>
										<c:if test="${ user.isAdmin == false}">
											<td>User</td>
										</c:if>
										<c:if test="${ user.status == 1}">
											<td>Active</td>
										</c:if>
										<c:if test="${ user.status == 0}">
											<td>Inactive</td>
										</c:if>
										<td>${ user.createdDate }</td>
										<td>${ user.lastModified }</td>
										<td>
											<a class="btn" href="?action=edit&id=${ user.id }"><button>Edit</button></a>
											<c:if test="${ user.isAdmin == true }">
												<button style="height: 30px; margin-top: 10px" onclick="preventDelete()">Delete</button>
											</c:if>
											<c:if test="${ user.isAdmin == false }">
												<button style="height: 30px; margin-top: 10px" onclick="confirmDelete('${user.id}')">Delete</button>
											</c:if>
										</td>
									</tr>
								</c:if>
							</c:if>
						</c:forEach>
					</table>
				</div>
			</div>
			<jsp:directive.include file="footer.jsp" />
		</div>

	</div>

	<!-- Menu Toggle Script -->
	<script type="text/javascript">
		function myFunction() {
			var element1 = document.getElementById("navbarDropdown");
			var element2 = document.getElementById("menu-target");
			element1.classList.toggle("show");
			element2.classList.toggle("show");
		}
		function confirmDelete(id) {
			if (confirm('Xóa người dùng có ID là: ' + id + '?')) {
				window.location.href = '?action=delete&id=' + id;
			}
		}
		function preventDelete() {
			alert("Bạn không có quyền xóa người dùng này!");
		}
	</script>
</body>

</html>


<!-- END FOOT -->