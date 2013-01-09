<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="style.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Logout Internal</title>
</head>
<body>
<%
session.invalidate();
%>
<jsp:forward page="LoginInternal.html" >
<jsp:param name="" value="" />
</jsp:forward>
</body>
</html>