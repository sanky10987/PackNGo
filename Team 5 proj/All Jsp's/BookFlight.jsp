<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page errorPage="ErrorLogin.jsp" %>
<%if(session.getAttribute("uName")==null)
{
	response.sendRedirect("userlogin.jsp");
} %>
<html><%@page import = "java.sql.*"%>
<%@page import = "facade5.FacadeMain" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Your Bookings</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body> 
<div id="userbck">
<% 
int totalCost=0;
String flname="";
int numAdult=0;
int numChild=0; 
try {		
			  
			  flname = request.getParameter("rb");
			  numAdult = Integer.parseInt(request.getParameter("hNumAdult"));
			  numChild = Integer.parseInt(request.getParameter("hNumChild"));
			  
			  Class.forName("oracle.jdbc.driver.OracleDriver").newInstance(); 
			  Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@172.16.68.55:1521:orcl1","team5","collabera"); 
			  //Statement statement = connection.createStatement(); 
			  System.out.println("Connection Established");
			  PreparedStatement ps = connection.prepareStatement("SELECT * from flightdata WHERE flight_name=?");
		      ps.setString(1,flname);
		     
		      
		      ResultSet rs = ps.executeQuery() ;
		      System.out.println("Query Executed");
			  
			  while (rs.next())
				{ 
				int costpp=rs.getInt("cost_per_person");
				totalCost= (numAdult+numChild) * costpp;
				String cpp = Integer.toString(totalCost);
				session.setAttribute("total",cpp);
				%>
				  
				  <form action="PaymentForm.jsp" method="post"> 
				  <table border="2" cellpadding="5" cellspacing="3" BORDERCOLOR="#151B54">
				  <thead><h2><b>Your  Booking  Selection</b></h2></thead>
				  <tr>
				  <td><b>Flight Name</b></td><td><b>Source</b></td><td><b>Destination</b></td><td><b>Departure On</b></td><td><b>No. of Adults</b></td><td><b>No. of Adults</b></td><td><b>Total Cost</b></td>
				  </tr>
				  <tr>
				  <td><%=rs.getString("flight_name")%></td><td><%=rs.getString("source")%></td><td><%=rs.getString("Destination")%></td><td><%=rs.getString("Date_of_flight").toString().substring(0,11)%></td><td><%=request.getParameter("hNumAdult")%></td><td><%=request.getParameter("hNumChild")%></td><td><%=totalCost%></td>
				  </tr>
				  <tr><td><input type="submit" value="Make Payment" size="15"></td></tr>
				  </table>
				<%
				
				}
				  
}
catch(Exception e)
{
	out.print("Error"+e);
}
String uid=session.getAttribute("userId").toString();
int uId=Integer.parseInt(uid);
%>
<jsp:useBean id="OBean" class="bean5.OrderBean" /> 
<jsp:setProperty name="OBean" property="userId" value="<%=uId%>" />
<jsp:setProperty name="OBean" property="flightName" value="<%=flname%>" />
<jsp:setProperty name="OBean" property="totalAmount" value="<%=totalCost%>" />
<jsp:setProperty name="OBean" property="numAdult" value="<%=numAdult%>" />
<jsp:setProperty name="OBean" property="numChild" value="<%=numChild%>" />
<jsp:setProperty name="OBean" property="startDate" value="<%=request.getParameter("hDepDate")%>" />

<%
	//int uid = Integer.parseInt(session.getAttribute("userId"));
	//OBean.setUserid(uid);
	FacadeMain fm = new FacadeMain();
	fm.OrderEntryFlights(OBean);
	//int limit = FBean.getSize();
	//out.print(limit);
	String oId = Integer.toString(OBean.getOrderId());
	session.setAttribute("orderId",oId);
%>

<p>Please cross check before Making Payment</p>
<script>
history.forward();
</script>
</form>
</div>
</body>
</html>