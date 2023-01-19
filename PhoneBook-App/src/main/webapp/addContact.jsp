<%@ page import="com.entity.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>addContact</title>
<%@include file="component/allCss.jsp" %>
</head>
<body>
<%@include file="component/navbar.jsp" %>

<%
if(user==null){
	session.setAttribute("invalidMsg","Login Please...");
	response.sendRedirect("login.jsp");
}
%>


<div class="container-fluid">
<div class="row p-2">
<div class="col-md-6 offset-md-3">
<div class="card">
<div class="card-body"> 
<h4 class="text-center text-success">Add Contact Page</h4>

<%
String successmsg=(String)session.getAttribute("successMsg");
String errormsg=(String)session.getAttribute("failedMsg");
if(successmsg != null){
%>
<p class="text-success text-center"><%=successmsg%></p>
<%
session.removeAttribute("successMsg");
}
if(errormsg !=null){
%>
<p class="text-danger text-center"><%=errormsg %></p>
<%
session.removeAttribute("failedMsg");}
%>



<form action="addContact" method="post">
<%
if(user!=null)
{%>
  <input type="hidden" value="<%=user.getId()%>" name="userid">
<%}
%>

<div class="form-group">
    <label for="exampleInputEmail1">Enter Name</label>
    <input name="name" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
   
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input name="email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
   
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Enter Phone No</label>
    <input name="phno" type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
   
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Enter About</label>
    <input name="about" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
   
  </div>
 
  <div class="text-center">
  <button type="submit" class="btn btn-primary mt-2">Save Contact</button>
  </div>
</form>
</div>
</div>
</div>
</div>

</div>
<%@include file="component/footer.jsp" %>
</body>
</html>