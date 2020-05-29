
<%
	/********************* Roshan Kumar ***********************/
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Feedback</title>
<link rel="icon" type="image/png" sizes="32x32"
	href="${pageContext.request.contextPath}/resource/favicon-32x32.png">
<link rel="stylesheet" href="styles.css">
<link
	href="https://fonts.googleapis.com/css2?family=Alegreya:wght@900&family=B612:wght@700&family=Vollkorn&display=swap"
	rel="stylesheet">
</head>
<body>
	<%@include file="TopNav.jsp"%>
	<div class="content links">
		<div style = "margin: 32px 120px;">
			<h2 style="text-align: center;">Feedback</h2>
			<form method="post"
				action="${pageContext.request.contextPath}/jsps/processFeedback.jsp">
				<label for="uemail"><b>Email-ID</b></label><sup>*</sup> <input
					type="text" name="uemail" /> <label for="fb"><b>Feedback</b></label><sup>*</sup><br />
				<textarea rows="6" cols="87" name="feedback"></textarea>
				<div class="warning">
					<sup>*</sup> Required Fields
				</div>
				<button type="submit">Submit</button>
			</form>

		</div>
	</div>
	<div class="content instructions">
		<div class=instruction>
			<h3 style="text-align: center;">Instructions</h3>
			<ol>
				<li>Select any subject from the home page.</li>
				<li>Select any topic from the next page.</li>
				<li>Read details carefully.</li>
				<li>Click on start test button to start the test.</li>
			</ol>
		</div>
		<div class="adminlogin">
			<a href="${pageContext.request.contextPath}/adminLogin">Admin
				Login</a>
		</div>
	</div>
</body>
</html>