<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import= "facade5.FacadeMain" %>
<html>
<head>
<link href="styleIntenal.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@ include file="HeaderMenuAdmin.html" %>
<jsp:useBean id="bean" class="bean5.EmployeeBean" /> 
<jsp:setProperty name="bean" property="flag" value="true" />
<% FacadeMain f=new FacadeMain();
	f.viewEmployee(bean);
	int length= bean.getSize();
	int i;%>
<center>
<form name="ViewEmployee" action="AdminHome.jsp">

<table>

<tr><td>Employee Id</td>
<td>Employee First Name </td>
<td>Employee Last Name </td>
<td>Contact Number </td>
<td> Email Id</td>
<td>Complaint Id </td>
</tr>
<% for(i =0; i<length; i++)
{%>
<tr><td><input type="text" value="<%=bean.getEmployeeIdAL().get(i) %>" readonly></td>
<td><input type="text" value="<%=bean.getEmployeeName1AL().get(i) %>" readonly></td>
<td><input type="text" value="<%=bean.getEmployeeName2AL().get(i) %>" readonly></td>
<td><input type="text" value="<%=bean.getEmployeeRoleAL().get(i).toString() %>" readonly></td>
<td><input type="text" value="<%=bean.getContactNumAL().get(i) %>" readonly></td>
<td><input type="text" value="<%=bean.getEmailAL().get(i) %>" readonly></td>
<td><input type="text" value="<%=bean.getComplaintIdAL().get(i) %>" readonly></td></tr>
<%} %>

<tr><td><input type="submit" value="OK" ></td></tr>
</table>
</form>
</center>

<%@ include file="FooterMainAdmin.html" %>
</body>
</html>