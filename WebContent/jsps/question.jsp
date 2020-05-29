
<%
	/********************* Roshan Kumar ***********************/
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="controller.adminController"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title><%=request.getParameter("tname")%></title>
<link rel="icon" type="image/png" sizes="32x32"
	href="${pageContext.request.contextPath}/resource/favicon-32x32.png">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/styles.css">
<link
	href="https://fonts.googleapis.com/css2?family=Alegreya:wght@900&family=B612:wght@700&family=Vollkorn&display=swap"
	rel="stylesheet">
</head>
<body>
	<%
		int tid = adminController.getTopicId(request.getParameter("tname"));
		System.out.println(request.getParameter("tname"));
		String modify = "modify";
		String delete = "delete";
	%>
	<div class="adminHome">
		<h1 style="margin-bottom: 64px">
			<%=request.getParameter("tname")%></h1>
		<a class="adminLinks"
			href="${pageContext.request.contextPath}/jsps/addQuestion.jsp?topic_id=<%=tid%>&tname=<%=request.getParameter("tname") %>">Add
			Question</a> <a class="adminLinks"
			href="${pageContext.request.contextPath}/jsps/displayQuestions.jsp?act=<%=modify%>&topic_id=<%=tid%>&tname=<%=request.getParameter("tname") %>">Modify
			Question</a> <a class="adminLinks"
			href="${pageContext.request.contextPath}/jsps/displayQuestions.jsp?act=<%=delete%>&topic_id=<%=tid%>&tname=<%=request.getParameter("tname") %>">Delete
			Question</a>
	</div>
</body>
</html>