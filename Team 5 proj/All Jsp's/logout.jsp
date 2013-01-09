

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Logged Out</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
<div id="userbck">
<h1>You have been logged out successfully</h1>
<%if(session.getAttribute("uName")==null)
{
response.sendRedirect("userlogin.jsp");
} %>
<%session.invalidate(); %>

<h4><a href="userlogin.jsp">Go back to Login page</h4>
</div>
</body>
</html>