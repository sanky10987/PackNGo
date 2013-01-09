<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="styleInternal.css" rel="stylesheet" type="text/css">
<script language= "JavaScript" src="Validation.js">
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="HeaderMenuEmp.html" %>
<center>
<b>DELETE REGISTERED FLIGHTS</b>
<form name="DeleteFlight">
<table>
<tr><td>Please enter the Flight Name ! </td></tr>
<tr><td><input type="text" name="flightName" maxlength=6 size=10></td></tr>
</table>
<input type="button" value="DELETE" onclick="return FlightDelete(DeleteFlight)">
	</form>
</center>
<%@ include file="FooterMainEmp.html" %>
</body>
</html>