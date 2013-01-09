<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>><%@ include file="HeaderMenu.html" %>
<%@page import = "facade5.FacadeMain" %>
	  <%@page import ="java.util.ArrayList" %>
	  <%@page import ="java.util.Calendar"%>
	  <%@ page errorPage="ErrorLogin.jsp" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body> 
<div id="userbck">
<%if(session.getAttribute("uName")==null)
{
	response.sendRedirect("userlogin.jsp");
} %>
<%
Calendar ca1 = Calendar.getInstance();
ca1.set(2010,05,27);
ca1.add(Calendar.DATE,10); // Add 10 days in Dates in Calendar
String deliveryDate = ca1.get(Calendar.YEAR)+"-" +ca1.get(Calendar.MONTH)+"-"+ca1.get(Calendar.DATE);
//out.print(deliveryDate);
String pDetails = request.getParameter("bank")+"  " +request.getParameter("cardNo");%>
<jsp:useBean id="PBean" class="bean5.PaymentBean" /> 
<jsp:setProperty name="PBean" property="orderId" value="<%=Integer.parseInt(request.getParameter("orderId")) %>" />
<jsp:setProperty name="PBean" property="paymentMode" value="<%=request.getParameter("paymentMode") %>" />
<jsp:setProperty name="PBean" property="paymentDetails" value="<%=pDetails%>" />
<jsp:setProperty name="PBean" property="deliveryDate" value="<%=deliveryDate%>" />

<%
	FacadeMain fm = new FacadeMain();
	fm.PaymentEntry(PBean);
%>
<h2><p>Your Payment was Sucessful.</p>
Your order will be delivered by&nbsp;<jsp:getProperty name="PBean" property="deliveryDate" /></h2>

<p>Click here to return to &nbsp;<a href="PlanFlight.jsp">Home</a>&nbsp; </p>
<p>Or Click here to Book a &nbsp;<a href="BLSearchReturnFlight.jsp">Return</a>&nbsp; Flight </p>
<script>
history.forward();
</script>
</div>
</body>
</html>