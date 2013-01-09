<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="facade5.FacadeMain" %>
<html>
<head>
<link href="styleInternal.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="HeaderMenuAdmin.html" %>
<center>
<form name="AssignComplaint" action="AssignedComplaints.jsp">
<table>
<tr><td>Complaint Id :  
</td>
<td><input type="text" name="complaintId" value="<%=request.getParameter("group")%>" readonly size="5" >
to be assigned to 
</td>
<td>
<input type="text" name="employeeId" size="5" maxlengh="4" >
</td></tr>
</table>
<input type="submit" value="Assign" >
</form>
</center>

<jsp:useBean id="bean" class="bean5.PackageBean" /> 
<jsp:setProperty name="bean" property="packageName" value="<%=request.getParameter("packageName") %>" />
<%@ include file="FooterMainAdmin.html" %>
</body>
</html>