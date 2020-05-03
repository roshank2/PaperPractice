<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Question</title>
<link rel="stylesheet" href="styles.css">
<link
	href="https://fonts.googleapis.com/css2?family=Alegreya:wght@900&family=B612:wght@700&family=Vollkorn&display=swap"
	rel="stylesheet">
</head>
<body>
	<form method="post" action="ProcessQuestion.jsp" >
					<table>
					<tr><td>Question:</td><td><textarea rows="3" cols="" name="question" ></textarea></td></tr>
					<tr><td>Option 1:</td><td><input type="text" name="option1" /></td></tr>	
					<tr><td>Option 2:</td><td><input type="text" name="option2" /></td></tr>
					<tr><td>Option 3:</td><td><input type="text" name="option3" /></td></tr>
					<tr><td>Option 4:</td><td><input type="text" name="option4" /></td></tr>
					<tr><td>Answer:</td><td><input type="text" name="answer" /></td></tr>	
					<tr><td>Solution:</td><td><textarea rows="4" cols="" name="solution" ></textarea></td></tr>
					<tr><td>Topic ID</td><td><input type="number" name="tid" /></td></tr>			
                    <tr><td></td><td><input type="submit" value="Next"></td></tr>
                    </table>
                     </form>
</body>
</html>