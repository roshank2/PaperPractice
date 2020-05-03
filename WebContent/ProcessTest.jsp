<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*" %>
<%@page import="bean.ConnectionProvider" %>
<%
	String tname=request.getParameter("tname");
	Integer section = (request.getParameter("section") != null) ? Integer.parseInt(request.getParameter("section")) : null;
	//System.out.println("Yes");
	try{  
		Connection con=ConnectionProvider.getConnection();  

		PreparedStatement ps=con.prepareStatement("insert into topic values(?,?,?)");
		ps.setString(1, null);
		ps.setString(2,tname);  
		ps.setInt(3, section);
		//System.out.println("Yes");
		              
		ps.executeUpdate();  
		}catch(Exception e){
			e.printStackTrace();
			//System.out.println("No");
		}
%>
<jsp:forward page="question.jsp"></jsp:forward>