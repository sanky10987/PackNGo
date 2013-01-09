<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><%@ include file="HeaderMenu.html" %>
<%@page import = "facade5.FacadeMain" %>
	  <%@page import ="java.util.ArrayList" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
 <div id="userbck">


<%
session.setAttribute("sourceS",request.getParameter("source"));
session.setAttribute("destinationS",request.getParameter("dest"));
session.setAttribute("depDateS",request.getParameter("Ddate"));
session.setAttribute("arrDateS",request.getParameter("Adate"));
session.setAttribute("numAS",request.getParameter("numadult"));
session.setAttribute("numCS",request.getParameter("numchild"));

%>

<jsp:useBean id="FBean" class="bean5.FlightSearchBean" /> 
<jsp:setProperty name="FBean" property="source1" value="<%=request.getParameter("source") %>" />
<jsp:setProperty name="FBean" property="dest1" value="<%=request.getParameter("dest") %>" />
<jsp:setProperty name="FBean" property="depdate1" value="<%=request.getParameter("Ddate") %>" />
<jsp:setProperty name="FBean" property="adate1" value="<%=request.getParameter("Adate") %>" />
<jsp:setProperty name="FBean" property="numadult1" value="<%=Integer.parseInt(request.getParameter("numadult")) %>" />
<jsp:setProperty name="FBean" property="numchild1" value="<%=Integer.parseInt(request.getParameter("numchild")) %>" />
 
 

<%

	FacadeMain fm = new FacadeMain();
	fm.showFlightsdep(FBean);
	int limit = FBean.getSize();
	//out.print(limit);
%>
<form method="post" action="BookFlight.jsp">
<input type="hidden" name="hDepDate" value="<%=request.getParameter("Ddate") %>" />
<input type="hidden" name="hNumAdult" value="<%=request.getParameter("numadult") %>" />
<input type="hidden" name="hNumChild" value="<%=request.getParameter("numchild") %>" />

<table border="2" cellpadding="5" cellspacing="3">
<thead><h3><b>Departure Flights from&nbsp;&nbsp;<%=FBean.getSource().get(0)%> &nbsp;&nbsp; to &nbsp;&nbsp;<%=FBean.getDest().get(0)%>&nbsp;&nbsp; On &nbsp;&nbsp;<%=FBean.getDepdate().get(0).toString().substring(0,11)%></b></h3></thead>
<tr><td><b>Flight Name</b></td><td><b>Airlines Name</b></td><td><b>Source</b></td><td><b>Destination</b></td><td><b>Departure On</b></td><td><b>Time</b></td><td><b>Cost Per Person</b></td>
<%for(int i =0;i<limit;i++){%>
<tr><td><input type="radio" name="rb" value="<%=FBean.getFlightname().get(i)%>"/><%=FBean.getFlightname().get(i)%></td><td><%=FBean.getCompname().get(i)%></td><td><%=FBean.getSource().get(i)%></td><td><%=FBean.getDest().get(i)%></td><td><%=FBean.getDepdate().get(i).toString().substring(0,11)%></td><td><%=FBean.getTime().get(i)%></td><td><%=FBean.getCostpp().get(i)%></td></tr>
<% }%>
<tr align="center"><td><input type="submit" value="Book" size="15"></td></tr>
</table>
</form>

<table>
<thead><h2><b>Our  Airline  Partners </b></h2></thead>
<tr><td><img src="images/IA.gif" width="120" height="70"></td><td><img src="images/JA.gif" width="120" height="70"></td><td><img src="images/KF.gif" width="120" height="70"></td><td><img src="images/GO.gif" width="120" height="70"></td><td><img src="images/Indigo.gif" width="120" height="70"></td><td><img src="images/SJ.gif" width="120" height="70"></td>
</tr>
</table>
<script>
history.forward();
</script>
</div>
</body>
</html>