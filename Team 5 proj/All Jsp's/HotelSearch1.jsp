<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="bean5.BeanSearchHotel" %>
<%@page import="java.util.ArrayList"%>
<%@page import="facade5.FacadeMain"%>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BOOK HOTELS</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<%@ include file="HeaderMenu.html" %> 
<%
int hr=Integer.parseInt(request.getParameter("hotelrating"));
String NoOfRoomss = request.getParameter("noofroom"); 
session.setAttribute("NoOfRoomsss",NoOfRoomss); 
%>
<body >
<div id="userbck">

<jsp:useBean id="SearcHotel1" class="bean5.BeanSearchHotel" />
<jsp:setProperty name="SearcHotel1" property="location" value="<%=request.getParameter("location") %>" />
<jsp:setProperty name="SearcHotel1" property="roomType" value="<%=request.getParameter("roomtype") %>" />
<jsp:setProperty name="SearcHotel1" property="rating" value="<%=hr %>" />
<% 
FacadeMain fm=new FacadeMain();
fm.SearchHotel(SearcHotel1);
ArrayList al1=new ArrayList();
ArrayList al2=new ArrayList();
ArrayList al3=new ArrayList();
ArrayList al4=new ArrayList();
ArrayList al5=new ArrayList();
ArrayList al6=new ArrayList();
ArrayList al7=new ArrayList();
al1=SearcHotel1.getHotelId();
al2=SearcHotel1.getHotelName();
al3=SearcHotel1.getLocation1();
al4=SearcHotel1.getDescription();
al5=SearcHotel1.getRoomType1();
al6=SearcHotel1.getCostPerRoom();
al7=SearcHotel1.getRating1();
int n2=al2.size();
%>
 
<form name="form" action="BookHotel.jsp" method=post>
<table width="1200" height="300" border="2" cellpadding="5" cellspacing="3">

	<tr>
		<td></td>
		<td><h3>Hotel Name</h3></td>
		<td><h3>Location</h3></td>
		<td><h3>Description</h3></td>
		<td><h3>Room Type(S:Standard,D:Deluxe,L:Luxury)</h3></td>
		<td><h3>Cost per room</h3></td>
		<td><h3>Rating</h3></td>
	</tr>
<br></br>
<% for(int i=0;i<n2;i++)
{%>
<tr>
<td><input type="radio" name="radio" id="r1" value="<%=(al1.get(i))%>" /></td>
<td><%out.print(al2.get(i)); %></td>
<td><%out.print(al3.get(i)); %></td>
<td><%out.print(al4.get(i)); %></td>
<td><%out.print(al5.get(i)); %></td>
<td><%out.print(al6.get(i)); %></td>
<td><%out.print(al7.get(i)); %></td>
</tr>
<%}
%>
<tr><td></td><td></td><td></td><td><input type="submit" value="Book"></td><td></td><td></td></tr>
</table>
</form>
</div>
</body>
</html>