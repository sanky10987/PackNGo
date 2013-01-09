<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%@page import="facade5.FacadeMain" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Forgot password</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<%@ include file="HeaderMenu.html" %>
<body>

<div id="userbck">
<jsp:useBean id="forgotbean" class="bean5.beanforgotp" />
<jsp:setProperty name="forgotbean" property="email" value="<%=request.getParameter("email")%>"/>

<%
FacadeMain dbforgot=new FacadeMain();
dbforgot.forgot(forgotbean);
String secques=forgotbean.getSecQues();
%>
<jsp:forward page="askques.jsp">
<jsp:param name="SecretQues" value="<%=secques%>"/>
</jsp:forward>
</div>
</body>
</html>