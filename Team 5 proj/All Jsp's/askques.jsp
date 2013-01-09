<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ page errorPage="ErrorLogin.jsp" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Answer the question</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<%@ include file="HeaderMenu.html" %>
<body>
<div id="userbck">
<script type="text/javascript" src="validation_register.js"></script>
<form name="asksecq">
<h1>Answer the question to retrive your password</h1>
<h3>Question: <%=request.getParameter("SecretQues") %></h3>
<h3>Answer</h3>
<input name="secanswer" type="text" maxlength="60" style="width:200px; border:1px solid #999999" />
<input name="Submit" align="center" value="Submit" align="center" type="button" onclick="return secques()">
</form></div></body>
</html>