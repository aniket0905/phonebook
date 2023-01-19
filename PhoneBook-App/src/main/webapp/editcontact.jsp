<%@ page import="com.conn.*"%>
<%@ page import="com.dao.*"%>





<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>editContact</title>
<%@include file="component/allCss.jsp"%>
</head>
<body>
<%@include file="component/navbar.jsp"%>
	<%
	if (user == null) {
			session.setAttribute("invalidMsg", "Login Please...");
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
String errormsg=(String)session.getAttribute("failedMsg");

if(errormsg !=null){
%>
<p class="text-danger text-center"><%=errormsg %></p>
<%
session.removeAttribute("failedMsg");}
%>



<form action="update" method="post">
<%
int cid=Integer.parseInt(request.getParameter("cid"));
ContactDAO dao=new ContactDAO(DbConnect.getConn());
Contact c=dao.getContactByID(cid);

%>
<input type="hidden" value="<%=cid%>" name="cid">

<div class="form-group">
    <label for="exampleInputEmail1">Enter Name</label>
    <input value="<%=c.getName()%>" name="name" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
   
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input  value="<%=c.getEmail()%>" name="email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
   
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Enter Phone No</label>
    <input  value="<%=c.getPhno()%>" name="phno" type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
   
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Enter About</label>
    <input  value="<%=c.getAbout()%>" name="about" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
   
  </div>
 
  <div class="text-center">
  <button type="submit" class="btn btn-primary mt-2">Update Contact</button>
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