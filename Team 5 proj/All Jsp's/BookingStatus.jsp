<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="bean5.OrderHotelBean"%>
<%@page import="facade5.FacadeMain"%>
<%@page import="bean5.PaymentBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page errorPage="ErrorLogin.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>| Your Booking Status |</title>
</head>
<%if(session.getAttribute("uName")== null)
{
	response.sendRedirect("userlogin.jsp");
} %>
<body >
<div id="userbck">
<%@ include file="HeaderMenu.html" %> 
<jsp:useBean id="BookedStatus" class="bean5.OrderHotelBean" />
<jsp:useBean id="BookedStatus1" class="bean5.PaymentBean" />
<%
String uid=session.getAttribute("userId").toString();
int uId=Integer.parseInt(uid);
FacadeMain fm=new FacadeMain();
fm.bookingstatus(BookedStatus1,BookedStatus,uId);
ArrayList al1=new ArrayList();
ArrayList al3=new ArrayList();
ArrayList al4=new ArrayList();
ArrayList al5=new ArrayList();
ArrayList al6=new ArrayList();
ArrayList al7=new ArrayList();
ArrayList al8=new ArrayList();
ArrayList al9=new ArrayList();
ArrayList al10=new ArrayList();
al1=BookedStatus.getOrder_id1();
al3=BookedStatus.getPackage_id1();
al4=BookedStatus.getStart_date1();
al5=BookedStatus.getEnd_date1();
al6=BookedStatus.getFlight_name1();
al7=BookedStatus.getHotel_id1();
al8=BookedStatus.getNum_of_adults1();
al9=BookedStatus.getNum_of_child1();
al10=BookedStatus.getTotal_cost1();
int n2=al1.size();
%>
<table width="800" height="300">

	<tr>
		<td></td>
		<td><h3>| Order ID |</h3></td>
		<td><h3>| Package ID |</h3></td>
		<td><h3>| Start Date |</h3></td>
		<td><h3>| End Date |</h3></td>
		<td><h3>| Flight Name |</h3></td>
		<td><h3>| Hotel ID |</h3></td>
		<td><h3>| No of Adults |</h3></td>
		<td><h3>| No of Childs |</h3></td>
		<td><h3>| Total Cost |</h3></td>
	</tr>
<br><br>
<% for(int i=0;i<n2;i++)
{%>
<tr>
<td><%out.print(al1.get(i)); %></td>
<td><%out.print(al3.get(i)); %></td>
<td><%out.print(al4.get(i)); %></td>
<td><%out.print(al5.get(i)); %></td>
<td><%out.print(al6.get(i)); %></td>
<td><%out.print(al7.get(i)); %></td>
<td><%out.print(al8.get(i)); %></td>
<td><%out.print(al9.get(i)); %></td>
<td><%out.print(al10.get(i)); %></td>
</tr>
<%}
%>
</table>
</div>
</body>

<script>
history.forward();
</script>
</html>