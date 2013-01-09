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
<jsp:useBean id="bean" class="bean5.PackageBean" />

<jsp:setProperty name="bean" property="packageId" value="<%=Integer.parseInt(request.getParameter("packageId")) %>" />
<jsp:setProperty name="bean" property="packageName" value="<%=request.getParameter("packageName") %>" />
<jsp:setProperty name="bean" property="destination" value="<%=request.getParameter("destination") %>" />
<jsp:setProperty name="bean" property="description" value="<%=request.getParameter("description") %>" />
<jsp:setProperty name="bean" property="hotelId" value="<%=Integer.parseInt(request.getParameter("hotelId")) %>" />
<jsp:setProperty name="bean" property="numOfDays" value="<%=Integer.parseInt(request.getParameter("numOfDays")) %>" />
<jsp:setProperty name="bean" property="holidayType" value="<%=request.getParameter("holidayType") %>" />
<jsp:setProperty name="bean" property="costPerPerson" value="<%=Integer.parseInt(request.getParameter("costPerPerson")) %>" />


<%
FacadeMain f= new FacadeMain();
f.PackageEdited(bean);
%>
<h2> Package Updated Successfully !</h2>
<p> Go back to <a href="PackageOptions.jsp">HOMEPAGE</a>
<%@ include file="FooterMainEmp.html" %>
</body>
</html>