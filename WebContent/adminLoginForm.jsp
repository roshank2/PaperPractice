<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
<link rel="stylesheet" href="styles.css">
<link
	href="https://fonts.googleapis.com/css2?family=Alegreya:wght@900&family=B612:wght@700&family=Vollkorn&display=swap"
	rel="stylesheet"></head>
<body>

	<form  class = "adminForm" action="adminLogin.jsp" method="post">
			<label for="adminid"><b>Admin-ID</b></label> <input type="text"
				placeholder="Enter Admin-ID" name="adminid" /> <label
				for="pass"><b>Password</b></label> <input type="password"
				placeholder="Enter Password" name="pass" />
			<button type="submit">Login</button>
		</form>

</body>
</html>