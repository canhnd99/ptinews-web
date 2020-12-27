<!-- HEAD -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Posts management - Admin Dashboard</title>



<!-- EDITOR -->
<link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link href="<c:url value='/static/css/richtext.min.css'/>" rel="stylesheet">
<link href="<c:url value='/static/css/style-admin.css'/>" rel="stylesheet">
<link href="<c:url value='/static/css/simple-sidebar-admin.css'/>" rel="stylesheet">
<script src="<c:url value='/static/js/jquery-3.5.1.min.js'/>"></script>
<script src="<c:url value='/static/js/jquery.richtext.min.js'/>"></script>
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

					<h2 class="mb-2" align="center">Posts Form</h2>


					<form action="<c:url value='/admin/articles'/>?action='create'" method="post">
						<!-- NHỚ THÊM ENCRYPT = MULTIPART/FORM DATA -->

						<div class="form-group">
							<label>Title</label> <input class="form-control" value=""
								type="text" name="title" />
						</div>

						<div class="form-group">
							<label>Thumbnail</label> <input class="form-control" value=""
								type="file" name="thumbnail" />
						</div>

						<div class="form-group">
							<label>Description</label>
							<textarea rows="5" name="description" class="form-control"
								id="description"></textarea>
						</div>

						<div class="form-group">
							<label>Content</label>
							<textarea rows="12" name="content" class="form-control"
								id="content"></textarea>
						</div>

						<div class="form-group">
							<label>Category</label> <select class="form-control"
								name="category">
								<option>new</option>
								<option>hot</option>
								<option>trend</option>
								<option>other</option>
							</select>
						</div>

						<div class="form-group">
							<label>Tag</label> <select class="form-control" name="tags">
								<option>tag1</option>
								<option>tag2</option>
								<option>tag3</option>
							</select>
						</div>

						<div class="form-check">
							<input type="checkbox" class="form-check-input"> <label
								class="form-check-label">Mark as event</label>
						</div>

						<div class="form-check">
							<input type="checkbox" class="form-check-input"> <label
								class="form-check-label">Mark as sticky</label>
						</div>

						<div class="form-group">

							<label>Status</label> <select class="form-control" name="status">
								<option>draft (default)</option>
								<option>published</option>
								<option>trashed</option>
							</select>

						</div>

						<div class="form-group">
							<input class="btn btn-primary" type="submit" value="Save" /> 
							<input class="btn btn-success" type="button" value="Cancel" onclick="javascript:history.go(-1)" />
						</div>

					</form>

				</div>

			</div>
			<!-- END MAIN CONTENT -->

			<jsp:directive.include file="footer.jsp" />
			<!-- FOOT -->

		</div>
		<!-- /#page-content-wrapper -->

	</div>
	<!-- /#wrapper -->

	<script type="text/javascript">
		function myFunction() {
			var element1 = document.getElementById("navbarDropdown");
			var element2 = document.getElementById("menu-target");
			element1.classList.toggle("show");
			element2.classList.toggle("show");
		}

		$('#content').richText();
	</script>
</body>
</html>
<!-- END FOOT -->