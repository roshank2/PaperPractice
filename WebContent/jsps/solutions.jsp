<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@page import="java.sql.*"%>
<%@page import="java.util.*" %>
<%@page import="bean.ConnectionProvider" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="${pageContext.request.contextPath}/styles.css">
<title>Solutions</title>
<link
	href="https://fonts.googleapis.com/css2?family=Alegreya:wght@900&family=B612:wght@700&family=Vollkorn&display=swap"
	rel="stylesheet">
</head>
</head>
<body>
	<h1><%=request.getParameter("topicName") %></h1>
	<%
	Connection con=(Connection) ConnectionProvider.getConnection();
	int i=1;
	ResultSet set=null;
			try
			{
			 Statement st=(Statement) con.createStatement();
			 String sql = "Select * from  question where topic_id="+ request.getParameter("tid");
			 set=st.executeQuery(sql);
			 while(set.next())
			 {%>
			 	<form style="padding: 20px 64px">
			 	<b>Question <%=i%>: &nbsp;</b><%=set.getString("question") %><br/>
			 	<b>Solution: </b> <%=set.getString("solution") %><br/><br/>
			 	<%i++; %>
			 	</form>
			 <%}
			 }catch(SQLException sqe){System.out.println("Error : While Fetching records from database" + sqe);}
		%>
</body>
</html>