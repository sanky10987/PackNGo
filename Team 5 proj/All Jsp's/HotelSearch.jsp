<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title> BOOK HOTELS ONLINE AT A CHEAPER PRICE </title>
<script type="text/javascript">
function NoOfRooms()
{
	if (document.HotelSearchh.noofroom.value == "" )
 	{alert('Number of Rooms are required.');return false;}
 	if (isNaN(document.HotelSearchh.noofroom.value))
 	{alert('Number of Rooms should only be an integer.');return false;}
	else{
    document.HotelSearchh.action="HotelSearch1.jsp";
    document.HotelSearchh.method="post";
    document.HotelSearchh.submit();
	return true;}
}
</script>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body >
<div id="userbck">
<%@ include file="HeaderMenu.html" %>
<form name="HotelSearchh" action="" method="">
<table width="500" height="300">
<tr color="#C9C299" style="width:146px;font-size:20px;"><td><b><h3>Online Hotel Booking:</h3></b></td></tr>
<tr>
<td><label for="location1" style="width:146px;font-size:20px;">By Location: </label></td>
<td><select name="location" style="width:146px;font-size:20px;">
<option value="Bangalore">Bangalore</option>
<option value="Delhi">New delhi</option>
<option value="Mumbai">Mumbai</option>
<option value="Chennai">Chennai</option>
<option value="Kolkata">Kolkata</option>
</select></td></tr>
<tr><td>
<label for="roomtype1" style="width:146px;font-size:20px;">By Room Type(S:Standard | D:Deluxe | L:Luxury) </label></td>
<td><select name="roomtype" style="width:146px;font-size:20px;">
<option value="S">Standard</option>
<option value="D">Deluxe</option>
<option value="L">Luxury</option>
</select></td></tr>
<tr><td>
<label for="hotelrating1" style="width:146px;font-size:20px;">By Rating: </label></td>
<td><select name="hotelrating" width="444" style="width:146px;font-size:20px;">
<option value="5">5</option>
<option value="4">4</option>
<option value="3">3</option>
<option value="2">2</option>
<option value="1">1</option>
</select></td></tr>
<tr><td>
<label for="NoOfRoom" style="width:146px;font-size:20px;">No of Room: </label></td>
<td><input type="text" name="noofroom" /></td></tr>
<tr><td><input type="submit" value="Search" id="nor" onclick="return NoOfRooms()" maxlength="2"></td></tr>

</table>
</form>
</div>
</body>
</html>