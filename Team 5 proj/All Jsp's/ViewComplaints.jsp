<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import= "facade5.FacadeMain" %>
<html>
<head>
<link href="styleInternal.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Complaints</title>
</head>
<body>

<%@ include file= "HeaderMenuAdmin.html" %>
<jsp:useBean id="bean" class="bean5.ComplaintBean" /> 
<jsp:setProperty name="bean" property="flag" value="true" />
<% FacadeMain f=new FacadeMain();
f.viewComplaint(bean);

int length= bean.getSize();
int complaintIndex =0;%>
<center>
<form name="ViewComplaint" action="AssignComplaints.jsp">

<table border="2">
<tr><td>..</td>
<td>Complaint id </td>
<td>Complaint Type </td>
<td>Description </td>
<td> User Id</td>
</tr>
<% String complaintType=new String();
int cid= 0;

for( complaintIndex =0; complaintIndex <length; complaintIndex++)
{	System.out.println("jsp "+bean.getComplaintTypeAL().get(complaintIndex));
	if(bean.getComplaintTypeAL().get(complaintIndex).equals("P"))
		complaintType="Payment";
	else if(bean.getComplaintTypeAL().get(complaintIndex).equals("D"))
		complaintType="Delivery";
	else if(bean.getComplaintTypeAL().get(complaintIndex).equals("T"))
		complaintType="Travel";
	else if(bean.getComplaintTypeAL().get(complaintIndex).equals("H"))
		complaintType="Hotel";
	else if(bean.getComplaintTypeAL().get(complaintIndex).equals("O"))
		complaintType="Others";
			cid=Integer.parseInt(bean.getComplaintIdAL().get(complaintIndex).toString());
%>
<tr><td><input type="radio" name="group" value="<%=cid %>"></td>
<td><input type="text" value="<%=cid%>" readonly></td>
<td><input type="text" value="<%=complaintType%>" readonly></td>
<td><input type="text" value="<%=bean.getDescriptionAL().get(complaintIndex) %>" readonly></td>
<td><input type="text" value="<%=bean.getUserIdAL().get(complaintIndex).toString() %>" readonly></td></tr>
<%} %>
</table>
<input type="submit" value="Assign Complaints" >
</form>
</center>
<%@ include file="FooterMainAdmin.html" %>
</body>
</html>