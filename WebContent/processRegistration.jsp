<%@page import="bean.RegisterDao"%>  
<%@ page import="java.util.*" %>

<jsp:useBean id="formHandler" class="bean.User" scope="request">
<jsp:setProperty name="formHandler" property="*"/>
</jsp:useBean>

<% 
   if (formHandler.validate()) {
%>
	<script>
<%
int st= RegisterDao.register(formHandler);
%>

var status = "<%=st%>"
	if(status>0)  
		alert("Registered successfully");
	else
		alert("Already registered with this email");
</script> 
<%
   }  else {
%>
    <jsp:forward page="retryRegistration.jsp"/>
<%
   }
%>