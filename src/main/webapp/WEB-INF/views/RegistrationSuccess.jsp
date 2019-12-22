<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Confirmation</title>
</head>
<body bgcolor="cream">
<h3>Registered Successfully!!!</h3>
<br> 
${firstName}  ${lastName}
<br>
<%String absPath = request.getContextPath();%>
<a href="<%=absPath%>/">LOGIN</a>
</body>
</html>