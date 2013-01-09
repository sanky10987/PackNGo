<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="styleIntenal.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="HeaderMenuAdmin.html" %>
<div id="search" >
			<p class="style1"><b>EMPLOYEE OPTIONS :</b></p>
	
			<p><strong><a href="ViewEmployee.jsp">View a Detailed List of All The Employees</a></strong></p><br>
			<p><strong><a href="AddEmployee.jsp">Add Employee Details</a></strong></p><br>
			<p><strong><a href="EditEmployee.jsp">Edit Employee Details</a></strong></p><br>
			<p><strong><a href="DeleteEmployee.jsp">Delete Employee Details</a></strong></p><br>
			
	</div>
<%@ include file="FooterMainAdmin.html" %>
</body>
</html>