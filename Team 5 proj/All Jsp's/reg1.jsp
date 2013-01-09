<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title align="center">Registration @ Online Travel Agency</title>
<%@ include file="HeaderMenu.html" %>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
<div id="userbck">
<h1>Register With Us(Step-1)</h1>

<script type="text/javascript" src="validation_register.js"></script>


<form name="Registration1">
<table border="0" cellpadding="5" cellspacing="0" width="600" align="center">

<tr>
<td><b>Username*:</b></td>
<td><input name="username" type="text" maxlength="60" style="width:100px; border:1px solid #999999" /></td>
<td><input name="check" align="center" value="Please check for the availability of username" align="center" type="button" onclick="return checkun()"></td>
</tr>

</table>
</form>
<h3><a href="">Go to home page</a></h3>
</div>
</body>
</html>