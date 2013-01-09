<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="styleInternal.css" rel="stylesheet" type="text/css">
<script language= "JavaScript" src="Validation.js">
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Package</title>
</head>
<body>
<%@ include file="HeaderMenuEmp.html" %>
<div id="search" >
			<p class="style1"><b>PACKAGE OPTIONS :</b></p>
	
			<p><strong><a href="ViewPackage.jsp">View Available Packages</a></strong></p><br>
			<p><strong><a href="AddPackage.jsp">Add a Package</a></strong></p><br>
			<p><strong><a href="EditPackage.jsp">Edit Package Details</a></strong></p><br>
			<p><strong><a href="DeletePackage.jsp">Delete a Package</a></strong></p><br>
			
	</div>
<center>
<b>ADD PACKAGE</b>
<form name="AddPackage">
<table cellpadding="5" cellspacing="5" bgcolor="#C0C0C0" border="1">
<tr><td>Destination:  </td><td><input type="text" name="packageName" maxlength=20 size=45></td></tr>
<tr><td>Package Name:  </td><td><select name="destination">
	<option value="Jaipur">Jaipur
    <option value="Agra">Agra
    <option value="Goa">Goa
    <option value="Delhi">Delhi
    <option value="Cochin">Cochin
    <option value="Mumbai">Mumbai
    <option value="Manali">"Manali
    <option value="Portblair">Portblair
    <option value="Darjeeling">Darjeeling
    <option value="Ooty">Ooty
    <option value="Mysore">Mysore
    </option></select></td></tr>
<tr><td>Description:  </td><td><textarea name="description" cols=35 rows=5 maxlength=500></textarea></td></tr>
<tr><td>Hotel Id:  </td><td><input type="text" name="hotelId" maxlength=3 size=45></td></tr>
<tr><td>Number of Days:  </td><td><input type="text" name="numOfDays" maxlength=2 size=45></td></tr>
<tr><td>Holiday Type:  </td><td><select name="holidayType" >
	<option value="Adventure">Adventure 
    <option value="Family">Family
    <option value="Romance">Romance
    <option value="Heritage">Heritage
    </option></select></td></tr>
<tr><td>Cost per Person:  </td><td><input type="text" name="costPerPerson" maxlength=10 size=45></td></tr>    
	</table>
<input type="button" value="ADD" onclick="return PackageValidate(AddPackage)">
	</form>
</center>
<%@ include file="FooterMainEmp.html" %>
</body>
</html>