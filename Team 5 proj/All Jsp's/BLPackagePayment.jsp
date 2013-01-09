<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><%@ include file="HeaderMenu.html" %>
<%@page import = "facade5.FacadeMain" %>
	  <%@page import ="java.util.ArrayList" %>
	  <%@page import ="java.util.Calendar"%>
	  <%@page import ="java.sql.Date"%>
	  <%@ page errorPage="ErrorLogin.jsp" %>
<head>
<%if(session.getAttribute("uName")==null)
{
	response.sendRedirect("userlogin.jsp");
} %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
<div id="userbck">

<%
Calendar ca1 = Calendar.getInstance();
Calendar ca2 = Calendar.getInstance();
Date date1 = new Date(0000-00-00);
ca1.set(2010,05,26);
ca1.add(Calendar.DATE,10); // Add 10 days in Dates in Calendar
String deliveryDate = ca1.get(Calendar.YEAR)+"-" +ca1.get(Calendar.MONTH)+"-"+ca1.get(Calendar.DATE);
//out.print(deliveryDate);
String startDate=session.getAttribute("packageDate").toString();
int yyyy = Integer.parseInt(startDate.substring(0,4));
int mm = Integer.parseInt(startDate.substring(5,7));
int dd = Integer.parseInt(startDate.substring(8));
//out.print(yyyy+","+mm+","+dd);
//int sDate = Integer.parseInt(startDate);
//Date sDate = date1.valueOf(startDate);
ca2.set(yyyy,mm,dd);
int numdays = Integer.parseInt(session.getAttribute("numberDays").toString());
ca2.add(Calendar.DATE,numdays);
String month = Integer.toString(ca2.get(Calendar.MONTH));
//out.println(month);
if (month.length()==1)
{
	String newMonth ="0"+month;
	//out.println(newMonth);
	String returnDate = ca2.get(Calendar.YEAR)+"-" +newMonth+"-"+ca2.get(Calendar.DATE);

	//out.println(returnDate);
	session.setAttribute("arrivalDate",returnDate);

}
else {
	
String returnDate = ca2.get(Calendar.YEAR)+"-" +ca2.get(Calendar.MONTH)+"-"+ca2.get(Calendar.DATE);

//out.println(returnDate);
session.setAttribute("arrivalDate",returnDate);
}
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
<%
response.sendRedirect("BLSearchPackageFlights.jsp");
%>
<script>
history.forward();
</script>
</div></body>
</html>