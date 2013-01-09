<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="facade5.FacadeMain" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%@ include file="HeaderMenu.html" %>
<body>
<jsp:useBean id="loginbean" class="bean5.userlogin" scope="session"/>
<jsp:setProperty name="loginbean" property="userName" value="<%=request.getParameter("username")%>"/>
<jsp:setProperty name="loginbean" property="passWord" value="<%=request.getParameter("password")%>"/>

<%
FacadeMain log= new FacadeMain();
log.logindb(loginbean);
int flag=loginbean.getFlag();
String Username=request.getParameter("username");
String uid=Integer.toString(loginbean.getUserId());
if(flag==1){
	session.setAttribute("uName",Username);
	session.setAttribute("userId",uid);
	//out.print(session.getAttribute("uName")+""+session.getAttribute("userId"));
	out.print("You have successfully logged in");%>
	<jsp:forward page="usersethome.jsp"/>
	<%}else
	{out.print("Username or password does not match");
	if(session.getAttribute("uName")==null)
	{
		response.sendRedirect("userlogin.jsp");
	}
%>
	

<p><a href="http://localhost:8088/pAcKnGO/userlogin.jsp">Go back and try again</a></p><%} %>
</body>
<%@ include file="FooterMain.html" %>
</html>