<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/styles.css">
<link
	href="https://fonts.googleapis.com/css2?family=Alegreya:wght@900&family=B612:wght@700&family=Vollkorn&display=swap"
	rel="stylesheet">
</head>
<body>
	<%
	
	Integer section_id=0;
	int time = 0;
	int totalQuestions = 15;
	if(request.getParameter("section_id")!=null){
		section_id = Integer.valueOf(request.getParameter("section_id"));
	}
	Integer topic_id=0;
		if(request.getParameter("topic_id")!=null){
			topic_id = Integer.valueOf(request.getParameter("topic_id"));
		}
		
		String topic_name = request.getParameter("topic_name");
		
		if(section_id==1){
			time = 10;
		}
		else if(section_id==2){
			time = 8;
		}
		else if(section_id==3){
			time = 4;
		}
		else if(section_id==4){
			time = 20;
		}
		else{
			System.out.println("invalid section");
		}
		
		request.getSession().setAttribute("totalNumberOfQuizQuestions",totalQuestions);
		request.getSession().setAttribute("topicName",topic_name);
		request.getSession().setAttribute("topic_id",topic_id);
		request.getSession().setAttribute("min",time);
		request.getSession().setAttribute("sec",0);
		
	%>
	
		<div class="details">
		<form action="${pageContext.request.contextPath}/exam" method="post" style="padding: 48px;">
			<ul>
			<li>Total number of Questions: <%=totalQuestions %></li>
			<li>Total time: <%=time %> minutes</li>
			<li>2 marks will be given for each correct answer.</li>
			<li>0.5 marks will be deducted for each incorrect answer.</li>
			<li>No marks will be given or deducted for unattempted questions</li>
		</ul>
			<input type = "hidden" name = "topic_id" value = "<%=topic_id %>" />
			<button>Start Test</button>
		</form>
		</div>
	
</body>
</html>