<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Topic</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/styles.css">
<link
	href="https://fonts.googleapis.com/css2?family=Alegreya:wght@900&family=B612:wght@700&family=Vollkorn&display=swap"
	rel="stylesheet">
</head>
<body>
	<form class="createTest"
		action="${pageContext.request.contextPath}/jsps/deleteTest.jsp"
		method="post">
		<h1>Delete Test</h1>
		<label for="topic_name"><b>Topic Name</b></label> <input type="text"
			placeholder="Enter topic name" name="tname" /> 
		<button type="submit">Delete</button>
	</form>
</body>
</html>