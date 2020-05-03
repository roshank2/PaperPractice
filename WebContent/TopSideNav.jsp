<!DOCTYPE html>
<html>
<body>
	<h1>PaperPractice</h1>
	
<div class="topnav">
  <a href="index.jsp">Home</a>
  <a href="StartTest.jsp">Start Test</a>
  <a href="Feedback.jsp">Feedback</a>
  <a href="About.jsp">About</a>
  
  <%
  	if(session.getAttribute("user")==null){
  		%>
  		<div class="topnav-right">
  	    <a href="userLoginForm.html">Login</a>
  	    <a href="UserRegistration.html">Register</a>
  	  	</div>
  	<%}
  
  	else{%>
  		<div class="topnav-right">
  		Welcome <%out.print(session.getAttribute("user"));%>
  	  	</div>
  		
  	<%}
  %>
  
</div>

<div class="sidenav">
  <a href="GenIn.jsp">General Intelligence</a>
  <a href="EnLan.jsp">English Language</a>
  <a href="GenAwar.jsp">General Awareness</a>
  <a href="Quant.jsp">Quantitative Aptitude</a>
  <div class="bottomsidenav">
  	<a href="adminLoginForm.jsp">Admin Login</a>
  </div>
</div>
</body>
</html>