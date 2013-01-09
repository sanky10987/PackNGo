<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Last Step Of Registration</title>
</head>

<body>
<%String firstname;
String middlename;
String lastname;
String gender;
String dob;
String dom;
String doy;
String address;
String city;
String state;
String country;
String pin;
String phone;
String mobile;
String email;
%> 
<jsp:forward page="Register_jsp.jsp">
<jsp:param name="firstname" value="<%=request.getParameter("First_Name")%>"/>
<jsp:param name="middlename" value="<%=request.getParameter("MiddleName")%>"/>
<jsp:param name="lastname" value="<%=request.getParameter("LastName")%>"/>
<jsp:param name="gender" value="<%=request.getParameter("Gender")%>"/>
<jsp:param name="dob" value="<%=request.getParameter("dateb")%>"/>
<jsp:param name="dom" value="<%=request.getParameter("dom")%>"/>
<jsp:param name="doy" value="<%=request.getParameter("doy")%>"/>
<jsp:param name="address" value="<%=request.getParameter("address")%>"/>
<jsp:param name="city" value="<%=request.getParameter("city")%>"/>
<jsp:param name="state" value="<%=request.getParameter("state")%>"/>
<jsp:param name="country" value="<%=request.getParameter("country")%>"/>
<jsp:param name="pin" value="<%=request.getParameter("pin")%>"/>
<jsp:param name="phone" value="<%=request.getParameter("PhoneNumber")%>"/>
<jsp:param name="mobile" value="<%=request.getParameter("MobileNumber")%>"/>
<jsp:param name="email" value="<%=request.getParameter("FromEmailAddress")%>"/>
<jsp:param name="username" value="<%=request.getParameter("username")%>"/>
<jsp:param name="password" value="<%=request.getParameter("password")%>"/>
</jsp:forward>
</body>
</html>