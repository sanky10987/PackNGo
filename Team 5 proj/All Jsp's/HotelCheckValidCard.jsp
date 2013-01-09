<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><%@include file="HeaderMenu.html"%>
<%@page import="java.sql.*"%>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
<div id="userbck">
<% 
try {
String bankName =request.getParameter("bank");
int cardNumber =Integer.parseInt(request.getParameter("cardNo"));



	  Class.forName("oracle.jdbc.driver.OracleDriver").newInstance(); 
	  Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@172.16.68.55:1521:orcl1","team5","collabera"); 
	  //Statement statement = connection.createStatement(); 
	  System.out.println("Connection Established");
	  PreparedStatement ps = connection.prepareStatement("SELECT * from BankMaster WHERE bankname=? and cardnumber=?");
    	ps.setString(1,bankName);
    	ps.setInt(2,cardNumber);
        
   	 	ResultSet rs = ps.executeQuery() ;
    	System.out.println("Query Executed");
    	
   
    	if(rs.next())
    	{%>
    		<jsp:forward page="BLHotelPayment.jsp" > 
    	    <jsp:param name="orderId" value="<%=request.getParameter("orderId") %>" /> 
    	    <jsp:param name="paymentMode" value="<%=request.getParameter("paymentMode") %>" />
    	    <jsp:param name="bank" value="<%=request.getParameter("bank")  %>" />
    	    <jsp:param name="cardNo" value="<%=request.getParameter("cardNo")  %>" />
    	    <jsp:param name="paymentMode" value="<%=request.getParameter("bank")  %>" />
    	  </jsp:forward> 
    	 
    	<%}
    	else
    	{
    		response.sendRedirect("InvalidCard.jsp");
 		
    	}
    	connection.close();
    }
    
catch(Exception e)
{
	System.out.println("Error"+e);
}
%>
</div>
</body>
</html>