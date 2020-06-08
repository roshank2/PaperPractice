<%
	/********************* Roshan Kumar ***********************/
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Question</title>
<link rel="icon" type="image/png" sizes="32x32"
	href="${pageContext.request.contextPath}/resource/favicon-32x32.png">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/styles.css">
<link
	href="https://fonts.googleapis.com/css2?family=Alegreya:wght@900&family=B612:wght@700&family=Vollkorn&display=swap"
	rel="stylesheet">
</head>
<body>
	<form class="addQuestion" method="post"
		action="${pageContext.request.contextPath}/jsps/ProcessQuestion.jsp">
		<h1>
			<%=request.getParameter("tname")%></h1>
		<table>
			<tr>
				<td>Question:</td>
				<td colspan="3"><textarea rows="4" cols="108" name="question"></textarea></td>
			</tr>
			<tr>
				<td>Option 1:</td>
				<td><input type="text" name="option1" /></td>
				<td>Option 2:</td>
				<td><input type="text" name="option2" /></td>
			</tr>
			<tr>
				<td>Option 3:</td>
				<td><input type="text" name="option3" /></td>
				<td>Option 4:</td>
				<td><input type="text" name="option4" /></td>
			</tr>
			<tr>
				<td>Answer:</td>
				<td><input type="text" name="answer" /></td>
				<td>Solution:</td>
				<td rowspan="2"><textarea rows="7" cols="24" name="solution"></textarea></td>
			</tr>
			<tr>
				<td></td>
				<td><button type="submit">Add</button></td>
			</tr>
		</table>
		<input type="hidden" name="tid"
			value="<%=request.getParameter("topic_id")%>" /> <input
			type="hidden" name="tname" value="<%=request.getParameter("tname")%>" />
	</form>
</body>
</html>