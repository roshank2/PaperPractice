
<%
	/********************* Roshan Kumar ***********************/
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="bean.Exam,bean.QuizQuestion"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Test</title>
<link rel="icon" type="image/png" sizes="32x32"
	href="${pageContext.request.contextPath}/resource/favicon-32x32.png">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/styles.css">
<link
	href="https://fonts.googleapis.com/css2?family=Alegreya:wght@900&family=B612:wght@700&family=Vollkorn&display=swap"
	rel="stylesheet">
</head>
<body>
	<script>
		var tim;
		var min = '${sessionScope.min}';
		var sec = '${sessionScope.sec}';

		function customSubmit(someValue) {
			document.questionForm.minute.value = min;
			document.questionForm.second.value = sec;
			document.questionForm.submit();
		}

		function examTimer() {
			if (parseInt(sec) > 0) {

				document.getElementById("showtime").innerHTML = "Time Remaining - "
						+ min + ":" + sec;
				sec = parseInt(sec) - 1;
				tim = setTimeout("examTimer()", 1000);
			} else {

				if (parseInt(min) == 0 && parseInt(sec) == 0) {
					document.getElementById("showtime").innerHTML = "Time Remaining - "
							+ min + ":" + sec;
					alert("Time Up");
					document.questionForm.minute.value = 0;
					document.questionForm.second.value = 0;
					document.questionForm.submit();

				}

				if (parseInt(sec) == 0) {
					document.getElementById("showtime").innerHTML = "Time Remaining - "
							+ min + ":" + sec;
					min = parseInt(min) - 1;
					sec = 59;
					tim = setTimeout("examTimer()", 1000);
				}

			}
		}
	</script>
</head>
<br />

<body onload="examTimer()">

	<form action="${pageContext.request.contextPath}/exam" method="post"
		name="questionForm" class="test">
		<%
			int currentQuestion = ((Exam) request.getSession().getAttribute("currentExam")).getCurrentQuestion();
			// System.out.println("Question Number "+currentQuestion+ " retrieved ");
		%>
		<div style="background-color: #dbe2ef; padding: 20px">
			<span>Question ${sessionScope.quest.questionNumber+1}.</span> <span
				style="float: right;" id="showtime"></span>
		</div>
		<div style="margin: 32px 0 24px 108px;">${sessionScope.quest.question}</div>
		<br />
		<c:forEach var="choice" items="${sessionScope.quest.questionOptions}"
			varStatus="counter">
			<input style="margin: 10px 16px 10px 164px;" type="radio"
				name="answer" value="${counter.count}">${choice}  <br />
		</c:forEach>
		<br />


		<c:if test="${sessionScope.quest.questionNumber > 0}">
			<input
				style="margin: 24px 0 0 184px; background-color: #dbe2ef; padding: 16px;"
				type="submit" name="action" value="Previous"
				onclick="customSubmit()" />
		</c:if>

		<c:if
			test="${sessionScope.quest.questionNumber < sessionScope.totalNumberOfQuizQuestions-1}">
			<input
				style="margin: 24px 0 0 48px; background-color: #dbe2ef; padding: 16px;"
				type="submit" name="action" value="Next" onclick="customSubmit()" />
		</c:if>

		<input
			style="float: right; margin: 24px 84px 0 0; background-color: #dbe2ef; padding: 16px;"
			type="submit" name="action" value="Finish Exam"
			onclick="customSubmit()" /> <input type="hidden" name="minute" /> <input
			type="hidden" name="second" />
	</form>
</body>
</html>