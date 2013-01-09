<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import = "facade5.FacadeMain" %>
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

<% 	FacadeMain f= new FacadeMain();
	
	f.HotelEdit(bean);
	if(bean.isFlag() == true)
		{%>
		<center>
<b>Details of the Hotel</b>
<form name="EditedHotel" action="EditedHotelJsp.jsp" >
<table>
<tr><td>Hotel id: </td><td>
<input type="text" name="hotelId" value="<jsp:getProperty name="bean" property="hotelId"/>" readonly></td></tr>
<tr><td>Package name: </td><td>
<input type="text" name="hotelName" value="<jsp:getProperty name="bean" property="hotelName" />" maxlength="50" size="45" ></td></tr>
<tr><td>Destination: </td><td>
<input type="text" name="location" value="<jsp:getProperty name="bean" property="location" />" maxlength="50" size="45" ></td></tr>
<tr><td>Description: </td><td>
<textarea name="description" rows="5" cols="40" maxlength="500" ><jsp:getProperty name="bean" property="description" /></textarea></td></tr>
<tr><td>Hotel Id: </td><td>
<input type="text" name="rating" value="<jsp:getProperty name="bean" property="rating" />" maxlength="1" size="45" ></td></tr>
<tr><td>Number of Days: </td><td>
<input type="text" name="roomType" value="<jsp:getProperty name="bean" property="roomType" />" maxlength="1" size="45" ></td></tr>
<tr><td>Holiday Type: </td><td>
<input type="text" name="costPerRoom" value="<jsp:getProperty name="bean" property="costPerRoom" />" maxlength="6" size="45" ></td></tr>
</table>
<input type ="submit" value="EDIT" >
</form>
</center>

<%}
		else
		{%>
		<script> alert("Enter a valid Hotel Id");
		window.location="EditHotel.jsp"; </script>
		<%} %>
	<%@ include file="FooterMainEmp.html" %>
	
</body>
</html>