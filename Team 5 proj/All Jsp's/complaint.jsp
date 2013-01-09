<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page errorPage="ErrorLogin.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Complaints Forum</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<%if(session.getAttribute("uName")==null)
{
	response.sendRedirect("userlogin.jsp");
} %>
<%@ include file="HeaderMenu.html" %>
<body >
<div id="userbck">
<script type="text/javascript" src="validation_register.js"></script>
<form name="Complaint">
<h1>Complaints Forum</h1>
<table border="0" cellpadding="5" cellspacing="0" width="600" align="center">
<tr>
<img src="D:\pAcKnGO\pAcKnGO\WebContent\images\complaint.jpg">
</tr>
<tr><td>
<b><font color="white" size="3">Complaint Type:*</font></b></td><td>
<select name="ctype">
  <option selected>Please Select A type</option>
  <option value="P">Package Issues</option>
  <option value="D">Delivery Issues</option>
  <option value="T">Travel Issues</option>
  <option value="H">Hotel Issues</option>
   <option value="O">Others</option>
</select></td></tr>

<tr><td>
<b><font color="white" size="3">Complaint Description:*</font></b></td><td>
<TEXTAREA NAME="compldesc" ROWS="5"></TEXTAREA>
</td></tr>

<tr><td>
<input name="Submit" align="center" value="Submit" align="center" type="button" onclick="return validcomp()">
</td></tr>
</table>
</form>
</div>
</body>
</html>