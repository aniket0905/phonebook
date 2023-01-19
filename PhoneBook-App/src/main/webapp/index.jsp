<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>index</title>

<%@include file="component/allCss.jsp"%>
<style type="text/css">
.back-img {
	background: urL("img/mobilepic.jpeg");
	width: 100%;
	height: 80vh;
	background-repeat: no-repeat;
	background-size: cover;
}
</style>
</head>
<body>
	<%@include file="component/navbar.jsp"%>
	<h1 class="text-center text-success">Welcome to PhoneBook App</h1>

	<div class="container-fluid back-img text-center text-success">
		
	</div>
	<%@include file="component/footer.jsp"%>
</body>
</html>