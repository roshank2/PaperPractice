
<%
	/********************* Roshan Kumar ***********************/
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Home</title>
<link rel="icon" type="image/png" sizes="32x32"
	href="${pageContext.request.contextPath}/resource/favicon-32x32.png">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/styles.css">
<link
	href="https://fonts.googleapis.com/css2?family=Alegreya:wght@900&family=B612:wght@700&family=Vollkorn&display=swap"
	rel="stylesheet">
</head>
<body>
	<div class="adminHome">
		<h1 style="margin-bottom: 64px">Admin Operations</h1>
		<a class="adminLinks"
			href="${pageContext.request.contextPath}/jsps/createTestForm.jsp">Create
			Test</a> <a class="adminLinks"
			href="${pageContext.request.contextPath}/jsps/modifyTestForm.jsp">Modify
			Test</a> <a class="adminLinks"
			href="${pageContext.request.contextPath}/jsps/deleteTestForm.jsp">Delete
			Test</a> <a class="adminLinks"
			href="${pageContext.request.contextPath}/jsps/viewFeedback.jsp">View
			Feedback</a>
	</div>
</body>
</html>