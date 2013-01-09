<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="facade5.FacadeMain"%>
<%@ page errorPage="ErrorLogin.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bill</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<%if(session.getAttribute("uName")==null)
{
	response.sendRedirect("userlogin.jsp");
} %>
<body>
<div id="userbck">
<%@ include file="HeaderMenu.html" %> 
<%
int n1=Integer.parseInt(request.getParameter("user_id"));
int n2=2;
int n3=Integer.parseInt(request.getParameter("hotel_id"));
int n4=Integer.parseInt(request.getParameter("no_of_adults"));
int n5=Integer.parseInt(request.getParameter("no_of_chidrens"));
int n6=Integer.parseInt(request.getParameter("total_cost"));
%>
<jsp:useBean id="OrderBean1" class="bean5.OrderHotelBean"/>
<jsp:setProperty name="OrderBean1" property="user_id" value="<%=n1%>" />
<jsp:setProperty name="OrderBean1" property="package_id" value="<%=n2 %>" />
<jsp:setProperty name="OrderBean1" property="start_date" value="<%=request.getParameter("start_date") %>" />
<jsp:setProperty name="OrderBean1" property="end_date" value="<%=request.getParameter("end_date")%>" />
<jsp:setProperty name="OrderBean1" property="flight_name" value="<%= request.getParameter("flight_name") %>" />
<jsp:setProperty name="OrderBean1" property="hotel_id" value="<%=n3 %>" /> 
<jsp:setProperty name="OrderBean1" property="num_of_adults" value="<%=n4%>" /> 
<jsp:setProperty name="OrderBean1" property="num_of_child" value="<%=n5%>" /> 
<jsp:setProperty name="OrderBean1" property="total_cost" value="<%=n6%>" /> 

<%
FacadeMain fm=new FacadeMain();
fm.OrderCatch(OrderBean1);
%>
</div>
</body>
<script>
history.forward();
</script>
</html>