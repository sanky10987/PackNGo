<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import = "facade5.FacadeMain" %>
<html>
<head>
<link href="styleInternal.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="HeaderMenuAdmin.html" %>
<jsp:useBean id="bean" class="bean5.EmployeeBean" /> 
<jsp:setProperty name="bean" property="employeeId" value="<%=Integer.parseInt(request.getParameter("employeeId")) %>" />
<% FacadeMain f = new FacadeMain();

f.EmployeeEdit(bean);

	if(bean.isFlag() == true)
{%>
<center>
<b>Please edit the Details: </b>
<form name="EditedEmployee" action="EditedEmployeeJsp.jsp" >
<table>
<tr><td>Employee id: </td><td>
<input type="text" name="employeeId" value="<jsp:getProperty name="bean" property="employeeId" />" readonly></td></tr>
<tr><td>Employee First Name: </td><td>
<input type="text" name="employeeName1" value="<jsp:getProperty name="bean" property="employeeName1" />" maxlength="15" size="30"></td></tr>
<tr><td>Employee Last Name: </td><td>
<input type="text" name="employeeName2" value="<jsp:getProperty name="bean" property="employeeName2" />" maxlength="15" size="30"></td></tr>
<tr><td>Employee Role: </td><td>
<input type="text" name="employeeRole" value="<jsp:getProperty name="bean" property="employeeRole" />" maxlength="13" size="30"></td></tr>
<tr><td>Contact Number: </td><td>
<input type="text" name="contactNum" value="<jsp:getProperty name="bean" property="contactNum" />" maxlength="15" size="30"></td></tr>
<tr><td>E-Mail: </td><td>
<input type="text" name ="email" value="<jsp:getProperty name="bean" property="email" />" maxlength="30" size="30"></td></tr>
<tr><td>Assigned Complaint Id: </td><td>
<input type="text" name="complaintId" value="<jsp:getProperty name="bean" property="complaintId" />" maxlength="5" size="30"></td></tr>
</table>
<input type ="submit" value="EDIT" >
</form>
<%} 
	else
{%>
	<script> alert("Enter a valid EmployeeId");
	window.location="EditEmployee.html";</script>

<%} %>
</center>
<%@ include file="FooterMainEmp.html" %>
</body>
</html>