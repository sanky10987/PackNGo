<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="facade5.FacadeMain" %>
    <%@page import="dbclass5.dbgetpass" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Retrive password</title>
</head>
<%@ include file="HeaderMenu.html" %>
<body>
<jsp:useBean id="passwbean" class="bean5.retrpass" />
<jsp:setProperty name="passwbean" property="answr" value="<%=request.getParameter("secanswer")%>"/>

<%
FacadeMain getpass=new FacadeMain();
//System.out.println("hi");
getpass.getpassw(passwbean);
String s1=passwbean.getPassw();
//System.out.println(passwbean.getPassw());
out.print("Password:"+s1);
%>
<h4><a href="userlogin.jsp">Go back to login page</a></h4>
</body>
</html>