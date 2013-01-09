<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@page import="facade5.FacadeMain" %>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Thank you</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<%@ include file="HeaderMenu.html" %>
<body>
<div id="userbck">
<jsp:useBean id="Regbean" class="bean5.Bean_Register" />
<jsp:setProperty name="Regbean" property="firstName" value="<%=request.getParameter("firstname")%>"/>
<jsp:setProperty name="Regbean" property="middleName" value="<%=request.getParameter("middlename")%>"/>
<jsp:setProperty name="Regbean" property="lastName" value="<%=request.getParameter("lastname")%>"/>
<jsp:setProperty name="Regbean" property="genderReg" value="<%=request.getParameter("gender")%>"/>
<jsp:setProperty name="Regbean" property="birthDate" value="<%=request.getParameter("dob")%>"/>
<jsp:setProperty name="Regbean" property="monthBirth" value="<%=request.getParameter("dom")%>"/>
<jsp:setProperty name="Regbean" property="yearBirth" value="<%=request.getParameter("doy")%>"/>
<jsp:setProperty name="Regbean" property="addressReg" value="<%=request.getParameter("address")%>"/>
<jsp:setProperty name="Regbean" property="cityReg" value="<%=request.getParameter("city")%>"/>
<jsp:setProperty name="Regbean" property="stateReg" value="<%=request.getParameter("state")%>"/>
<jsp:setProperty name="Regbean" property="countryReg" value="<%=request.getParameter("country")%>"/>
<jsp:setProperty name="Regbean" property="pinReg" value="<%=request.getParameter("pin")%>"/>
<jsp:setProperty name="Regbean" property="phoneReg" value="<%=request.getParameter("phone")%>"/>
<jsp:setProperty name="Regbean" property="mobileReg" value="<%=request.getParameter("mobile")%>"/>
<jsp:setProperty name="Regbean" property="emailReg" value="<%=request.getParameter("email")%>"/>
<jsp:setProperty name="Regbean" property="userName" value="<%=session.getAttribute("uname")%>"/>
<jsp:setProperty name="Regbean" property="passWord" value="<%=request.getParameter("password")%>"/>
<jsp:setProperty name="Regbean" property="security" value="<%=request.getParameter("security")%>"/>
<jsp:setProperty name="Regbean" property="answer" value="<%=request.getParameter("answer")%>"/>

<%
FacadeMain freg= new FacadeMain();
freg.regdb(Regbean);
%>

<h1>Thank You For Registering With Us</h1>
<img src="D:\pAcKnGO\pAcKnGO\WebContent\images\thankyou.jpg" name="thankU">
<br>
<h4><a href="http://localhost:8088/pAcKnGO/userlogin.jsp">Go to login page</a></h4>
<h4><a href="http://localhost:8088/pAcKnGO/Main.jsp">Go to Main page</a></h4>
<br><br/>
</div>
</body>
</html>