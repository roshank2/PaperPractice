
<%
	/********************* Roshan Kumar ***********************/
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="bean.ConnectionProvider"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Modify Test</title>
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
		<h1 style="margin-bottom: 64px">Category</h1>
		<a class="adminLinks"
			href="${pageContext.request.contextPath}/jsps/displayTopicsAdmin.jsp?section_id=1">Reasoning</a>
		<a class="adminLinks"
			href="${pageContext.request.contextPath}/jsps/displayTopicsAdmin.jsp?section_id=2">English</a>
		<a class="adminLinks"
			href="${pageContext.request.contextPath}/jsps/displayTopicsAdmin.jsp?section_id=3">General
			Awareness</a> <a class="adminLinks"
			href="${pageContext.request.contextPath}/jsps/displayTopicsAdmin.jsp?section_id=4">Quantitative
			Aptitude</a>
	</div>
</body>
</html>