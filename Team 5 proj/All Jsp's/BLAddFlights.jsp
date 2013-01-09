<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><%@ include file="HeaderMenu.html" %>
	  <%@page import = "facade5.FacadeMain" %>
	  <%@page import ="java.util.ArrayList" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Flights</title>
</head>
<body>


<jsp:useBean id="FlBean" class="bean5.AddFlightsBean" /> 
<jsp:setProperty name="FlBean" property="flightName" value="<%=request.getParameter("flightName") %>" />
<jsp:setProperty name="FlBean" property="sourceValue" value="<%=request.getParameter("source") %>" />
<jsp:setProperty name="FlBean" property="destinationValue" value="<%=request.getParameter("destination") %>" />
<jsp:setProperty name="FlBean" property="compName" value="<%=request.getParameter("compName") %>" />
<jsp:setProperty name="FlBean" property="dateFlight" value="<%=request.getParameter("date") %>" />
<jsp:setProperty name="FlBean" property="timeFlight" value="<%=request.getParameter("time") %>" />
<jsp:setProperty name="FlBean" property="cppValue" value="<%=Integer.parseInt(request.getParameter("costPP"))%>" />

<%

	FacadeMain fm = new FacadeMain();
	fm.addFlight(FlBean);
	
%>
</body>
</html>