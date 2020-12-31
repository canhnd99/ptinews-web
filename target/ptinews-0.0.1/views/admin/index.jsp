<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />

<title>Admin Dashboard - News</title>

<link href="<c:url value='/static/css/style-admin.css'/>" rel="stylesheet">
<link href="<c:url value='/static/css/simple-sidebar-admin.css'/>" rel="stylesheet">
</head>

<body>
	<div class="d-flex" id="wrapper">
		<jsp:directive.include file="sidebar.jsp" />
		<!-- SIDE BAR -->

		<!-- Page Content -->
		<div id="page-content-wrapper">
			<jsp:directive.include file="header.jsp" />
			<!-- HEADER -->

			<!-- MAIN CONTENT -->
			<div class="container-fluid main-content">
				<c:if test="${ success_message != null }">
					<div class="alert alert-success" role="alert">
						${success_message}</div>
				</c:if>

				<h1 class="mt-4">Welcome ${admin.username}, howdy?</h1>
				<p>The starting state of the menu will appear collapsed on
					smaller screens, and will appear non-collapsed on larger screens.
					When toggled using the button below, the menu will change.</p>
				<p>Make sure to keep all page content within the Make sure to
					keep all page content within the Make sure to keep all page content
					within the Make sure to keep all page content within the</p>
			</div>
			<!-- END MAIN CONTENT -->

			<jsp:directive.include file="footer.jsp" />
			<!-- FOOT -->
		</div>
		<!-- /#page-content-wrapper -->
	</div>
	<!-- /#wrapper -->
</body>

<!-- Menu Toggle Script -->
<script>
	function myFunction() {
		var element1 = document.getElementById("navbarDropdown");
		var element2 = document.getElementById("menu-target");
		element1.classList.toggle("show");
		element2.classList.toggle("show");
	}
</script>

</html>