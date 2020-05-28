<%@page import="controller.RegisterController"%>
<%@ page import="java.util.*"%>

<jsp:useBean id="formHandler" class="bean.User" scope="request">
	<jsp:setProperty name="formHandler" property="*" />
</jsp:useBean>

<%
	if (formHandler.validate()) {
%>
<script>
<%int st = RegisterController.register(formHandler);%>

var status = "<%=st%>"
	if (status > 0)
		alert("Registered successfully, you can  login now!");
	else
		alert("Already registered with this email");
	window.location = "${pageContext.request.contextPath}/";
</script>
<%
	} else {
%>
<jsp:forward page="retryRegistration.jsp" />
<%
	}
%>