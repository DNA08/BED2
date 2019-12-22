<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Online Assessment - Home Page</title>
</head>
<body bgcolor="cyan">
	<h1>Welcome to Online Assessments</h1>
	<br>
	<h2>Login</h2>
	<div>
		<form:form action="login/do" modelAttribute="candidate">
			<label for="email" >Email ID:</label>
			<form:input type="email" id="email" path="email" required="required"></form:input><br><br>
			
			<label for="password" >Password</label>
			<form:input type="password" path="password" required="required"></form:input><br><br>
			
			<button id="login" type="submit">LOGIN</button>
			<br>
		</form:form>
	</div>
	<label>New User ?</label>
	<%String absPath = request.getContextPath();%>
	<a href="<%=absPath%>/register">Register here</a>
</body>
</html>