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

  <title> Tag management - Admin Dashboard</title>

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
          
          <h2 class="mb-2" align="center">Tag management</h2>
          
          <h3 align="center"><a href="<c:url value='/admin/tags'/>?action=create" class="p-10 block"> New tag</a></h3>
          
          <c:if test="${ success_message != null }"> 
				<div class="alert alert-success" align="center">
				  ${success_message}
				</div>
			</c:if>
			
			<c:if test="${ err_message != null }"> 
				<div class="alert alert-danger" align="center">
				  ${err_message}
				</div>
			</c:if>

          <table id="table-post">
            
            <tr>
              <th>No</th>
              <th>ID</th>
              <th>Name</th>
              <th>Action</th>
            </tr>
            
            <c:forEach items="${tags}" var="tag" varStatus="status" > 
				<tr>
	              <td>${status.index +1 }</td>
	              <td>${tag.id }</td>
	              <td>${tag.name }</td>
	              
	               <td>
	                <a class="btn" href="?action=edit&tagId=${tag.id }">Edit</a>  
	                <button class="btn" type="button" onclick="confirmDelete('${tag.id}')">Delete</button>  
	              </td>
	              
	            </tr>

	    	</c:forEach>
	            

          </table>

        </div>

      </div>
  <!-- END MAIN CONTENT -->

		<jsp:directive.include file="footer.jsp" /> <!-- FOOT -->
		
    </div> <!-- /#page-content-wrapper -->

  </div> <!-- /#wrapper -->

</body>

<script type="text/javascript">
	function confirmDelete(id){
		
		if ( confirm('Are u sure delete tag with ID = ' + id + '?') ){
			window.location.href = '?action=delete&tagId=' + id ;
		}
		
	}
</script>

</html>