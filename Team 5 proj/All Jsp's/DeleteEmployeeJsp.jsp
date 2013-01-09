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
<jsp:setProperty name="bean" property="employeeId" value="<%=Integer.parseInt(request.getParameter("employeeId")) %>" />
<% FacadeMain f= new FacadeMain();
f.EmployeeDelete(bean);
boolean flag1 = bean.isFlag();
System.out.println(flag1);
	
	if(bean.isFlag() ==true)
	{%>
	<h2> Employee details Successfully Deleted !</h2>
	<%} 
	else if(bean.isFlag()==false)
	{%>
	 <script>alert('Please check the Employee Id you entered');
	 window.location="DeleteEmployee.jsp ";
	 </script>
	<%} %>
	<p> Go back to <a href="AdminHome.jsp">HOMEPAGE</a>
		
<jsp:getProperty name="bean" property="flag"/>
<%@ include file="FooterMainAdmin.html" %>
</body>
</html>