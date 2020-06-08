<%
	/********************* Roshan Kumar ***********************/
%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@page import="java.util.*"%>
<%@page import="bean.ResultList"%>
<html>
<head>
<meta charset=ISO-8859-1>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/styles.css">
<title>Result</title>
<link rel="icon" type="image/png" sizes="32x32"
	href="${pageContext.request.contextPath}/resource/favicon-32x32.png">
<link
	href="https://fonts.googleapis.com/css2?family=Alegreya:wght@900&family=B612:wght@700&family=Vollkorn&display=swap"
	rel="stylesheet">
</head>
<body>
	<%
		int wrongQuestions = 0, correctQuestions = 0, unattempted = 0;
		double totalMarks = 0;
		try {
			ResultList resultList = (ResultList) request.getAttribute("resultList");

			List<Integer> userSelectionsList = resultList.getUserSelections();
			List<Integer> correctAnswersList = resultList.getCorrectAnswers();
			for (int i = 0; i < userSelectionsList.size(); i++) {
				System.out.println(userSelectionsList.get(i) + " --- " + correctAnswersList.get(i));
				if (userSelectionsList.get(i) != -1) {
					if ((userSelectionsList.get(i)) == correctAnswersList.get(i)) {
						correctQuestions++;
					} else {
						wrongQuestions++;
					}
				} else {
					unattempted++;
				}
			}

			if (userSelectionsList.size() != 15) {
				unattempted = 15 - userSelectionsList.size() + unattempted;
			}

			totalMarks = (correctQuestions * 2) * .1 / .1 - wrongQuestions * 0.25;
		} catch (Exception e) {
			System.out.println(e);
		}
	%>
	<div style="margin-top: 32px;">
		<table class="testResult">
			<tr>
				<td colspan="2" style="background-color: #3f72af"><h1
						style="margin: 0; color: white">Test Result</h1></td>
			</tr>
			<tr>
				<td>Topic :</td>
				<td>${sessionScope.topicName}</td>
			</tr>
			<tr>
				<td>Starting Time :</td>
				<td>${sessionScope.started}</td>
			</tr>


			<tr>
				<td>No. of Questions :</td>
				<td>${sessionScope.totalNumberOfQuizQuestions}</td>
			</tr>
			<tr>
				<td>No. of correct questions :</td>
				<td><%=correctQuestions%></td>
			</tr>
			<tr>
				<td>No. of wrong questions :</td>
				<td><%=wrongQuestions%></td>
			</tr>
			<tr>
				<td>No. of unattempted questions :</td>
				<td><%=unattempted%></td>
			</tr>

			<tr>
				<td>Marks Obtained :</td>
				<td><%=totalMarks%></td>
			</tr>
			<tr>
				<td style="background-color: #f9f7f7;"><h3 align="center">
						<a href='${pageContext.request.contextPath}'>Take Another Exam</a>
					</h3></td>
				<td style="background-color: #f9f7f7;"><h3 align="center">
						<a
							href='${pageContext.request.contextPath}/jsps/solutions.jsp?topicName=<%=session.getAttribute("topicName")%>&tid=<%=session.getAttribute("topic_id")%>'>Check
							Solutions</a>
					</h3></td>
			</tr>

		</table>

	</div>

</body>
</html>