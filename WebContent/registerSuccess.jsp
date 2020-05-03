<%@page import="bean.RegisterDao"%>  
<jsp:useBean id="obj" class="bean.User"/>  
  
<jsp:setProperty property="*" name="obj"/>  
<script>
<%
int st= RegisterDao.register(obj);
%>

var status = "<%=st%>"
	if(status>0)  
		alert("Registered successfully");
	else
		alert("Already registered with this email");
</script> 