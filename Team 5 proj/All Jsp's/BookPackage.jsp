<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html><%@page import = "java.sql.*"%>
<%@page import = "facade5.FacadeMain" %>
<%@ page errorPage="ErrorLogin.jsp" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Your Bookings</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<%if(session.getAttribute("uName")==null)
{
	response.sendRedirect("userlogin.jsp");
} %>
<body>
<div id="userbck">
<%  
int totalCost=0;
String pkname="";
int numAdult=0;
int numChild=0; 
int pckgid = 0;
String pckgDate="";
try {		
			  pckgDate = request.getParameter("dDate");
			  session.setAttribute("packageDate",pckgDate);
			  pkname = request.getParameter("rb");
			  System.out.println(pkname);
			  String nAdult = session.getAttribute("numAS").toString();
			  String nChild = session.getAttribute("numCS").toString();
			  numAdult = Integer.parseInt(nAdult);
			  numChild = Integer.parseInt(nChild);
			  
			  Class.forName("oracle.jdbc.driver.OracleDriver").newInstance(); 
			  Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@172.16.68.55:1521:orcl1","team5","collabera"); 
			  //Statement statement = connection.createStatement(); 
			  System.out.println("Connection Established");
			  PreparedStatement ps = connection.prepareStatement("SELECT * from packages WHERE package_name=?");
		      ps.setString(1,pkname);
		     
		      
		      ResultSet rs = ps.executeQuery() ;
		      System.out.println("Query Executed");
			  
			  while (rs.next())
				{ 
				int costpp=rs.getInt("cost_per_person");
				totalCost= (numAdult+numChild) * costpp;
				String cpp = Integer.toString(totalCost);
				session.setAttribute("total",cpp);
				pckgid = rs.getInt("package_id");
				String pckgID = Integer.toString(pckgid);
				session.setAttribute("packageId",pckgID);
				int days = rs.getInt("num_days");
				//out.println(days);
				String numDays = Integer.toString(days);
				//out.println(numDays);
				session.setAttribute("numberDays",numDays);
				session.setAttribute("destinationD",rs.getString("destination"));
				%>
				  
				  <form action="PackagePaymentForm.jsp" method="post"> 
				  <table border="2" cellpadding="5" cellspacing="3" BORDERCOLOR="#151B54">
				  <thead><h2><b>Your  Booking  Selection</b></h2></thead>
				  <tr>
				  <tr><td><b>Package Name</b></td><td><b>Destination</b></td><td><b>Package Description</b></td><td><b>Number of days</b></td><td><b>Holiday Type</b></td><td><b>Cost Per Person</b></td>
				  </tr>
				  <tr>
				  <td><%=rs.getString("package_name")%></td><td><%=rs.getString("destination")%></td><td><%=rs.getString("package_description")%></td><td><%=rs.getInt("num_days")%></td><td><%=rs.getString("holiday_type")%></td><td><%=totalCost%></td>
				  </tr>
				  <tr><td><input type="submit" value="Make Payment" size="15"></td></tr>
				  </table>
				<%
				
				}
			  connection.close();
				  
}
catch(Exception e)
{
	out.print("Error"+e);
}
String uid=session.getAttribute("userId").toString();
int uId=Integer.parseInt(uid);
%>
<jsp:useBean id="POBean" class="bean5.OrderBean" /> 
<jsp:setProperty name="POBean" property="userId" value="<%=uId%>" />
<jsp:setProperty name="POBean" property="packageId" value="<%=pckgid%>" />
<jsp:setProperty name="POBean" property="totalAmount" value="<%=totalCost%>" />
<jsp:setProperty name="POBean" property="numAdult" value="<%=numAdult%>" />
<jsp:setProperty name="POBean" property="numChild" value="<%=numChild%>" />
<jsp:setProperty name="POBean" property="startDate" value="<%=request.getParameter("dDate")%>" />

<%
	//int uid = Integer.parseInt(session.getAttribute("userId"));
	//OBean.setUserid(uid);
	FacadeMain fm = new FacadeMain();
	fm.OrderEntry(POBean);
	String oId = Integer.toString(POBean.getOrderId());
	//out.println(oId);
	session.setAttribute("orderId",oId);
	//session.getAttribute("orderId");
%>

<p>Please cross check before Making Payment</p>

<script>
history.forward();
</script>
</form>
</div>
</body>
</html>