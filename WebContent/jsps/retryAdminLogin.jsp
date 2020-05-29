
<%
	/********************* Roshan Kumar ***********************/
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
<link rel="icon" type="image/png" sizes="32x32"
	href="${pageContext.request.contextPath}/resource/favicon-32x32.png">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/styles.css">
<link
	href="https://fonts.googleapis.com/css2?family=Alegreya:wght@900&family=B612:wght@700&family=Vollkorn&display=swap"
	rel="stylesheet">
</head>
<body>

	<form class="adminForm"
		action="${pageContext.request.contextPath}/jsps/adminLogin.jsp"
		method="post">
		<label for="adminid"><b>Admin-ID</b></label> <input type="text"
			placeholder="Enter Admin-ID" name="adminid" /> <label for="pass"><b>Password</b></label>
		<input type="password" placeholder="Enter Password" name="pass" />
		<button type="submit">Login</button>
		<div class="warning">
			<%
				out.print(request.getAttribute("alertMsg"));
			%>
		</div>
	</form>

</body>
</html>