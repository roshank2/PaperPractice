
<%
	/********************* Roshan Kumar ***********************/
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="controller.adminController"%>

<%
	String email = request.getParameter("uemail");
	String feedback = request.getParameter("feedback");
	System.out.println(feedback);
%>
<script>
		<%int st = adminController.storeFeedback(email, feedback);%>
		var status = "<%=st%>"
	if (status > 0) {
		var response = confirm("Feedback added successfully")
		window.location = "${pageContext.request.contextPath}/"
	} else {
		alert("Error, while adding feedback.. Try again!!");
		window.location = "${pageContext.request.contextPath}/feedback"
	}
</script>
