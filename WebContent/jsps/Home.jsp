<%
	/********************* Roshan Kumar ***********************/
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<link rel="icon" type="image/png" sizes="32x32"
	href="${pageContext.request.contextPath}/resource/favicon-32x32.png">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/styles.css">
<link
	href="https://fonts.googleapis.com/css2?family=Alegreya:wght@900&family=B612:wght@700&family=Vollkorn&display=swap"
	rel="stylesheet">
</head>
<body>

	<%@ include file="TopNav.jsp"%>

	<div class="content links">
		<table class="userHomeTable">
			<tr>
				<td><a
					href="${pageContext.request.contextPath}/jsps/displayTopicUser.jsp?section_id=1"><img
						src="${pageContext.request.contextPath}/resource/GI.jpg"
						alt="Reasoning"><br />Reasoning</a></td>
				<td><a
					href="${pageContext.request.contextPath}/jsps/displayTopicUser.jsp?section_id=2"><img
						src="${pageContext.request.contextPath}/resource/EL.jpg"
						alt="English"><br />English</a></td>
			</tr>
			<tr>
				<td><a
					href="${pageContext.request.contextPath}/jsps/displayTopicUser.jsp?section_id=3"><img
						src="${pageContext.request.contextPath}/resource/GA.png"
						alt="General Awareness"><br />General Awareness</a></td>
				<td><a
					href="${pageContext.request.contextPath}/jsps/displayTopicUser.jsp?section_id=4"><img
						src="${pageContext.request.contextPath}/resource/QA.jpg"
						alt="Quantitative Aptitude"><br />Quantitative Aptitude</a></td>
			</tr>
		</table>
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