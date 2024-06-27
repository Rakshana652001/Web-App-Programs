
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.chainsys.MavenWebApp.model.User" %>
    <%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html lang="xml">
<head>
<meta charset="ISO-8859-1">
<title>User List</title>
</head>
<body>
<h3>User List</h3>
	<form action= "/search" method= "get">
	<input type= "search" placeholder="Search" name= "name" id="name">
	<button>Search</button>
	</form><br>
<table border="1">
<thead>
	<tr>
	<th>Name</th>
	<th>Email ID</th>
	<th>Phone Number</th>
	<th>Update</th>
	<th>Delete</th>
	</tr>
</thead>
<% List<User> list = (ArrayList<User>)request.getAttribute("list");
	for(User object:list)
	{
	%>
	
	<tr>
		<td><%= object.getName() %></td>
		<td><%= object.getEmailId() %></td>
		<td><%= object.getPhoneNumber() %></td>
		
		<td>
		<form action="update.jsp">
 		<input type="hidden" name="name" value="<%= object.getName() %>">
 		<button>Update</button>
		</form>
		</td>
		
		<td>
		<form action="/delete" method="get">
  		<input type="hidden" name="name" value="<%= object.getName()%>">
  		<button>Delete</button>
  		</form>
  		</td>
	</tr>
				
	<%
	}
	  %>
</table>
</body>
</html>