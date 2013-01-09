<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
.disabled
{
 background-color: #CCC;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>| Give Feedback |</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<%@ page errorPage="ErrorLogin.jsp" %>
<%if(session.getAttribute("uName")==null)
{
	response.sendRedirect("userlogin.jsp");
} %>
<body >
<div id="userbck">
<%@ include file="HeaderMenu.html" %>
<br>
<br>
<br>
<form action="Feedback1.jsp" class="cssform" method=post>
<table align="center" width="700" height="200">
<tr color="#C9C299" style="width:146px;font-size:20px;"><td><b>Please Give Your Feedback:</h3></b></td></tr>
<tr>
<td><label for="userlID" style="width:146px;font-size:20px;">User Name: </label></td>
<td><input type="text" name="user_id" class="disabled" value="<%=(session.getAttribute("uName")) %>" readonly="readonly"/></td></tr>
<tr>
<td><label for="description1" style="width:146px;font-size:20px;">Your Message: </label></td>
<td><textarea name="feedback_desc" rows="10" cols="50">
Write your message here....
</textarea></td></tr>
<tr><td><input type="submit" value="OK"></td></tr>
</table>
</form>
<br>
<br><br>
</div>
</body>
<script>
history.forward();
</script>
</html>