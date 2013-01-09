<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="facade5.FacadeMain" %>
<html>
<head>
<link href="style.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div id="search" >
			<p class="style1"><b>PACKAGE OPTIONS :</b></p>
	
			<p><strong><a href="ViewPackage.jsp">View Available Packages</a></strong></p><br>
			<p><strong><a href="AddPackage.jsp">Add a Package</a></strong></p><br>
			<p><strong><a href="EditPackage.jsp">Edit Package Details</a></strong></p><br>
			<p><strong><a href="DeletePackage.jsp">Delete a Package</a></strong></p><br>
			
	</div>
<%@ include file="HeaderMenu.html" %>
<jsp:useBean id="bean" class="bean5.PackageBean" /> 
<jsp:setProperty name="bean" property="packageName" value="<%=request.getParameter("packageName") %>" />
<jsp:setProperty name="bean" property="destination" value="<%=request.getParameter("destination") %>" />
<jsp:setProperty name="bean" property="description" value="<%=request.getParameter("description") %>" />
<jsp:setProperty name="bean" property="hotelId" value="<%=Integer.parseInt(request.getParameter("hotelId")) %>" />
<jsp:setProperty name="bean" property="numOfDays" value="<%=Integer.parseInt(request.getParameter("numOfDays")) %>" />
<jsp:setProperty name="bean" property="holidayType" value="<%=request.getParameter("holidayType") %>" />
<jsp:setProperty name="bean" property="costPerPerson" value="<%=Integer.parseInt(request.getParameter("costPerPerson")) %>" />
<%
FacadeMain f= new FacadeMain();
f.PackageCatch(bean);
%>
<center>
<b>Details of the added Package</b>
<form name="AddPackage" action="PackageOptions.jsp">
<table>

<tr><td>Package id: </td><td>
<input type="text" value="<jsp:getProperty name="bean" property="packageId"/>" readonly></td></tr>
<tr><td>Package name: </td><td>
<input type="text" value="<jsp:getProperty name="bean" property="packageName"/>" readonly></td></tr>
<tr><td>Destination: </td><td>
<input type="text" value="<jsp:getProperty name="bean" property="destination"/>" readonly></td></tr>
<tr><td>Description: </td><td>
<textarea name="description" cols=35 rows=5 maxlength=500 readonly><jsp:getProperty name="bean" property="description"/></textarea></td></tr>
<tr><td>Hotel Id: </td><td>
<input type="text" value="<jsp:getProperty name="bean" property="hotelId"/>" readonly></td></tr>
<tr><td>Number of Days: </td><td>
<input type="text" value="<jsp:getProperty name="bean" property="numOfDays"/>" readonly></td></tr>
<tr><td>Holiday Type: </td><td>
<input type="text" value="<jsp:getProperty name="bean" property="holidayType"/>" readonly></td></tr>
<tr><td>Cost per Person: </td><td>
<input type="text" value="<jsp:getProperty name="bean" property="costPerPerson"/>" readonly></td></tr>
</table>
<input type ="submit" value="OK" >
</form>
</center>
<%@ include file="FooterMain.html" %>
</body>
</html>
