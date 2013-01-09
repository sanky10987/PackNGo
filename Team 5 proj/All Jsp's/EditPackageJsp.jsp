<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import = "facade5.FacadeMain" %>
<html>
<head>
<link href="styleIntenal.css" rel="stylesheet" type="text/css">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Package</title>
</head>
<body>
<%@ include file="HeaderMenuEmp.html" %>
<div id="search" >
			<p class="style1"><b>PACKAGE OPTIONS :</b></p>
	
			<p><strong><a href="ViewPackage.jsp">View Available Packages</a></strong></p><br>
			<p><strong><a href="AddPackage.jsp">Add a Package</a></strong></p><br>
			<p><strong><a href="EditPackage.jsp">Edit Package Details</a></strong></p><br>
			<p><strong><a href="DeletePackage.jsp">Delete a Package</a></strong></p><br>
			
	</div>
<jsp:useBean id="bean" class="bean5.PackageBean" /> 
<jsp:setProperty name="bean" property="packageId" value="<%=Integer.parseInt(request.getParameter("packageId")) %>" />

<% FacadeMain f= new FacadeMain();
	f.PackageEdit(bean);
	

		if(bean.isFlag() == true)
		{%>
<center>
<b>Details of the Package</b>
<form name="EditedPackage" action="EditedPackageJsp.jsp" >
<table>
<tr><td>Package id: </td><td>
<input type="text" name="packageId" value="<jsp:getProperty name="bean" property="packageId"/>" readonly></td></tr>
<tr><td>Package name: </td><td>
<input type="text" name="packageName" value="<jsp:getProperty name="bean" property="packageName" />" maxlength="20" size="45" ></td></tr>
<tr><td>Destination: </td><td>
<input type="text" name="destination" value="<jsp:getProperty name="bean" property="destination" />" maxlength="20" size="45" ></td></tr>
<tr><td>Description: </td><td>
<textarea name="description" rows="5" cols="40" maxlength="500" ><jsp:getProperty name="bean" property="description" /></textarea></td></tr>
<tr><td>Hotel Id: </td><td>
<input type="text" name="hotelId" value="<jsp:getProperty name="bean" property="hotelId" />" maxlength="20" size="45" ></td></tr>
<tr><td>Number of Days: </td><td>
<input type="text" name="numOfDays" value="<jsp:getProperty name="bean" property="numOfDays" />" maxlength="20" size="45" ></td></tr>
<tr><td>Holiday Type: </td><td>
<input type="text" name="holidayType" value="<jsp:getProperty name="bean" property="holidayType" />" maxlength="20" size="45"></td></tr>
<tr><td>Cost per Person: </td><td>
<input type="text" name="costPerPerson" value="<jsp:getProperty name="bean" property="costPerPerson" />" maxlength="20" size="45" ></td></tr>
</table>
<input type ="submit" value="EDIT" >
</form>
</center>

<%}
	else
	{%>
	<script> alert("Enter a valid Package Id");
	window.location="EditPackage.jsp"; </script>
	<%} %>
<%@ include file="FooterMainEmp.html" %>
</body>
</html>