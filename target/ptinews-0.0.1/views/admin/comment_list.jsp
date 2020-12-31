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
              <th>ID</th>
              <th>By</th>
              <th>On</th>
              <th>At</th>
              <th>Action</th>
            </tr>
            
			<tr>
              <td>1</td>
              <td>1</td>
              <td>Admin</td>
              <td>What happen are they - who comment in this site?</td>
              <td>11-11-2020</td>
              <td>
                <a class="btn" href="#">Edit</a>  
                <button class="btn">Delete</button>  
              </td>
            </tr>
            
            <tr>
              <td>2</td>
              <td>4</td>
              <td>Nguyen Hong Quan</td>
              <td>The starting state Pollapsen in India</td>
              <td>13-09-2020</td>
              <td>
                <a class="btn" href="#">Edit</a>  
                <button class="btn">Delete</button>  
              </td>
            </tr>
            
            <tr>
              <td>3</td>
              <td>27</td>
              <td>Tran Khanh Lam</td>
              <td>Make sure to keep all page content within the Make!</td>
              <td>13-10-2020</td>
              <td>
                <a class="btn" href="#">Edit</a>  
                <button class="btn">Delete</button>  
              </td>
            </tr>
	            

          </table>

        </div>

      </div>
  <!-- END MAIN CONTENT -->

		<jsp:directive.include file="footer.jsp" /> <!-- FOOT -->
		
    </div> <!-- /#page-content-wrapper -->

  </div> <!-- /#wrapper -->


</body>

</html>