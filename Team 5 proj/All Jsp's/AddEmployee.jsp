<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="styleInternal.css" rel="stylesheet" type="text/css">
<script language= "JavaScript" src="Validation.js">
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Employee</title>
</head>
<body>
<%@ include file="HeaderMenuAdmin.html" %>
<center>
<b>ADD EMPLOYEE</b>
<form name="AddEmployee">
<table cellpadding="5" cellspacing="5" bgcolor="#C0C0C0" border="1">
<tr><td>Employee First Name:  </td><td><input type="text" name="employeeName1" maxlength=15 size=40></td></tr>
<tr><td>Employee Last Name:  </td><td><input type="text" name="employeeName2" maxlength=15 size=40></td></tr>
<tr><td>Employee Role:  </td><td><input type="text" name="employeeRole" value="Employee" maxlength=13 size=40 readonly></td></tr>
<tr><td>Contact Number:  </td><td><input type="text" name="contactNum" maxlength=15 size=40></td></tr>
<tr><td>E-Mail Id:  </td><td><input type="text" name="email" maxlength=30 size=40></td></tr>
<tr><td>Complaint Id:  </td><td><input type="text" name="complaintId" maxlength=5 size=40></td></tr>    
</table>
<input type="button" value="ADD" onclick="return EmployeeValidate(AddEmployee)">
	</form>
</center>
<%@ include file="FooterMainAdmin.html" %>

</body>
</html>