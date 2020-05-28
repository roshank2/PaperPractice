<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*" %>
<%@page import="bean.ConnectionProvider" %>
<%
	String email=request.getParameter("uemail");
	String password=request.getParameter("upass");	
	
	Connection con=ConnectionProvider.getConnection();		
	ResultSet set=null;
	try
	{
	 Statement st=con.createStatement();
	 String sql = "Select * from  User_Registration where Email_ID ='"+email+"' and Password ='"+password+"'";
	 set=st.executeQuery(sql);
	 if(set.next())
	 { 
	     session.setAttribute("user",set.getString(1));
	     RequestDispatcher dispatcher = request
					.getRequestDispatcher("/jsps/Home.jsp");
			dispatcher.forward(request, response);
	 }
	 else
	 {   
		 request.setAttribute("alertMsg", "Invalid email-id and password");
		 RequestDispatcher rd=request.getRequestDispatcher("/jsps/retryLogin.jsp");  
		 rd.include(request, response);
	 }
	}catch(SQLException sqe){System.out.println("Error : While Fetching records from database" + sqe);}
	try
	{
	 con.close();	
	}catch(SQLException se){System.out.println("Error : While Closing Connection");
	}
%>