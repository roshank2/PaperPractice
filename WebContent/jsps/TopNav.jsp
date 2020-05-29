
<%
	/********************* Roshan Kumar ***********************/
%>

<!DOCTYPE html>
<html>
<body>
	<h1>PaperPractice</h1>

	<div class="topnav">
		<a href="${pageContext.request.contextPath}/">Home</a> <a
			href="${pageContext.request.contextPath}/feedback">Feedback</a> <a
			href="${pageContext.request.contextPath}/about">About</a>

		<%
			if (session.getAttribute("user") == null) {
		%>
		<div class="topnav-right">
			<a href="${pageContext.request.contextPath}/login">Login</a> <a
				href="${pageContext.request.contextPath}/register">Register</a>
		</div>
		<%
			}

			else {
		%>
		<div class="topnav-right">
			<a href="${pageContext.request.contextPath}/logout">Logout</a> <span
				class="wlcm">Welcome <%
 	out.print(session.getAttribute("user"));
 %></span>
		</div>

		<%
			}
		%>

	</div>
</body>
</html>