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
<jsp:useBean id="bean" class="bean5.HotelBean" /> 
<jsp:setProperty name="bean" property="hotelId" value="<%=Integer.parseInt(request.getParameter("hotelId")) %>" />
<% FacadeMain f= new FacadeMain();

f.HotelDelete(bean);
boolean flag1 = bean.isFlag();
System.out.println(flag1);
	
	if(flag1 ==true)
	{%><h2> Hotel Successfully Deleted !</h2>
	<%} 
	else if(flag1==false)
	{%><h2> Hotel ID does not exist !</h2>
	<%} %>
	<p> Go back to <a href="AdminHome.jsp">HOMEPAGE</a>
		
<jsp:getProperty name="bean" property="flag"/>
<%@ include file="FooterMainEmp.html" %>
</body>
</html>