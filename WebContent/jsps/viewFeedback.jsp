<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<%@page import="java.util.*" %>
<%@page import="bean.ConnectionProvider" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Feedback</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/styles.css">
<link
	href="https://fonts.googleapis.com/css2?family=Alegreya:wght@900&family=B612:wght@700&family=Vollkorn&display=swap"
	rel="stylesheet">
</head>
<body style="padding-top: 48px;">
<table class="fixed">
<colgroup>
	<col width="10%">
	<col width="28%">
	<col width="40%">
	<col width="22%">
</colgroup>

<tr><td colspan="4" style="background-color: #3f72af"><h1 style="margin: 0; color: white">User's Feedback</h1></td></tr>
<tr>

<td style = "text-align: center">Sr. No.</td>
<td style = "text-align: center">Email-id</td>
<td style = "text-align: center">Feedback</td>
<td style = "text-align: center">Date Added</td>
</tr>
<%
	Connection con=(Connection) ConnectionProvider.getConnection();
	int i=1;
	ResultSet set=null;
			try
			{
			 Statement st=(Statement) con.createStatement();
			 String sql = "Select * from  feedback";
			 set=st.executeQuery(sql);
			 while(set.next())
			 {%>
			 <tr>
			 	<td style = "text-align: center"><%=i%></td><td><%=set.getString("Email_ID") %></td>
			 	<td><%=set.getString("Fb_Description") %></td>
			 	<td style = "text-align: center"><%=set.getTimestamp("Date_added") %></td>
			 	
			 	<%i++;%>
			 	</tr>
			 <%}
			 
			}catch(SQLException sqe){System.out.println("Error : While Fetching records from database" + sqe);}
		%>
</table>
</body>
</html>