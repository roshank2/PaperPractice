<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create Test</title>
<link rel="stylesheet" href="styles.css">
<link
	href="https://fonts.googleapis.com/css2?family=Alegreya:wght@900&family=B612:wght@700&family=Vollkorn&display=swap"
	rel="stylesheet">
</head>
<body>
	<form method="post" action="ProcessTest.jsp" >
					<table>
					<tr><td>Topic Name</td><td><input type="text" name="tname" /></td></tr>
					<tr><td>Section</td><td><select name="section">
  <option value="01">General Intelligence</option>
  <option value="02">English Language</option>
  <option value="03">General Awareness</option>
  <option value="04">Quantitative Aptitude</option>
</select></td></tr>
				
                    <tr><td></td><td><input type="submit" value="Create"></td>
                     	</table>
                     </form>
</body>
</html>