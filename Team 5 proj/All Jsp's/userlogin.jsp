<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ include file="HeaderMenu.html" %>
<title>Login here</title>

<script type="text/javascript" src="validation_register.js"></script>
</head>

<body background="D:\pAcKnGO\pAcKnGO\WebContent\images\world_map2.jpg">
<form name="login">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;
<h1 align="center"><font face="Antiqua,Arial" color="#0000FF">Login</font></h1>
<table align="right" border="0" bgcolor="#5CB3FF" cellspacing="1" cellpadding="3" width="287">
<tr>
<td><b><font color="#FFFFFF">Username*:</font></b></td>
<td><input name="username" type="text" maxlength="60" style="width:100px; border:1px solid #999999" /></td>
</tr>

<tr>
<td><b><font color="#FFFFFF">Password*:</font></b></td>
<td><input name="password" type="password" maxlength="60" style="width:100px; border:1px solid #999999" /></td>
</tr>

<tr>
<td>
<input name="Login" value="LOGIN" align="center" type="button" onclick="return userlogin()" />
 </td></tr><tr><td>
 <a href="forgotpass.jsp"><h4>Forgot Password...? Click Here</h4></a></td>
</tr>
</table>
</form>
<script>
history.forward();
</script>
</body>

</html>