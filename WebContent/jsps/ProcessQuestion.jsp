<%
	/********************* Roshan Kumar ***********************/
%>

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
	int tid = 0, answer = 0;

	try {
		tid = Integer.parseInt(request.getParameter("tid"));
		answer = Integer.parseInt(request.getParameter("answer"));
%>
<script>
		<%int st = adminController.addQuestion(question, option1, option2, option3, option4, answer, solution,
						tid);%>
		var status = "<%=st%>"
		if (status > 0){
			var response = confirm ("Question added successfully, add another one?")
			 if (response){
				 window.location = "${pageContext.request.contextPath}/jsps/addQuestion.jsp?topic_id=<%=tid%>&tname=<%=request.getParameter("tname")%>";
			    }else{
			    	window.location = "${pageContext.request.contextPath}/jsps/AdminHome.jsp";
			    }
		}
		else{
			alert("Error, while adding question");
			window.location = "${pageContext.request.contextPath}/jsps/addQuestion.jsp?topic_id=<%=tid%>&tname=<%=request.getParameter("tname")%>";
	}
</script>
<%
	} catch (NumberFormatException ex) {
		System.out.println(ex);
	} finally {
%><script>
	alert("Error, while adding question");
	window.location = "${pageContext.request.contextPath}/jsps/AdminHome.jsp";
<%}%>
	
</script>