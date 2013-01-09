<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="styleIntenal.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="HeaderMenuEmp.html" %>
<center>
<b>Update Payment Status</b>
<form name="EditPayment" action="EditPaymentJsp.jsp">
<table>
<tr><td>Please enter the order Id ! </td></tr>
<tr><td><input type="text" name="orderId" maxlength=7 size=10></td></tr>
<tr><td>Update Payment Status to:  </td><td><select name="paymentStatus" >
	<option value="R">Received 
    <option value="N">Not Received
    </option></select></td></tr>
<tr><td>Delivery Status : </td><td><select name="deliveryStatus" >
	<option value="P">Processing 
    <option value="D">Delivered
    <option value="C">Cancelled
    </option></select></td></tr>
</table>
<input type="submit" value="Update" >
	</form>
</center>
<%@ include file="FooterMainEmp.html" %>
</body>
</html>