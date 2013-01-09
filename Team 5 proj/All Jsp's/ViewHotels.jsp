<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="bean5.HotelBean" %>
<%@page import="java.util.ArrayList"%>
<%@page import="facade5.FacadeMain"%>
<html>
<head>
<link href="styleIntenal.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>| Hotels Store In Database |</title>
</head>
<%@ include file="HeaderMenu.html" %> 
<body bgProperties="fixed" style="background-attachment:fixed;background-repeat:no-repeat;">
<%@ include file="HeaderMenuEmp.html" %>
<jsp:useBean id="ViewHotel" class="bean5.HotelBean" />
<%
FacadeMain fm=new FacadeMain();
fm.hotels(ViewHotel);
ArrayList al2=new ArrayList();
ArrayList al3=new ArrayList();
ArrayList al4=new ArrayList();
ArrayList al5=new ArrayList();
ArrayList al6=new ArrayList();
ArrayList al7=new ArrayList();
al2=ViewHotel.getHotelName1();
al3=ViewHotel.getLocation1();
al4=ViewHotel.getDescription1();
al5=ViewHotel.getRoomType1();
al6=ViewHotel.getCostPerRoom1();
al7=ViewHotel.getRating1();
int n2=al2.size();
%> 
<form method=post>
<table width="800" height="300">

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
<td><%out.print(al2.get(i)); %></td>
<td><%out.print(al3.get(i)); %></td>
<td><textarea  rows="10" cols="50" ><%out.print(al4.get(i)); %></textarea></td>
<td><%out.print(al5.get(i)); %></td>
<td><%out.print(al6.get(i)); %></td>
<td><%out.print(al7.get(i)); %></td>
</tr>
<%}
%>
</table>
</form>
<%@ include file="FooterMainEmp.html" %>
</body>
</html>