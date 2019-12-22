<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dth">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All Tests Details</title>
</head>
<body >
<h2 align="center">List of Candidates and Tests</h2><br><br>
<table bgcolor="cyan" border="3" align="center">
<tr>
	<th>Test Date</th>
	<th>Assessment</th>
	<th>Test Marks</th>
	<th>Email ID</th>
	<th>Total Marks</th>
	<th>Result</th>
</tr>
<c:forEach items="${reports}" var="report" varStatus="index">
	<tr>
		<td><span id = "testDate${index.count}">${report.getDate()}</span></td>
		<td><span id = "assessment${index.count}">${report.getAssType()}</span></td>
		<td><span id = "marks${index.count}">${report.getMarks()}</span></td>
		<td><span id = "email${index.count}">${report.getMail()}</span></td>
		<td><span id = "totalMarks${index.count}">${report.getTotalMarks()}</span></td>
		<td><span id = "result${index.count}">${report.getResult()}</span></td>
	</tr>
</c:forEach>

</table>
</body>
</html>