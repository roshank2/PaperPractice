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
	<div style="margin: 32px 384px;">
		<h1 style="text-align: center; margin: 84px 0 56px 0;">Modify - Select Topic</h1>
		<%
			Connection con = (Connection) ConnectionProvider.getConnection();

			int section_id = Integer.parseInt(request.getParameter("section_id"));

			int i = 1;
			ResultSet set = null;
			try {
				Statement st = (Statement) con.createStatement();
				String sql = "Select * from  topic where section_id=" + section_id;
				set = st.executeQuery(sql);
				while (set.next()) {
		%>
		<b><%=i%>.&nbsp;</b> <a
			href="${pageContext.request.contextPath}/jsps/question.jsp?tname=<%=set.getString("topic_Name")%>"><%=set.getString("topic_name")%></a><br />
		<%
			i++;
		%>
		<%
			}

			} catch (SQLException sqe) {
				System.out.println("Error : While Fetching records from database" + sqe);
			}
		%>
	</div>
</body>
</html>