<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title> Posts management - Admin Dashboard</title>

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
          
          <h2 class="mb-2" align="center">Posts management</h2>

          <table id="table-post">
            
            <tr>
              <th>No</th>
              <th>Title</th>
              <th>Category</th>
              <th>By</th>
              <th>Create at</th>
              <th>Action</th>
            </tr>
            
            <tr>
              
              <td>1</td>
              <td>Thinking in the new century</td>
              <td>News</td>
              <td>Admin</td>
              <td>22/01/2020</td>
              <td>
                <button class="btn" >Edit</button>  
                <button class="btn" >Delete</button>  
              </td>

            </tr>

             <tr>
              
              <td>2</td>
              <td>The most people thinking Bitch just a bad word</td>
              <td>Hot</td>
              <td>Admin</td>
              <td>23/08/2020</td>
              <td>
                <button class="btn" >Edit</button>  
                <button class="btn" >Delete</button>  
              </td>

            </tr>

             <tr>
              
              <td>3</td>
              <td>Who is the best in tonight?</td>
              <td>Event</td>
              <td>Admin</td>
              <td>18/03/2020</td>
              <td>
                <button class="btn" >Edit</button>  
                <button class="btn" >Delete</button>  
              </td>

            </tr>

          </table>

        </div>

      </div>
  <!-- END MAIN CONTENT -->

		<jsp:directive.include file="footer.jsp" /> <!-- FOOT -->
		
    </div> <!-- /#page-content-wrapper -->

  </div> <!-- /#wrapper -->

  <!-- Menu Toggle Script -->
  <script>
    function myFunction() {
       var element1 = document.getElementById("navbarDropdown");
       var element2 = document.getElementById("menu-target");
       element1.classList.toggle("show");
       element2.classList.toggle("show");
       
    }
  </script>

</body>

</html>


  <!-- END FOOT -->