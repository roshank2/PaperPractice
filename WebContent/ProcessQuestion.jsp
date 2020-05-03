<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*" %>
<%@page import="bean.ConnectionProvider" %>
<%
	String question=request.getParameter("question");
	String option1=request.getParameter("option1");
	String option2=request.getParameter("option2");
	String option3=request.getParameter("option3");
	String option4=request.getParameter("option4");
	int answer = Integer.parseInt(request.getParameter("answer"));
	String solution=request.getParameter("solution");
	Integer tid = (request.getParameter("tid") != null) ? Integer.parseInt(request.getParameter("tid")) : null;
	System.out.println("Yes");
	
	try{  
		Connection con=ConnectionProvider.getConnection();  

		PreparedStatement ps=con.prepareStatement("insert into question values(?,?,?,?,?,?,?,?,?,?)");
		ps.setString(1, null);
		ps.setString(2,question);
		ps.setString(3,option1);
		ps.setString(4,option2);
		ps.setString(5,option3);
		ps.setString(6,option4);
		ps.setInt(7, answer);
		ps.setString(8,null);
		ps.setString(9,solution);
		ps.setInt(10, tid);
		              
		ps.executeUpdate(); 
		System.out.println("Yes");
		}catch(Exception e){e.printStackTrace();
		System.out.println("NO");
		}
%>
<jsp:forward page="question.jsp"></jsp:forward>