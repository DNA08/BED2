<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Select Reports </title>
</head>
<body>
<h2 id="msg">Select Reports</h2><br><BR><br>
<% String path = request.getContextPath(); %>
<a href="<%=path %>/users/all">View list of all candidates</a><br><Br><Br><br>
<a href="<%=path %>/tests/all"> View list of all tests taken</a><br><Br>
<% String contextPath = request.getContextPath(); %>
<a href="<%=contextPath%>/">Logout</a>
</body>
</html>