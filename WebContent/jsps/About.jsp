<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About</title>
<link rel="stylesheet" href="styles.css">
<link
	href="https://fonts.googleapis.com/css2?family=Alegreya:wght@900&family=B612:wght@700&family=Vollkorn&display=swap"
	rel="stylesheet">
</head>
<body>
	<%@include file="TopNav.jsp"%>
	<div class="content links">
		<div class="topicList">
			<h2 style="text-align: center;">About</h2>
			<p align="justify">PaperPractice is an online website where
				students can practice previous year topic wise questions in a
				certain time. This website focuses on aspirants, preparing for SSC
				(Staff Selection Commission) examinations like SSC CGL, CHSL, CPO
				etc. The syllabus is quite similar in all SSC examinations with a
				slight difference or change in exam pattern. There are four sections
				viz. General Intelligence and Reasoning, General Awareness, English
				Language and Quantitative Aptitude.</p>

			<p align="justify">As we all know, previous year question papers
				play a vital role in any examination. So, in this website, questions
				are picked from previous year question papers and are organised by
				topic. They are presented to the students in the form MCQ (Multiple
				Choice Questions) test, giving them a feel that they are sitting in
				a real examination. There is a time limit in which a student has to
				complete the given test. There is an importance of time limit. SSC
				examinations are not only about accuracy but also number of
				questions attempted in the given time with utmost accuracy.</p>
		</div>
	</div>
	<div class="content instructions">
		<div class=instruction>
			<h3 style="text-align: center;">Instructions</h3>
			<ol>
				<li>Select any subject from the home page.</li>
				<li>Select any topic from the next page.</li>
				<li>Read details carefully.</li>
				<li>Click on start test button to start the test.</li>
			</ol>
		</div>
		<div class="adminlogin">
			<a href="${pageContext.request.contextPath}/adminLogin">Admin
				Login</a>
		</div>
	</div>
</body>
</html>