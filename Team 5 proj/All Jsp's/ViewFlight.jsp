<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import= "facade5.FacadeMain" %>
<html>
<head>
<link href="styleIntenal.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="HeaderMenuEmp.html" %>
<jsp:useBean id="bean" class="bean5.FlightBean" /> 
<jsp:setProperty name="bean" property="flagFlight" value="true" />
<% FacadeMain f=new FacadeMain();

f.viewFlight(bean);
int length= bean.getSize();
int i;%>

<center>
<form name="ViewFlight" action="AdminHome.jsp">

<table>

<tr><td>Flight Name </td>
<td>Date </td>
<td>Time </td>
<td>Destiantion </td>
<td> Source</td>
<td>Cost Per Person </td>
<td>Company Name </td>
</tr>
<% for(i =0; i<length; i++)
{%>
<tr><td><input type="text" value="<%=bean.getFlightNameAL().get(i) %>" readonly></td>
<td><input type="text" value="date" readonly></td>
<td><input type="text" value="time" readonly></td>
<td><input type="text" value="<%=bean.getDestinationValueAL().get(i) %>" readonly></td>
<td><input type="text" value="<%=bean.getSourceValueAL().get(i) %>" readonly></td>
<td><input type="text" value="<%=bean.getCppValueAL().get(i).toString() %>" readonly></td>
<td><input type="text" value="<%=bean.getCompNameAL().get(i) %>" readonly></td></tr>
<%} %>

<tr><td><input type="submit" value="OK" ></td></tr>
</table>
</form>
</center>
<%@ include file="FooterMainEmp.html" %>

</body>
</html>