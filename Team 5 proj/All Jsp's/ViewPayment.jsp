<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import= "facade5.FacadeMain" %>
<html>
<head>
<link href="styleInternal.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="HeaderMenuAdmin.html" %>
<jsp:useBean id="bean" class="bean5.PaymentBean" /> 
<jsp:setProperty name="bean" property="flag" value="true" />
<% FacadeMain f=new FacadeMain();

f.viewPayment(bean);

int length= bean.getSize();
int paymentIndex;%>
<center>
<form name="ViewPayment" action="AdminHome.jsp">
<table>
<tr>
<td>Order Id </td>
<td>Payment Mode </td>
<td>Payment Details </td>
<td>Payment Status </td>
<td>Order Status </td>
<td>Delivery Date </td>
</tr>
<% for(paymentIndex =0; paymentIndex<length; paymentIndex++)
{%>

<tr><td><input type="text" value="<%=bean.getOrderIdAL().get(paymentIndex).toString() %>" readonly></td>
<td><input type="text" value="<%=bean.getPaymentModeAL().get(paymentIndex) %>" readonly></td>
<td><textarea name="description" cols=35 rows=3 readonly><%=bean.getPaymentDetailsAL().get(paymentIndex) %></textarea></td>
<td><input type="text" value="<%=bean.getPaymentStatusAL().get(paymentIndex) %>" readonly></td>
<td><input type="text" value="<%=bean.getOrderStatusAL().get(paymentIndex)%>" readonly></td>
<td><input type="text" value="<%=bean.getDeliveryDateAL().get(paymentIndex) %>" readonly></td></tr>
<%} %>
<tr><td><center><input type="submit" value="OK" ></center></td></tr>
</table>
</form>
<table>
<tr><td><b>Payment Mode:</b>CC(Credit Card), OB(Online Banking), DC(Debit Card)</td></tr>
<tr><td><b>Payment Status:</b> R(Received),N(Not Received) </td></tr>
<tr><td><b>Order Status:</b> P(Processing), D(Delivered),C(Cancelled)</td></tr>
</table>
</center>
<%@ include file="FooterMainAdmin.html" %>

</body>
</html>