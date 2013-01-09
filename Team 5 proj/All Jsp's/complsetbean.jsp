<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="facade5.FacadeMain" %>
    <%@ page errorPage="ErrorLogin.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Complaint set bean jsp</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<%@ include file="HeaderMenu.html" %>
<body>
<div id="userbck">
<jsp:useBean id="beancompl" class="bean5.Beancomplaint" />
<jsp:setProperty name="beancompl" property="complType" value="<%=request.getParameter("ctype")%>"/>
<jsp:setProperty name="beancompl" property="complDesc" value="<%=request.getParameter("compldesc")%>"/>

<% 
String userid=session.getAttribute("userId").toString();
int user_id=Integer.parseInt(userid);%>
<jsp:useBean id="idbean" class="bean5.userlogin"/>
<jsp:setProperty name="idbean" property="userId" value="<%=user_id%>" />

<%
FacadeMain fcom= new FacadeMain();
fcom.complaintdb(beancompl,idbean);
%>

<h1>Thank you for helping us serve you better.</h1> <p><h2>We will get back to you soon with the solution</h2></p>
<a href="usersethome.jsp"> To go back to home click here</a>
</div>
</body>

</html>