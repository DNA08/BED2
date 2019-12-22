<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>Registration Page</title>
</head>
<body bgcolor="cyan">
	<h1>Registration</h1>
<form:form action="registration/do" modelAttribute="newCandidate">
<table>
	<tr> <td>First Name:</td>
	<td><form:input type="text" id="firstname" pattern="[A-Za-z]{1,}" path="firstName" required="required" /></td></tr>
    <tr> <td>Last Name:</td>
	<td><form:input type="text" id="lastname" pattern="[A-Za-z]{1,}" path="lastName" required="required" /></td></tr>
    <tr> <td>Email ID:</td>
	<td><form:input type="email" id="email" path="email" required="required"/></td></tr>
	<tr> <td>Password:</td>
	<td><form:input type="password" id="password"  path="password" pattern=".{8,}" required="required" /></td></tr>
	<tr><th><input type="submit" id="register" value="REGISTER"></th></tr> 
</table>
</form:form>
</body>
</html>