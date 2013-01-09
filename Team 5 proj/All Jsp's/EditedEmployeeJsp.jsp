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

<jsp:useBean id="bean" class="bean5.EmployeeBean" />
<jsp:setProperty name="bean" property="employeeId" value="<%=Integer.parseInt(request.getParameter("employeeId"))%>" />
<jsp:setProperty name="bean" property="employeeName1" value="<%=request.getParameter("employeeName1")%>" />
<jsp:setProperty name="bean" property="employeeName2" value="<%=request.getParameter("employeeName2")%>" />
<jsp:setProperty name="bean" property="employeeRole" value="<%=request.getParameter("employeeRole")%>" />
<jsp:setProperty name="bean" property="email" value="<%=request.getParameter("email")%>" />
<jsp:setProperty name="bean" property="contactNum" value="<%=Integer.parseInt(request.getParameter("contactNum"))%>" />
<jsp:setProperty name="bean" property="complaintId" value="<%=Integer.parseInt(request.getParameter("complaintId"))%>" />

<%FacadeMain f= new FacadeMain();
f.EmployeeEditCatch(bean);
System.out.println(bean.getEmployeeId()); 
%>

<h2> Employee Details edited successfully....</h2>
<br>
<h2>Go back to <a href="AdminHome.html">HOMEPAGE</a>!</h2>
<jsp:getProperty name="bean" property="employeeName1" />
<jsp:getProperty name="bean" property="employeeName2" />
<jsp:getProperty name="bean" property="employeeRole" />
<jsp:getProperty name="bean" property="contactNum" />
<jsp:getProperty name="bean" property="complaintId" />
<%@ include file="FooterMainAdmin.html" %>
</body>
</html>