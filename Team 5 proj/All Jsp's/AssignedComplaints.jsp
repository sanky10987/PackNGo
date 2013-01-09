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
<%@ include file="HeaderMenu.html" %>
<jsp:useBean id="bean" class="bean5.EmployeeBean" /> 
<jsp:setProperty name="bean" property="employeeId" value="<%=Integer.parseInt(request.getParameter("employeeId")) %>" />
<jsp:setProperty name="bean" property="complaintId" value="<%=Integer.parseInt(request.getParameter("complaintId")) %>" />
<%System.out.println(bean.getEmployeeId()); 
FacadeMain f = new FacadeMain();
f.AssignComplaint(bean);

	if(bean.isFlag() == true)
	{%><h2> The Complaint was successfully assigned !</h2>
	<%} 
	else if(bean.isFlag() ==false)
	{%><h2> Failed to update !</h2>
	<%} %>
	<p> Go back to <a href="AdminHome.jsp">HOMEPAGE</a>
	<%@ include file="FooterMainAdmin.html" %>
	
</body>
</html>