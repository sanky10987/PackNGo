<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="HeaderMenu.html"%>
<%@ page errorPage="ErrorLogin.jsp" %>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Payment Portal</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>

<body>
<div id="userbck">

<%if(session.getAttribute("uName")==null)
{
	response.sendRedirect("userlogin.jsp");
} %>

<form name="payment" action="CheckValidCard.jsp" method="post">
<table border="2" cellpadding="5" cellspacing="3" BORDERCOLOR="#151B54">
<thead><h2><b>Hello <%=session.getAttribute("uName") %>,This is Your  Bill</b></h2></thead>
<tr>
<td><b>Order ID</b></td><td><input type="text" name="orderId" value="<%=session.getAttribute("orderId").toString() %>" readonly></td>
</tr>
<tr>
<td>Select a Payment Mode</td><td><select name="paymentMode"><option value="CC">Credit Card</option><option value="DC">Debit Card</option><option value="OB">Online Banking</option><option selected="selected">--Select--</option></select></td>
<tr>
<td><b>Card No.</b></td><td><input type="text" name="cardNo" value="" >(Mandatory In Case of Credit/Debit Cards)</td>
</tr>
<tr>
<td><b>Select Your Bank</b></td><td><select name="bank"><option value="HDFC">HDFC Bank</option><option value="ICICI">ICICI Bank</option><option value="SC">Standard Chartered</option><option value="HSBC">HSBC Bank</option><option value="SBI">State Bank of India</option><option selected="selected">--Select--</option></select></td>
</tr>
<tr>
<td><b>Total Amount</b></td><td><input type="text" name="total" value="<%=session.getAttribute("total")%>" readonly="readonly"></td>
</tr>
<tr>
<td><input type="submit"  value="Proceed"></td>
</tr>
<script>
history.forward();
</script>
</table></form></div>
</body>
</html>