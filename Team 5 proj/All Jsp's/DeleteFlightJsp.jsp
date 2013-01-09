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
<%@ include file="HeaderMenuEmp.html" %>
<jsp:useBean id="bean" class="bean5.FlightBean" /> 
<jsp:setProperty name="bean" property="flightName" value="<%=request.getParameter("flightName") %>" />
<% FacadeMain f= new FacadeMain();
f.FlightDelete(bean);

System.out.println("jsp"+bean.isFlagDate());
System.out.println("jsp"+bean.isFlagFlight());
	if( bean.isFlagFlight()== true)	//bean.isFlagDate() ==true &&
	{%><h2> Flight Successfully Deleted !</h2>
	<%} 
	else if( bean.isFlagFlight()== false)	//bean.isFlagDate() == false &&
	{%><h2> Flight Name does not exist !</h2>
	<%} %>
<p> Go back to <a href="AdminHome.jsp">HOMEPAGE</a>
	
<jsp:getProperty name="bean" property="flagFlight"/>
<%@ include file="FooterMainEmp.html" %>
</body>
</html>