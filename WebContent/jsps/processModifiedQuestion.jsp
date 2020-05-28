<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="controller.adminController"%>

<%
	String question = request.getParameter("question");
	String option1 = request.getParameter("option1");
	String option2 = request.getParameter("option2");
	String option3 = request.getParameter("option3");
	String option4 = request.getParameter("option4");
	String solution = request.getParameter("solution");
	int tid = 0, answer = 0, qid = 0;

	try {
		qid = Integer.parseInt(request.getParameter("qid"));
		tid = Integer.parseInt(request.getParameter("tid"));
		answer = Integer.parseInt(request.getParameter("answer"));%>
		<script>
		<%int st = adminController.updateQuestion(qid,question, option1, option2, option3, option4, answer, solution, tid);%>
		var status = "<%=st%>"
		if (status > 0){
			alert("Question updated successfully")
		}
		else{
			alert("Error, while updating question");
		}
		window.location = "${pageContext.request.contextPath}/jsps/AdminHome.jsp";
		</script>
	<%} catch (NumberFormatException ex) {
		System.out.println(ex);
	} finally {
%><script>
	alert("Error, while updating question"); 
	window.location ="${pageContext.request.contextPath}/jsps/AdminHome.jsp";

<%
	}
%>
			
</script>