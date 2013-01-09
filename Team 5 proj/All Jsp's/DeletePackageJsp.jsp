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
f.PackageDelete(bean);

	if(bean.isFlag() ==true)
	{%><h2> Package Successfully Deleted !</h2>
	<%} 
	else if(bean.isFlag() ==false)
	{%><h2> Package ID does not exist !</h2>
	<%} %>
	<p> Go back to <a href="PackageOptions.jsp">HOMEPAGE</a>
		
<jsp:getProperty name="bean" property="flag"/>
<%@ include file="FooterMainEmp.html" %>
</body>
</html>