<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<table>
<tr> <%@ include file="HeaderMenuEmp.html" %></tr>
</table>

<head>
<link href="styleInternal.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Flights</title>
</head>
<body>
			
<form name="flightForm" action="BLAddFlights.jsp" method="post">
<table cellpadding="10" cellspacing="5" bgcolor="#E3E4FA">
<tr>
<td>Flight Name :</td><td><input type="text" name ="flightName" maxlength="7"></td>
</tr>
<tr>
<td>Source :</td><td><input type="text" name ="source" maxlength="12"></td>
</tr>
<tr>
<td>Destination  :</td><td><input type="text" name ="destination" maxlength="12"></td>
</tr>
<tr>
<td>Airlines Name :</td><td><select name="compName"><option value="Select" selected="selected">Select an Option</option><option value="Indian Airlines">Indian Airlines</option><option value="KingFisher">KingFisher</option><option value="Jet Airways">Jet Airways</option><option value="Indigo">Indigo</option><option value="Spice Jet">Spice Jet</option><option value="Go Air">Go Air</option></td>
</tr>
<tr>
<td>Date of Flight :</td><td><input type="text" name ="date" maxlength="10"></td>
</tr>
<tr>
<td>Time of Flight :</td><td><input type="text" name ="time" maxlength="7"></td>
</tr>
<tr>
<td>Cost Per Person :</td><td><input type="text" name ="costPP" maxlength="7">(in INR)</td>
</tr>
<tr>
<td><input type="submit" name ="Submit" value="Add Flight" ></td></tr>
</table>
<%@ include file="FooterMainEmp.html" %>
</body>

</html>