<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="HeaderMenu.html" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Plan Your Travel</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
<div id="wrapper">
<div id="search">

<img src="images/title5.gif" alt="" width="119" height="22" position="left" background-repeat="no-repeat" font-family="Tahoma" font-size="12px" color="#000000"/><br /> 
				
				<form name="flightForm" action="BLSearchFlights.jsp" method="post">
				<table cellpadding="10" cellspacing="5" background="D:\Training Project\Team5OTA\WebContent\images\search_bg.gif">
<tr>
<td align="center">From :</td><td align="center">To : </td>
</tr>
<tr>
<td><select name="source"><option>Delhi</option><option>Mumbai</option><option>Bangalore</option><option>Kolkata</option></select></td><td><select name="dest"><option>Delhi</option><option>Mumbai</option><option>Bangalore</option><option>Kolkata</option></select></td>
</tr>
<tr>
<td align="center">Depart On :</td><td align="center">Return On :</td>				
</tr>
<tr>
<td><input type="text" name="Ddate" size="10" maxlength="10"><b>(YYYY-MM-DD)</b></td><td><input type="text" name="Adate" size="10" maxlength="10"><b>(YYYY-MM-DD)</b></td>
</tr>
<tr>
<td>No. of Adult Passengers(>11)Yrs</td><td>No. of Children(2-11) Yrs</td>
</tr>
<tr>
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
</form>
</div>
</div>

</body>

</html>