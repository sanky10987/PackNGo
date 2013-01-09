<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="styleInternal.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="HeaderMenuEmp.html" %>
<center>
<b>EDIT HOTELS</b>
<form name="EditHotel" action="EditHotelJsp.jsp">
<table>
<tr><td>Please enter the hotel Id ! </td></tr>
<tr><td><input type="text" name="hotelId" maxlength=3 size=10></td></tr>
</table>
<input type="submit" value="Show Details" >
	</form>
</center>
<%@ include file="FooterMainEmp.html" %>
</body>
</html>