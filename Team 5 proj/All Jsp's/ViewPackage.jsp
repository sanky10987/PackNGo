<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import= "facade5.FacadeMain" %>
<html>
<head>
<link href="styleInternal.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Package</title>
</head>
<body>
<%@ include file="HeaderMenuAdmin.html" %>
<div id="search" >
			<p class="style1"><b>PACKAGE OPTIONS :</b></p>
	
			<p><strong><a href="ViewPackage.jsp">View Available Packages</a></strong></p><br>
			<p><strong><a href="AddPackage.jsp">Add a Package</a></strong></p><br>
			<p><strong><a href="EditPackage.jsp">Edit Package Details</a></strong></p><br>
			<p><strong><a href="DeletePackage.jsp">Delete a Package</a></strong></p><br>
			
	</div>
<jsp:useBean id="bean" class="bean5.PackageBean" /> 
<jsp:setProperty name="bean" property="flag" value="true" />
<% FacadeMain f=new FacadeMain();

f.viewPackage(bean);
int length= bean.getSize();
int packageIndex;%>
<center>
<form name="ViewPackage" action="AdminHome.jsp">

<table>

<tr><td>Package id </td>
<td>Package Name </td>
<td>Destination </td>
<td>Hotel Id </td>
<td>Description </td>
<td>Number of Days </td>
<td>Holiday Type </td>
<td>Cost Per Person </td>
</tr>
<% for(packageIndex =0; packageIndex<length; packageIndex++)
{%>
<tr><td><input type="text" value="<%=bean.getPackageIdAL().get(packageIndex).toString() %>" readonly></td>
<td><input type="text" value="<%=bean.getPackageNameAL().get(packageIndex) %>" readonly></td>
<td><input type="text" value="<%=bean.getDestinationAL().get(packageIndex) %>" readonly></td>
<td><input type="text" value="<%=bean.getHotelIdAL().get(packageIndex).toString() %>" readonly></td>
<td><textarea name="description" cols=35 rows=5 readonly><%=bean.getDescriptionAL().get(packageIndex) %></textarea></td>
<td><input type="text" value="<%=bean.getNumOfDaysAL().get(packageIndex).toString() %>" readonly></td>
<td><input type="text" value="<%=bean.getHolidayTypeAL().get(packageIndex).toString() %>" readonly></td>
<td><input type="text" value="<%=bean.getCostPerPersonAL().get(packageIndex).toString() %>" readonly></td></tr>
<%} %>

<tr><td><input type="submit" value="OK" ></td></tr>
</table>
</form>
</center>
<%@ include file="FooterMainAdmin.html" %>
</body>
</html>