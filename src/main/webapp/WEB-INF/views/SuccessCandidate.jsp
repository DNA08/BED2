<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Select Tests</title>
</head>
<body>
<div id="msg">Select the Test</div><br>
<%String absPath = request.getContextPath();%>
<a href="<%=absPath %>/springAssessment">Spring Assessment</a><br><br>
<a href="<%=absPath %>/hibernateAssessment">Hibernate Assessment</a><br><br>
<% String contextPath = request.getContextPath(); %>
<a href="<%=contextPath%>/">Logout</a>
</body>
</html>