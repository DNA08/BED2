<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All User Details </title>
</head>
<body bgcolor="black">
<h2 align="center" style="color:yellow">All User Details</h2>
<table bgcolor="yellow" border="4" align="center">
<tr>
	<th>First Name</th>
	<th>Last Name</th>
	<th>Email ID</th>
	<th>User Type</th>
</tr>
<c:forEach items="${userList}" var="user"  varStatus="index">
<tr>
	<td><span id= "firstName${index.count}">${user.getFirstName()}</span></td>
	<td><span id="lastName${index.count}">${user.getLastName()}</span></td>
	<td><span id="email${index.count}">${user.getEmail()}</span></td>
	<td><span id="userType${index.count}">${user.getType()}</span></td>
</tr>
</c:forEach>
</table>
</body>
</html>