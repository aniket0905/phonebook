<%@ page import="com.entity.*"%>
<%@ page import="com.conn.*"%>
<%@ page import="com.dao.*"%>

<%@ page import ="java.util.ArrayList"%>
<%@ page import ="java.util.List"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>view contact</title>
<%@include file="component/allCss.jsp"%>
<style type="text/css">
.crd-ho:hover{
background-color:#f7f7f7;
}
</style>
</head>
<body>
<%@include file="component/navbar.jsp"%>
	<%
	if (user == null) {
			session.setAttribute("invalidMsg", "Login Please...");
		response.sendRedirect("login.jsp");
	}
	%>
	
	<%
	String successMsg=(String)session.getAttribute("successMsg");
	String errormsg=(String)session.getAttribute("failedMsg");
	if(successMsg != null){
		%>
		<div class="alert alert-success" role="alert"><%=successMsg %></div>
		
	<%
	session.removeAttribute("successMsg");
	}
	
	if(errormsg !=null){
		%>
		<p class="text-danger text-center"><%=errormsg %></p>
		<%
		session.removeAttribute("failedMsg");}
		%>

	
	
	
	
	<div class="container">
		<div class="row p-4">
			
			
	<%
	
	if(user!= null){
	
	ContactDAO dao=new ContactDAO(DbConnect.getConn());
	List<Contact>contact=dao.getAllContact(user.getId());
	
	for(Contact c:contact)
	{%>
	<div class="col-md-3">
		<div class="card crd-ho">
					<div class="card-body">
						<h5>name:<%= c.getName() %></h5>
						<p>phno:<%= c.getPhno() %></p>
						<p>email:<%= c.getEmail() %></p>
						<p>about:<%= c.getAbout() %></p>
						<div class="text-center">
						<a href="editcontact.jsp?cid=<%= c.getId() %>" class="btn btn-success btn-sm text-white">Edit</a>
						<a href="delete?cid=<%=c.getId() %>" class="btn btn-danger btn-sm text-white">Delete</a>
						
						</div>
					</div>
				</div>
				</div>
		
	<%}}
	
	%>
			
			
			
			
			
			
		</div>
	</div>
	
	
	

</body>
</html>