<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import = "facade5.FacadeMain" %>
<html>
<head>
<link href="styleIntenal.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="HeaderMenuEmp.html" %>
<jsp:useBean id="bean" class="bean5.PaymentBean" /> 
<jsp:setProperty name="bean" property="orderId" value="<%=Integer.parseInt(request.getParameter("orderId")) %>" />
<center>
<% FacadeMain f= new FacadeMain();
f.PaymentEdit(bean);
	
	
		if(bean.isFlag() == true)
		{%>
		<h3><b>Order Details Successfully Updated !</b></h3>
		<%}
		else if(bean.isFlag()==false)
	{%><h2> Package ID does not exist !</h2>
	<%} %>
	<p> Go back to <a href="AdminHomeEmp.jsp">HOMEPAGE</a>
</center>		
</body>
</html>