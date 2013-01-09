<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="facade5.FacadeMain" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="bean" class="bean5.LoginInternalBean" /> 
<jsp:setProperty name="bean" property="username" value="<%=request.getParameter("username") %>" />
<jsp:setProperty name="bean" property="password" value="<%=request.getParameter("password") %>" />
<jsp:setProperty name="bean" property="role" value="<%=request.getParameter("role") %>" />
<%
FacadeMain f= new FacadeMain();

f.InternalLoginCatch(bean);
%>
<%=session.getId() %>
<br>flag: <jsp:getProperty name="bean" property="flag"/>
<%boolean flag1 = bean.getFlag();
	if((bean.getFlag() ==true) && (bean.getRole().equals("Administrator")) )
	{
	session.setAttribute("username",bean.getUsername());
	session.setAttribute("role",bean.getRole());
	%>	<jsp:forward page="AdminHome.jsp" > 
    <jsp:param name="username" value="<%= session.getAttribute("username") %>" /> 
    <jsp:param name="role" value="<%=session.getAttribute("role") %>" /> 
    </jsp:forward> 
    <%} 
	else if((bean.getFlag() ==true) && (bean.getRole().equals("Employee"))) 
	{ 
		session.setAttribute("username",bean.getUsername());
		session.setAttribute("role",bean.getRole());
	%>
	<jsp:forward page="EmployeeHome.jsp" > 
    <jsp:param name="username" value="<%= session.getAttribute("username") %>" /> 
    <jsp:param name="role" value="<%=session.getAttribute("role") %>" /> 
    </jsp:forward> 
    <%} 
	else if((bean.getFlag() == false))
	{
	System.out.println(session.getId());
	session.invalidate();
	System.out.println("Invalidated");
	response.sendRedirect("http://localhost:8088/pAcKnGO/LoginInternal.html");
	} %>
</body>
</html>