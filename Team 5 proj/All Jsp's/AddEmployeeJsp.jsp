<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="facade5.FacadeMain" %>
<html>
<head>
<link href="style.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="HeaderMenuAdmin.html" %>
<jsp:useBean id="bean" class="bean5.EmployeeBean" /> 
<jsp:setProperty name="bean" property="employeeName1" value="<%=request.getParameter("employeeName1") %>" />
<jsp:setProperty name="bean" property="employeeName2" value="<%=request.getParameter("employeeName2") %>" />
<jsp:setProperty name="bean" property="employeeRole" value="<%=request.getParameter("employeeRole") %>" />
<jsp:setProperty name="bean" property="contactNum" value="<%=Long.parseLong(request.getParameter("contactNum")) %>" />
<jsp:setProperty name="bean" property="email" value="<%=request.getParameter("email") %>" />
<jsp:setProperty name="bean" property="complaintId" value="<%=Integer.parseInt(request.getParameter("complaintId")) %>" />
<%
FacadeMain f= new FacadeMain();
f.EmployeeCatch(bean);
%>
<center>
<b>Details of the added Employee</b>
<form name="AddEmployee" action="AdminHome.jsp">
<table>

<tr><td>Employee id: </td><td>
<input type="text" value="<jsp:getProperty name="bean" property="employeeId"/>" readonly></td></tr>
<tr><td>Employee First Name: </td><td>
<input type="text" value="<jsp:getProperty name="bean" property="employeeName1"/>" readonly></td></tr>
<tr><td>Employee Last Name: </td><td>
<input type="text" value="<jsp:getProperty name="bean" property="employeeName2"/>" readonly></td></tr>
<tr><td>Employee Role: </td><td>
<input type="text" value="<jsp:getProperty name="bean" property="employeeRole"/>" readonly></td></tr>
<tr><td>Contact Number: </td><td>
<input type="text" value="<jsp:getProperty name="bean" property="contactNum"/>" readonly></td></tr>
<tr><td>Email Id: </td><td>
<input type="text" value="<jsp:getProperty name="bean" property="email"/>" readonly></td></tr>
<tr><td>Complaint Id: </td><td>
<input type="text" value="<jsp:getProperty name="bean" property="complaintId"/>" readonly></td></tr>
</table>
<input type ="submit" value="OK" >
</form>
</center>
<%@ include file="FooterMainAdmin.html" %>
</body>
</html>