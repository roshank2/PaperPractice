<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="controller.adminController" %>
<%
	String tname=request.getParameter("tname");
	Integer section = (request.getParameter("section") != null) ? Integer.parseInt(request.getParameter("section")) : null;
%>
<script>
	<%int st = adminController.processTest(tname,section);%>
	var status = "<%=st%>"
	if (status > 0){
		alert("Topic added successfully");
		window.location = "${pageContext.request.contextPath}/jsps/question.jsp?tname=<%=tname%>";
	}
	else{
		alert("Error, while adding topic");
		window.location = "${pageContext.request.contextPath}/jsps/createTestForm.jsp";
	}
</script>