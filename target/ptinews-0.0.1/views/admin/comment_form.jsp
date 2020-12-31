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

  <title>  Comment form </title>

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
      <div class="container">
        
        <div class="container">
         
          <h2 class="mb-2" align="center">  Comment Form  </h2>
          
          <form action="" method="post">
          	
            <div class="form-group"> 
            	<label>Content</label>
            	<textarea class="form-control" cols = "5" name="content"> </textarea>
            </div>
            
            <i> 
          		<p>By <b>Tran Khanh Lam</b> 
          			on 
          		<b>Make sure to keep all page content within the Make!</b> </p>
          		<span> at 13-10-2020 </span>
          	</i>
            
            <div class="form-group mt-2">
				<input class="btn btn-primary" type="submit" value="Save" />
				<input class="btn btn-success" type="button" value="Cancel" onclick="javascript:history.go(-1)"/>
			</div>

          </form>

        </div>

      </div>
  <!-- END MAIN CONTENT -->

		<jsp:directive.include file="footer.jsp" /> <!-- FOOT -->
		
    </div> <!-- /#page-content-wrapper -->

  </div> <!-- /#wrapper -->

</body>

</html>
