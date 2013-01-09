<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="facade5.FacadeMain" %>
    <%@page import="bean5.userlogin" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%if(session.getAttribute("uName")==null)
{
	response.sendRedirect("userlogin.jsp");
} %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Updated</title>
</head>
<%@ include file="HeaderMenu.html" %>
<h1>Your data has been successfully updated</h1>
<body>
<jsp:useBean id="beanupdate" class="bean5.Bean_Register" />
<jsp:setProperty name="beanupdate" property="firstName" value="<%=request.getParameter("firstname")%>"/>
<jsp:setProperty name="beanupdate" property="middleName" value="<%=request.getParameter("middlename")%>"/>
<jsp:setProperty name="beanupdate" property="lastName" value="<%=request.getParameter("lastname")%>"/>
<jsp:setProperty name="beanupdate" property="genderReg" value="<%=request.getParameter("gender")%>"/>
<jsp:setProperty name="beanupdate" property="addressReg" value="<%=request.getParameter("address")%>"/>
<jsp:setProperty name="beanupdate" property="cityReg" value="<%=request.getParameter("city")%>"/>
<jsp:setProperty name="beanupdate" property="stateReg" value="<%=request.getParameter("state")%>"/>
<jsp:setProperty name="beanupdate" property="countryReg" value="<%=request.getParameter("country")%>"/>
<jsp:setProperty name="beanupdate" property="pinReg" value="<%=request.getParameter("pin")%>"/>
<jsp:setProperty name="beanupdate" property="phoneReg" value="<%=request.getParameter("phone")%>"/>
<jsp:setProperty name="beanupdate" property="mobileReg" value="<%=request.getParameter("mobile")%>"/>
<jsp:setProperty name="beanupdate" property="emailReg" value="<%=request.getParameter("email")%>"/>

<jsp:useBean id="bean"  class="bean5.userlogin" scope="session"/>


<%
FacadeMain setup=new FacadeMain();
//System.out.println(bean.getUserId());
setup.setuser(beanupdate, bean);
%>

<h3><a href="usersethome.jsp">Go back to home page</a></h3>
</body>
</html>