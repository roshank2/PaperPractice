
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
<body>
	<%
		Connection con = (Connection) ConnectionProvider.getConnection();
		int status = 0;
		try {
			Statement st = (Statement) con.createStatement();
			String sql = "delete from  question where ques_id=" + request.getParameter("ques_id");
			status = st.executeUpdate(sql);
		} catch (SQLException sqe) {
			System.out.println("Error : While Fetching records from database" + sqe);
		}
	%>
	<script type="text/javascript">
		var status = "<%=status%>
		"
		if (status > 0) {
			alert("Question deleted successfully")
		} else {
			alert("Error, while deleting question");
		}
		window.location = "${pageContext.request.contextPath}/jsps/AdminHome.jsp";
	</script>
</body>
</html>