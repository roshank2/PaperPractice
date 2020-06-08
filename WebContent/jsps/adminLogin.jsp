<%
	/********************* Roshan Kumar ***********************/
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="bean.ConnectionProvider"%>
<%
	String adminid = request.getParameter("adminid");
	String pass = request.getParameter("pass");

	Connection con = ConnectionProvider.getConnection();
	ResultSet set = null;
	try {
		Statement st = con.createStatement();
		String sql = "Select * from  Admin_Login where Admin_ID ='" + adminid + "' and Password ='" + pass
				+ "'";
		set = st.executeQuery(sql);
		if (set.next()) {
			session.setAttribute("Admin", set.getString(1));
			response.sendRedirect("AdminHome.jsp");
		} else {
			request.setAttribute("alertMsg", "Invalid Admin-ID and password");
			RequestDispatcher rd = request.getRequestDispatcher("retryAdminLogin.jsp");
			rd.include(request, response);
		}
	} catch (SQLException sqe) {
		System.out.println("Error : While Fetching records from database" + sqe);
	}
	try {
		con.close();
	} catch (SQLException se) {
		System.out.println("Error : While Closing Connection");
	}
%>