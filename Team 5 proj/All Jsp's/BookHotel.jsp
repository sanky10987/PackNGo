<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="facade5.FacadeMain"%>
<%@ page errorPage="ErrorLogin.jsp" %>
<html>
<head><style type="text/css">
.disabled
{
 background-color: #CCC;
}
</style> 
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>| PLACE AN ORDER |</title>
<script type="text/javascript">
</script>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<%if(session.getAttribute("uName")==null)
{
	response.sendRedirect("userlogin.jsp");
} %>
<body >
<div id="userbck">
<%@ include file="HeaderMenu.html"%> 
<br>
<br>
<br>
<form action="PaymentHotelForm.jsp" method=post>
<%
int n=Integer.parseInt(request.getParameter("radio"));
int n1=2;
String NoOfRooms1=session.getAttribute("NoOfRoomsss").toString();
int NoOfRooms=Integer.parseInt(NoOfRooms1);
%>
<jsp:useBean id="HotelBean1" class="bean5.HotelBean" />
<jsp:setProperty name="HotelBean1" property="hotelId" value="<%=n %>"/>
<jsp:setProperty name="HotelBean1" property="costPerRoom"/>
<%
FacadeMain fm=new FacadeMain();
fm.bookHotel(HotelBean1);
int CostPerRoom=HotelBean1.getCostPerRoom();
int TotalCosts=(CostPerRoom)*(NoOfRooms);
String tc1=Integer.toString(TotalCosts);
session.setAttribute("tc",tc1); 
%>

<table align="center" width="700" height="200" border="2" cellpadding="5" cellspacing="3">
<tr color="#C9C299" style="width:146px;font-size:20px;"><td><b><h3>Booking Order:</h3></b></td></tr>
<tr>
<td><label for="user_id1" style="width:146px;font-size:20px;">User Name: </label></td>
<td><input type="text" name="u_Name" readonly="readonly" class="disabled" value="<%=(session.getAttribute("uName")) %>"/></td></tr>
<tr>
<td><label for="package_id1" style="width:146px;font-size:20px;">Package ID: </label></td>
<td><input type="text" class="disabled" readonly="readonly" /></td></tr>
<tr>
<td><label for="start_date1" style="width:146px;font-size:20px;">Start Date(YYYY-MM-DD): </label></td>
<td><input type="text" name="start_date" /></td></tr>
<tr>
<td><label for="end_date1" style="width:146px;font-size:20px;">End Date(YYYY-MM-DD): </label></td>
<td><input type="text" name="end_date" /></td></tr>
<tr>
<td><label for="flight_name1" style="width:146px;font-size:20px;">Flight Name: </label></td>
<td><input type="text" name="flight_name" class="disabled" readonly="readonly"/></td></tr>
<tr>
<td><label for="hotel_id1" style="width:146px;font-size:20px;">Hotel ID: </label></td>
<td><input type="text" name="hotel_id" class="disabled" readonly="readonly" value="<%=request.getParameter("radio") %>"/></td></tr>
<tr>
<td><label for="hotel_id1" style="width:146px;font-size:20px;">Hotel Name: </label></td>
<td><input type="text" name="hotel_name" class="disabled" readonly="readonly" value="<%=HotelBean1.getHotelName() %>"/></td></tr>
<tr>
<td><label for="hotel_id1" style="width:146px;font-size:20px;">Hotel Location: </label></td>
<td><input type="text" name="hotel_location" class="disabled" readonly="readonly" value="<%=HotelBean1.getLocation() %>"/></td></tr>
<tr>
<td><label for="hotel_id1" style="width:146px;font-size:20px;">Hotel Rating: </label></td>
<td><input type="text" name="hotel_rating" class="disabled" readonly="readonly" value="<%=HotelBean1.getRating() %>"/>star</td></tr>
<tr>
<td><label for="hotel_id1" style="width:146px;font-size:20px;">Cost Per Room: </label></td>
<td><input type="text" name="cost_per_room" class="disabled" readonly="readonly" value="<%=HotelBean1.getCostPerRoom() %>"/></td></tr>
<tr>
<td><label for="no_of_ROOMS1" style="width:146px;font-size:20px;">No Of Rooms: </label></td>
<td><input type="text" name="no_of_rooms" id="NO_OF_ROOMS" class="disabled" readonly="readonly" value="<%=NoOfRooms%>"/></td></tr>

<tr>
<td><label for="total_cost1" style="width:146px;font-size:20px;">Total Cost: </label></td>
<td><input type="text" name="total_cost" class="disabled" readonly="readonly" value="<%=TotalCosts%>"/></td></tr>
<tr><td><input type="submit" value="OK" ></td></tr>
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