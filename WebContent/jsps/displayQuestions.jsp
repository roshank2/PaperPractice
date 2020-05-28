<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<%@page import="java.util.*" %>
<%@page import="bean.ConnectionProvider" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Modify Question</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/styles.css">
<link
	href="https://fonts.googleapis.com/css2?family=Alegreya:wght@900&family=B612:wght@700&family=Vollkorn&display=swap"
	rel="stylesheet">
</head>
<body>
<h1><%=request.getParameter("tname") %></h1>
<div class = "topicList">
<%
	Connection con=(Connection) ConnectionProvider.getConnection();
	int i=1;
	ResultSet set=null;
			try
			{
			 Statement st=(Statement) con.createStatement();
			 String sql = "Select * from  question where topic_id="+ request.getParameter("topic_id");
			 set=st.executeQuery(sql);
			 if(request.getParameter("act").equals("modify")){
			 while(set.next())
			 {%>
			 	<b><%=i%>. &nbsp;</b><a href="${pageContext.request.contextPath}/jsps/modifyQuestion.jsp?topic_id=<%=request.getParameter("topic_id")%>&ques_id=<%=set.getInt("ques_id")%>&tname=<%=request.getParameter("tname") %>"><%=set.getString("question") %></a><br/>
			 	<%i++; %>
			 <%}
			 }
			 if(request.getParameter("act").equals("delete")){
				 while(set.next())
				 {%>
				 	<b><%=i%>. &nbsp;</b><a href="${pageContext.request.contextPath}/jsps/deleteQuestion.jsp?ques_id=<%=set.getInt("ques_id")%>"><%=set.getString("question") %></a><br/>
				 	<%i++; %>
				 <%}
				 }

			}catch(SQLException sqe){System.out.println("Error : While Fetching records from database" + sqe);}
		%>
		</div>
</body>
</html>