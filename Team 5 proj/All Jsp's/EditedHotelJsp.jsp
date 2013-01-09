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
<jsp:setProperty name="bean" property="hotelName" value="<%=request.getParameter("hotelName") %>" />
<jsp:setProperty name="bean" property="description" value="<%=request.getParameter("description") %>" />
<jsp:setProperty name="bean" property="location" value="<%=request.getParameter("location") %>" />
<jsp:setProperty name="bean" property="rating" value="<%=Integer.parseInt(request.getParameter("rating")) %>" />
<jsp:setProperty name="bean" property="roomType" value="<%=request.getParameter("roomType") %>" />
<jsp:setProperty name="bean" property="costPerRoom" value="<%=Integer.parseInt(request.getParameter("costPerRoom")) %>" />

<%
FacadeMain f= new FacadeMain();
f.HotelEdited(bean);
%>
<h2> Hotel Details Updated Successfully !</h2>
<p> Go back to <a href="AdminHome.jsp">HOMEPAGE</a>
<%@ include file="FooterMainEmp.html" %>
</body>
</html>