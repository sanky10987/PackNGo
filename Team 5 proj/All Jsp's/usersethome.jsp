<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="bean5.userlogin" %>
    <%@page import="facade5.FacadeMain" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Your Profile Page</title>
</head>
<body>
<jsp:useBean id="setbean" class="bean5.Bean_Register" />

<%
if(session.getAttribute("uName")==null)
{
	response.sendRedirect("userlogin.jsp");
}
String uid=session.getAttribute("userId").toString();
int userid=Integer.parseInt(uid);%>
<jsp:useBean id="bean" class="bean5.userlogin" scope="session" />
<%
bean.setUserId(userid);
FacadeMain setprof=new FacadeMain();
setprof.setprofile(setbean,bean);
//session.setAttribute("beanuid",bean);
%>
<%@ include file="HeaderMenu.html" %>
<form name="updateprofile">
<script type="text/javascript" src="validation_register.js"></script>
<table border="0" bordercolor="000000" width="500" bgcolor="99cccc">
<tr>
<td> First Name: </td>
<td><input name="firstname" type="text" value="<%=setbean.getFirstName() %>" maxlength="60" style="width:100px; border:1px solid #999999" /></td>
</tr>

<%String middle=setbean.getMiddleName();
if (middle==null)
{
	middle="";
}%>

<tr>
<td> Middle Name: </td>
<td><input name="middlename" type="text" value="<%=middle %>" maxlength="60" style="width:100px; border:1px solid #999999" /></td>  
</tr>

<tr>
<td> Last Name: </td>
<td><input name="lastname" type="text" value="<%=setbean.getLastName() %>" maxlength="60" style="width:100px; border:1px solid #999999" /></td>  
</tr>

<tr>
<td> Gender: </td>
<td><input name="gender" type="text" value="<%=setbean.getGenderReg() %>" maxlength="60" style="width:100px; border:1px solid #999999" /></td>
</tr>

<tr>
<td> Address: </td>
<td><input name="address" type="text" value="<%=setbean.getAddressReg() %>" maxlength="60" style="width:100px; border:1px solid #999999" />  </td>
</tr>

<tr>
<td> city </td>
<td><input name="city" type="text" value="<%=setbean.getCityReg() %>" maxlength="60" style="width:100px; border:1px solid #999999" />  </td>
</tr>

<tr>
<td> state </td>
<td><input name="state" type="text" value="<%=setbean.getStateReg() %>" maxlength="60" style="width:100px; border:1px solid #999999" />  </td>
</tr>

<tr>
<td> country </td>
<td><input name="country" type="text" value="<%=setbean.getCountryReg() %>" maxlength="60" style="width:100px; border:1px solid #999999" />  </td>
</tr>

<tr>
<td> pin </td>
<td><input name="pin" type="text" value="<%=setbean.getPinReg() %>" maxlength="60" style="width:100px; border:1px solid #999999" />  </td>
</tr>

<tr>
<td> phone </td>
<td><input name="phone" type="text" value="<%=setbean.getPhoneReg() %>" maxlength="60" style="width:100px; border:1px solid #999999" />  </td>
</tr>

<%String mob=setbean.getMobileReg();
if(mob==null)
mob="";%>
<tr>
<td> mobile </td>
<td><input name="mobile" type="text" value="<%=mob%>" maxlength="60" style="width:100px; border:1px solid #999999" />  </td>
</tr>
<tr>
<td> email </td>
<td> <input name="email" type="text" value="<%=setbean.getEmailReg() %>" maxlength="60" style="width:100px; border:1px solid #999999" /> </td>
</tr>
<tr><td>
<input name="Update" value="update" align="center" type="button" onclick="return updateprof()" />
</td></tr>
</table>
</form>
<h4><a href="logout.jsp">LogOut</h4>
<%@ include file="FooterMain.html" %>
</body>
</html>