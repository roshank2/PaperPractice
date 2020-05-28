<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Login</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/styles.css">
<link
	href="https://fonts.googleapis.com/css2?family=Alegreya:wght@900&family=B612:wght@700&family=Vollkorn&display=swap"
	rel="stylesheet">
</head>
<body>
	<div class="split left">
		<div class="centered">
			<h1
				style="font-family: 'Alegreya', serif; font-size: 4em; margin-bottom: 0.15em;">Practice</h1>
			<h2 style="font-family: 'B612', sans-serif; font-size: 2em;">like
				you've never won.</h2>
			<h1
				style="font-family: 'Alegreya', serif; font-size: 4em; margin-bottom: 0.15em;">Perform</h1>
			<h2 style="font-family: 'B612', sans-serif; font-size: 2em;">like
				you've never lost.</h2>
		</div>
	</div>

	<div class="split right">
		<form action="${pageContext.request.contextPath}/jsps/UserLogin.jsp" method="post">
			<label for="uemail"><b>Email-ID</b></label> <input type="text"
				placeholder="Enter email-id" name="uemail" /> <label
				for="upass"><b>Password</b></label> <input type="password"
				placeholder="Enter Password" name="upass" />
			<button type="submit">Login</button>
			<div class = "warning"> <%
 	out.print(request.getAttribute("alertMsg"));
 %></div>
		</form>
		<div class="containerdash">
			<b>New user?</b> <a href="${pageContext.request.contextPath}/register">Register here</a>
		</div>
	</div>
</body>
</html>