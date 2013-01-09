<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="facade5.FacadeMain"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>| Thank You For Giving Us The Valuable Suggestion |</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<%@ page errorPage="ErrorLogin.jsp" %>
<%if(session.getAttribute("uName")==null)
{
	response.sendRedirect("userlogin.jsp");
} %>
<body>
<div id="userbck">
<jsp:useBean id="FeedbackBean1" class="bean5.Bean_feedback"/>
<jsp:setProperty name="FeedbackBean1" property="user_idvalue" value="<%= request.getParameter("user_id") %>" />
<jsp:setProperty name="FeedbackBean1" property="descriptionvalue" value="<%=request.getParameter("feedback_desc") %>" />
<%
FacadeMain fm=new FacadeMain();
fm.UserFeedback(FeedbackBean1);
%>
<%@ include file="HeaderMenu.html" %>
<table>
<tr><td></td>
<td><h2>Thank You For Giving Us The Valuable Suggestion</h2></td></tr>
</table>
</div>
</body>
</html>