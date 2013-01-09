<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script language= "JavaScript" src="Validation.js">
</script>
<link href="styleInternal.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="HeaderMenuAdmin.html" %>
<center>
<b>DELETE EMPLOYEE</b>
<form name="DeleteEmployee">
<table>
<tr><td>Please enter the employee Id ! </td></tr>
<tr><td><input type="text" name="employeeId" maxlength="4" size="10"></td></tr>
</table>
<input type="button" value="Show Details" onclick="return EmployeeDelete(DeleteEmployee)">
	</form>
</center>
<%@ include file="FooterMainAdmin.html" %>
</body>
</html>