<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<%@page import="java.util.*" %>
<%@page import="bean.ConnectionProvider" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Select Topic</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/styles.css">
<link
	href="https://fonts.googleapis.com/css2?family=Alegreya:wght@900&family=B612:wght@700&family=Vollkorn&display=swap"
	rel="stylesheet">
</head>
<body>
	<%@include file="TopNav.jsp" %>
	<%
		int section_id = Integer.parseInt(request.getParameter("section_id"));
		String sectionName = null;
		
		if(section_id == 1){
			sectionName = "General Intelligence & Reasoning";
		}
		if(section_id == 2){
			sectionName = "English Language";
		}
		if(section_id == 3){
			sectionName = "General Awareness";
		}
		if(section_id == 4){
			sectionName = "Quantitative Aptitude";
		}
	%>
	<div class="content links">
	<div class="topicList">
	<h2 style = "text-align: center;"><%=sectionName %></h2>
	<%
	Connection con=(Connection) ConnectionProvider.getConnection();
	int i=1;
	ResultSet set=null;
			try
			{
			 Statement st=(Statement) con.createStatement();
			 String sql = "Select * from  topic where section_id="+section_id;
			 set=st.executeQuery(sql);
			 while(set.next())
			 {%>
			 	<b><%=i%>.&nbsp;</b> <a href="${pageContext.request.contextPath}/takeExam?section_id=<%=set.getInt("section_id")%>&topic_id=<%=set.getInt("topic_id")%>&topic_name=<%=set.getString("topic_Name")%>"><%=set.getString("topic_name")%></a><br/>
			 	<%i++;%>
			 <%}
			 
			}catch(SQLException sqe){System.out.println("Error : While Fetching records from database" + sqe);}
		%>
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
		  	<a href="${pageContext.request.contextPath}/adminLogin">Admin Login</a>
		  </div>
	</div>
</body>
</html>