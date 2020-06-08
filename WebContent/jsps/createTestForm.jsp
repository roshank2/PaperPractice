<%
	/********************* Roshan Kumar ***********************/
%>

<%@ page language="java" contentType="text/html; UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Test</title>
<link rel="icon" type="image/png" sizes="32x32"
	href="${pageContext.request.contextPath}/resource/favicon-32x32.png">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/styles.css">
<link
	href="https://fonts.googleapis.com/css2?family=Alegreya:wght@900&family=B612:wght@700&family=Vollkorn&display=swap"
	rel="stylesheet">
</head>
<body>
	<form class="createTest"
		action="${pageContext.request.contextPath}/jsps/ProcessTest.jsp"
		method="post">
		<h1>Create Test</h1>
		<label for="topic_name"><b>Topic Name</b></label> <input type="text"
			placeholder="Enter topic name" name="tname" /> <label for="section"><b>Section
				&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</b></label> <select name="section">
			<option value="01">General Intelligence</option>
			<option value="02">English Language</option>
			<option value="03">General Awareness</option>
			<option value="04">Quantitative Aptitude</option>
		</select>
		<button type="submit">Create</button>
	</form>
</body>
</html>