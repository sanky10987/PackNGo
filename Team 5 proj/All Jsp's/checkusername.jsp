<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="dbclass5.checkundb" %>
    <%@ page import="facade5.FacadeMain" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
<div id="userbck">
<jsp:useBean id="checkun" class="bean5.checkuname" />
<jsp:setProperty name="checkun" property="userName" value="<%=request.getParameter("username")%>"/>

<%
FacadeMain chun = new FacadeMain();
chun.checkdb(checkun);
int flag=checkun.getFlag();
if(flag==1){
	response.sendRedirect("unerror.jsp");
}
else {
	session.setAttribute("uname",checkun.getUserName());
response.sendRedirect("User_Registration.jsp");
}
%>
</div>
</body>
</html>