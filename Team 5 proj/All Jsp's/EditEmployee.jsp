<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="styleInternal.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="HeaderMenuAdmin.html" %>
<center>
<b>EDIT EMPLOYEE DETAILS</b>
<form name="EditEmployee" action = "EditEmployeeJsp.jsp">
<table>
<tr><td>Please enter the employee Id !</td></tr>
<tr><td><input type= "text" name= "employeeId" maxlength="4" size="20" ></td></tr>
<tr><td><input type="submit" value="Show Details" ></td></tr>
	</table>
	</form>
</center>
<%@ include file="FooterMainAdmin.html" %>
</body>
</html>