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
<form class="addQuestion" method="post" action="${pageContext.request.contextPath}/jsps/processModifiedQuestion.jsp" >
		<h1> <%=request.getParameter("tname") %></h1>
	<%
	Connection con=(Connection) ConnectionProvider.getConnection();
	int i=1;
	ResultSet set=null;
			try
			{
			 Statement st=(Statement) con.createStatement();
			 String sql = "Select * from  question where ques_id="+ request.getParameter("ques_id");
			 set=st.executeQuery(sql);
			 if(set.next())
			 {%>
			 	<table>
					<tr><td>Question:</td><td colspan="3"><textarea rows="4" cols="108" name="question"><%=set.getString("question")%></textarea></td></tr>
					<tr><td>Option 1:</td><td><input type="text" name="option1" value="<%=set.getString("option1")%>"/></td>
					<td>Option 2:</td><td><input type="text" name="option2" value="<%=set.getString("option2")%>" /></td></tr>
					<tr><td>Option 3:</td><td><input type="text" name="option3" value="<%=set.getString("option3")%>" /></td>
					<td>Option 4:</td><td><input type="text" name="option4" value="<%=set.getString("option4")%>"/></td></tr>
					<tr><td>Answer:</td><td><input type="text" name="answer" value="<%=set.getInt("correct_ans")%>"/></td>	
					<td>Solution:</td><td rowspan="2"><textarea rows="7" cols="24" name="solution" ><%=set.getString("solution")%></textarea></td></tr>			
                    <tr><td></td><td><button type="submit">Update</button></td></tr>
                    </table>
			 <%}
			}catch(SQLException sqe){System.out.println("Error : While Fetching records from database" + sqe);}
		%>
                    <input type="hidden" name="tid" value="<%=request.getParameter("topic_id")%>"/>
                    <input type="hidden" name="qid" value="<%=request.getParameter("ques_id") %>"/>
                     </form>
</body>
</html>