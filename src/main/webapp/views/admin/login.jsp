<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>News - login to admin dashboard</title>

<style>
.form-padding{
	padding: 0 35%;
}

input[type=text], input[type=password] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

button {
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
}

button:hover {
	opacity: 0.8;
}

.cancelbtn {
	width: auto;
	padding: 10px 18px;
	background-color: #f44336;
}

.imgcontainer {
	text-align: center;
	margin: 24px 0 12px 0;
}

img.avatar {
	width: 40%;
	border-radius: 50%;
}

.container {
	padding: 16px;
}

span.psw {
	float: right;
	padding-top: 16px;
}


/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
	span.psw {
		display: block;
		float: none;
	}
}
</style>

</head>
<body>
	<h2 align="center">Login to PtinNews</h2>
	<c:if test="${ err_message != null }">
		<div class="alert alert-danger" role="alert">${err_message}</div>
	</c:if>
	<form action="<c:url value='/login'/>" method="POST" class="form-padding" id="form-login">
		<div class="imgcontainer">
			<img style="width: 100px; max-width: 100px" src="../image/user.png"
				alt="Avatar" class="avatar">
		</div>

		<div class="container">
			<label for="uname"><b>Email</b></label> <input type="text"
				placeholder="Enter email" name="email" required value="hieupq@gmail.com">

			<label for="psw"><b>Password</b></label> <input type="password"
				placeholder="Enter Password" name="password" required value="123@aaa">

			<button type="submit">Login</button>
		</div>

	</form>
</body>
</html>