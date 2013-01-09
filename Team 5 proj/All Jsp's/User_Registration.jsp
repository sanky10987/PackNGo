<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title align="center">Registration @ Online Travel Agency</title>
</head>

<%@ include file="HeaderMenu.html" %>
<body background="D:\pAcKnGO\pAcKnGO\WebContent\images\fillingoutform2.jpg" width="400" height="400" no-repeat >
<h1>Register With Us</h1>

<script type="text/javascript" src="validation_register.js"></script>


<form name="Registration">
<table border="0" cellpadding="5" cellspacing="0" width="860" height="520" align="center" bgcolor="#ccffff" style="float:left;filter:alpha(opacity=77);-moz-opacity:.77;opacity:.77;">
<tr>
<td><b>First Name*:</b></td>
<td><input name="First_Name" type="text" maxlength="30" style="width:100px; border:1px solid #999999" /></td>
</tr>

<tr>
<td><b>Middle Name:</b></td>
<td><input name="MiddleName" type="text" maxlength="30" style="width:100px; border:1px solid #999999" /></td>
</tr>

<tr>
<td><b>Last Name*:</b></td>
<td><input name="LastName" type="text" maxlength="30" style="width:100px; border:1px solid #999999" /></td>
</tr>

<tr><td>
<b>Gender*</b></td><td>
<select name="Gender">
  <option selected>Please Select A Gender</option>
  <option value="M">Male</option>
  <option value="F">Female</option>
</select></td></tr>

<tr>
<td><b>Date of Birth(please enter in DD/MM/YYYY format)*:</b></td>
<td>DD<input name="dateb" type="text" maxlength="2" style="width:20px; border:1px solid #999999" />
MM<input name="dom" type="text" maxlength="2" style="width:20px; border:1px solid #999999" />
YYYY<input name="doy" type="text" maxlength="4" style="width:60px; border:1px solid #999999" />
</td>
</tr>

<tr>
<td><b>Address*:</b></td>
<td><input name="address" type="text" maxlength="40" style="width:100px; border:1px solid #999999" /></td>
</tr>

<tr>
<td><b>City*:</b></td>
<td><input name="city" type="text" maxlength="20" style="width:100px; border:1px solid #999999" /></td>
</tr>

<tr>
<td><b>State*:</b></td>
<td><input name="state" type="text" maxlength="20" style="width:100px; border:1px solid #999999" /></td>
</tr>

<tr>
<td><b>Country*:</b></td>
<td><input name="country" type="text" maxlength="20" style="width:100px; border:1px solid #999999" /></td>
</tr>

<tr>
<td><b>Pin No.*:</b></td>
<td><input name="pin" type="text" maxlength="30" style="width:100px; border:1px solid #999999" /></td>
</tr>

<tr>
<td><b>Phone number*:</b></td>
<td><input name="PhoneNumber" type="text" maxlength="30" style="width:100px; border:1px solid #999999" /></td>
</tr>

<tr>
<td><b>Mobile number:</b></td>
<td><input name="MobileNumber" type="text" maxlength="30" style="width:100px; border:1px solid #999999" /></td>
</tr>

<tr>
<td><b>Email address*:</b></td>
<td><input name="FromEmailAddress" type="text" maxlength="30" style="width:100px; border:1px solid #999999" /></td>
</tr>

<tr>
<td><b>Username*:</b></td>
<td><%=session.getAttribute("uname")%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Username is available</td>
</tr>

<tr><td><b>
Test String:&nbsp;&nbsp;
</b></td><td>
<%
int c=(int)(1000*Math.random());
String data=Integer.toString(c);
request.getSession().setAttribute("captcha", data); 
%>
<input name="testcode" type="text" readonly value="<%=data %>" maxlength="30" style="width:30px; border:1px solid #999999" />
</td></tr>

<tr><td><b>Please type the characters shown in above string here in given blank space</b></td><td>
<input name="captcha" type="text" maxlength="30" style="width:30px; border:1px solid #999999" />
</td></tr>


<tr>
<td><b>Password*:</b></td>
<td><input name="password" type="password" maxlength="30" style="width:100px; border:1px solid #999999" /></td>
</tr>


<tr>
<td><b>Select a security question*</b></td>
<td><select name="security">
  <option selected>Please Select A Question</option>
  <option value="What was your childhood nickname?">What was your childhood nickname?</option>
  <option value="What school did you attend for sixth grade?">What school did you attend for sixth grade?</option>
  <option value="What is your best friend's last name?">What is your best friend's last name?</option>
  <option value="What time of the day were you born?">What time of the day were you born?</option>
  <option value="What was your favorite place to visit as a child?">What was your favorite place to visit as a child?</option>
</select>
</td>
</tr>

<tr>
<td><b>Your Answer(Please remember this answer as this will be helpful in future to retrive your password)*</b></td>
<td><input name="answer" type="text" maxlength="30" style="width:100px; border:1px solid #999999" /></td>
</tr>



<tr><td>
<input name="Submit" align="right" value="Submit" type="button" onclick="return ValidateForm()">
</td></tr>

</table>
</form>
</body>

</html>