<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import= "facade5.FacadeMain" %>
<html><%@ include file="HeaderMenuEmp.html" %>
<head>
<link href="styleInternal.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<jsp:useBean id="bean" class="bean5.FeedbackBean" /> 
<jsp:setProperty name="bean" property="flag" value="true" />
<% FacadeMain f=new FacadeMain();
f.viewTestimonial(bean);

int length= bean.getSize();
int i =0;%>
<center>
<form name="ViewTestimonial" action="AdminHome.jsp">
<table>
<tr><td>Complaint id </td>
<td>Complaint Type </td>
<td>Description </td>
<td> User Id</td>
</tr>

<% for( i =0; i <length; i++)
	{%>
<tr><td><input type="text" value="<%=bean.getuserIdAL().get(i).toString() %>" readonly></td>

<td><textarea name= "testimonial" value= readonly rows="5" cols="40"><%=bean.getTestimonialAL().get(i) %></textarea></td>
<td><input type="text" value="<%=bean.getUserIdAL().get(i).toString() %>" readonly></td></tr>

<%} %>
<tr><td><input type="submit" value="OK" ></td></tr>
	
	</table>
</form>
</center>
<%@ include file="FooterMainEmp.html" %>
	
</body>
</html>