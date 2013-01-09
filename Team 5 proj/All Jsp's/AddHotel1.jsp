<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="facade5.FacadeMain"%>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="images/blue-fantasy-background.jpg" bgProperties="fixed" style="background-attachment:fixed;background-repeat:no-repeat;">
<%
int n2=Integer.parseInt(request.getParameter("cost_per_room"));
int n3=Integer.parseInt(request.getParameter("hotel_rating"));
%>


<jsp:useBean id="HotelBean1" class="bean5.HotelBean"/>

<jsp:setProperty name="HotelBean1" property="hotelName" value="<%=request.getParameter("hotel_name") %>" />
<jsp:setProperty name="HotelBean1" property="description" value="<%=request.getParameter("hotel_desc") %>" />
<jsp:setProperty name="HotelBean1" property="location" value="<%=request.getParameter("hotel_location") %>" />
<jsp:setProperty name="HotelBean1" property="rating" value="<%=n3%>" />
<jsp:setProperty name="HotelBean1" property="roomType" value="<%= request.getParameter("room_type") %>" />
<jsp:setProperty name="HotelBean1" property="costPerRoom" value="<%=n2%>" /> 
<%
out.print("hi");
FacadeMain fm=new FacadeMain();
fm.HotelCatch(HotelBean1);
out.print("hi");
%>
<%@ include file="HeaderMenu.html" %>
<table>
<tr><td></td>
<td><h2>HOTEL IS SUCCESSFULLY ADDED IN THE DATABASE</h2></td></tr>
</table>
</body>
</html>