<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="controller.adminController" %>
<!DOCTYPE html>
<html>
<body>
<script>
	<% int st = adminController.deleteTopic(request.getParameter("tname"));%>
	var status = "<%=st%>"
		if (status > 0){
			alert("Topic deleted successfully");
		}
		else{
			alert("Error, while deleting topic");
		}
	window.location = "${pageContext.request.contextPath}/jsps/AdminHome.jsp";
</script>
</body>
</html>