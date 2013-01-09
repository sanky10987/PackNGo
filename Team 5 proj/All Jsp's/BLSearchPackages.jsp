<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><%@ include file="HeaderMenu.html" %>
<%@page import = "facade5.FacadeMain" %>
	  <%@page import ="java.util.ArrayList" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>

<div id="userbck">
<% 
session.setAttribute("sourceS",request.getParameter("source"));
session.setAttribute("packageType",request.getParameter("packageType"));
//session.setAttribute("depDateS",request.getParameter("Ddate"));
//session.setAttribute("arrDateS",request.getParameter("Adate"));
session.setAttribute("numAS",request.getParameter("numadult"));
session.setAttribute("numCS",request.getParameter("numchild"));

%>
<jsp:useBean id="pckBean" class="bean5.PackageSearchBean" /> 
<jsp:setProperty name="pckBean" property="holiday_type" value="<%=request.getParameter("packageType") %>" />

<%
	FacadeMain fm = new FacadeMain();
	fm.searchPackage(pckBean);
	int limit = pckBean.getSize();
	//out.print(limit);
%>
<form method="post" action="BookPackage.jsp">
<table border="2" cellpadding="5" cellspacing="3">
<thead><h3><b>All Packages from&nbsp;&nbsp;<%=session.getAttribute("sourceS")%> &nbsp;&nbsp; in Category &nbsp;&nbsp;<%=request.getParameter("packageType") %></b></h3></thead>
<tr><td><b>Package Name</b></td><td><b>Destination</b></td><td><b>Package Description</b></td><td><b>Number of days</b></td><td><b>Holiday Type</b></td><td><b>Cost Per Person (Excluding Flight Charge)</b></td></tr>
<%for(int i =0;i<limit;i++){%>
<tr><td><input type="radio" name="rb" value="<%=pckBean.getPackageName().get(i)%>"/><%=pckBean.getPackageName().get(i)%><td><%=pckBean.getDestination1().get(i)%></td><td><%=pckBean.getPackageDescription().get(i)%></td><td><%=pckBean.getNumDays().get(i)%></td><td><%=pckBean.getHolidayType().get(i)%></td><td><%=pckBean.getCostPerPerson().get(i)%></td></tr>
<% }%>
<tr><td><b>When do you want to pAcKnGo</b></td><td><select name="dDate">
											   <option>2010-06-07</option>
											   <option>2010-06-14</option>
											   <option>2010-06-21</option>
											   <option>2010-06-28</option>
											   </select></td>
</tr> 
<tr align="center"><td><input type="submit" value="Book" size="15"></td></tr>
</table>
</form>



<script>
history.forward();
</script>
</div>
</body>
</html>