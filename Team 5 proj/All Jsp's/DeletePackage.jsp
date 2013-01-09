<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script language= "JavaScript" src="Validation.js">
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="style.css" rel="stylesheet" type="text/css">
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
<b>DELETE PACKAGE</b>
<form name="DeletePackage">
<table>
<tr><td>Please enter the package Id ! </td></tr>
<tr><td><input type="text" name="packageId" maxlength=2 size=10></td></tr>
</table>
<input type="button" value="DELETE" onclick="return PackageDelete(DeletePackage)">
	</form>
</center>
<%@ include file="FooterMainEmp.html" %>
</body>
</html>