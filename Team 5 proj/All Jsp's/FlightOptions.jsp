<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="styleIntenal.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
<div id="userbck">
<%@ include file="HeaderMenuEmp.html" %>
<div id="search" >
			<p class="style1"><b>FLIGHT OPTIONS :</b></p>
	
			<p><strong><a href="ViewFlight.jsp">View Registered Flights</a></strong></p><br>
			<p><strong><a href="AddFlights.jsp">Add a Flight</a></strong></p><br>
			<p><strong><a href="DeleteFlight.jsp">Delete a Registered Flight</a></strong></p><br>
			
	</div>
<%@ include file="FooterMainEmp.html" %>
</div>
</body>
</html>