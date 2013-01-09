<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>ADD HOTEL...</title>
<script type="text/javascript" src="validation_hotel.js">
</script>
<link href="styleInternal.css" rel="stylesheet" type="text/css">
</head>
<body background="images/blue-fantasy-background.jpg" bgProperties="fixed" style="background-attachment:fixed;background-repeat:no-repeat;">
<%@ include file="FooterMainEmp.html" %>
<br>
<br>
<br>
<form name="add_hotel">
<table align="center" width="700" height="200">
<tr color="#C9C299" style="width:146px;font-size:20px;"><td><b><h3>Add Hotel:</h3></b></td></tr>
<tr>
<tr>
<td><label for="name1" style="width:146px;font-size:20px;">Hotel Name: </label></td>
<td><input type="text" name="hotel_name" /></td></tr>
<tr>
<td><label for="location1" style="width:146px;font-size:20px;">Hotel Location: </label></td>
<td><input type="text" name="hotel_location" /></td></tr>
<tr>
<td><label for="description1" style="width:146px;font-size:20px;">Hotel Description: </label></td>
<td><textarea name="hotel_desc" rows="10" cols="50" >
</textarea></td></tr>
<tr>
<td><label for="roomtype1" style="width:146px;font-size:20px;">Room Type: </label></td>
<td><input type="text" name="room_type" maxlength="1"/></td></tr>
<tr>
<td><label for="costperroom1" style="width:146px;font-size:20px;">Cost per room: </label></td>
<td><input type="text" name="cost_per_room" maxlength="6"/></td></tr>
<tr>
<td><label for="rating1" style="width:146px;font-size:20px;">Hotel Rating: </label></td>
<td><input type="text" name="hotel_rating" maxlength="1"/></td></tr>
<tr><td><input type="submit" value="OK" onclick="return ValidateAddHotel()"></td></tr>
</table>
</form>
<br>
<br><br>
<%@ include file="FooterMainEmp.html" %>
</body>
</html>