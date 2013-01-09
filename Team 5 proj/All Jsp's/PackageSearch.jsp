<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><%@ include file="HeaderMenu.html" %>
<head>
<script type="text/javascript" src=Validation.js>
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome to www.packngo.com</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
<div id="userbck">
<form name="packageForm" action="BLSearchPackages.jsp" method="post">
<table cellpadding="10" cellspacing="5">
<thead>Choose from a wide range of Holiday Packages</thead>
<tr>
<td><b>Choose your departing City</b><td><select name="source">
										<option>Delhi</option>
		 								<option>Mumbai</option>
										<option>Bangalore</option>
										<option>Kolkata</option></select></td>
</tr>
<tr>
<td><b>Choose a package type</b><td><select name="packageType">
									 <option value="F">Family</option>
									 <option value="A">Adventure</option>
									 <option value="R">Romance</option>
									 <option value="H">Heritage</option>
									 </select></td>
</tr>
<tr>
<td>No. of Adult Passengers(>11)Yrs</td><td>No. of Children(2-11) Yrs</td>
</tr>
<td><select name="numadult">
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="" selected="selected">--Select--</option>
</select></td><td><select name="numchild">
<option value="0">0</option>
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="" selected="selected">--Select--</option>
</select></td>
</tr>
<tr>
<td><input type="submit" value="Search" onclick="" width="95" height="19" /></td><td><input type="reset" width="95" height="19" /></td>
</tr>
</table>
</form></div>
</body>
</html>