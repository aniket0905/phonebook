<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>register</title>
<%@include file="component/allCss.jsp" %>
</head>
<body style="background-color:#f7faf8;">
<%@include file="component/navbar.jsp" %>
<div class="container-fluid">
<div class="row p-2">
<div class="col-md-6 offset-md-3">
<div class="card">
<div class="card-body"> 
<h4 class="text-center text-success">Registration Page</h4>
<%
String successmsg=(String)session.getAttribute("successmsg");
String errormsg=(String)session.getAttribute("errormsg");
if(successmsg != null){
%>
<p class="text-success text-center"><%=successmsg%></p>
<%
session.removeAttribute("successmsg");
}
if(errormsg !=null){
%>
<p class="text-danger text-center"><%=errormsg %></p>
<%
session.removeAttribute("errormsg");}
%>


<form action="register" method="post">
<div class="form-group">
    <label for="exampleInputEmail1">Enter Name</label>
    <input name="name" type="text" class="form-control">
   
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input name="email" type="email" class="form-control">
   
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input name="password" type="password" class="form-control">
  </div>
  <div class="text-center">
  <button type="submit" class="btn btn-primary mt-2">Register</button>
  </div>
</form>
</div>
</div>
</div>
</div>

</div>
<div style="margin-top:55px">
<%@include file="component/footer.jsp"%>
</div>

</body>
</html>