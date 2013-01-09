function ValidateForm()
 {
 var firstName=document.Registration.First_Name.value;
 var strArr = new Array();
 strArr = firstName.split(" ");
 var i=0;
 if(strArr[0] == "")
 {alert('First Name cant start with space.');return false;} 
if (document.Registration.First_Name.value == "")
 {alert('First Name is required.');return false;} 
 if (!isNaN(document.Registration.First_Name.value))
 {alert('Please enter only alphabetical characters in First name.');return false;}
if (document.Registration.First_Name.value.length > 15)
 	{alert ('Firstname Too Long.');
 	return false;}
 	
 	 
 if (document.Registration.LastName.value == "")
 {alert('Please fill last name field.');return false;} 
 if (!isNaN(document.Registration.LastName.value))
 {alert('Please enter only alphabetical characters in Last name.');return false;}
 if (document.Registration.LastName.value.length > 15)
 	{alert ('LastName Too Long.');
 	return false;}
 
 
 if (document.Registration.Gender.value != "M" && document.Registration.Gender.value != "F")
 {alert('Gender is required.');return false;}
 
 if (document.Registration.dateb.value == "")
 {alert('Date field cant be blank.');return false;} 
 if(isNaN(document.Registration.dateb.value))
  {alert('Please Enter numbers in Date field.');return false;}
  
 if (document.Registration.dom.value == "")
 {alert('Date field cant be blank.');return false;} 
 if(isNaN(document.Registration.dom.value))
  {alert('Please Enter numbers in Date field.');return false;}
  
 if (document.Registration.doy.value == "")
 {alert('Date field cant be blank.');return false;} 
 if(isNaN(document.Registration.doy.value))
  {alert('Please Enter numbers in Date field.');return false;}
  
  if(document.Registration.address.value == "")
 {alert('Address field cant be blank.');return false;}
 
 if(document.Registration.city.value == "")
 {alert('City field cant be blank.');return false;}
 if(!isNaN(document.Registration.city.value))
  {alert('Please Enter only alphabetical characters in city field.');return false;}
 
 if(document.Registration.state.value == "")
 {alert('State field cant be blank.');return false;}
 if(!isNaN(document.Registration.state.value))
  {alert('Please Enter only alphabetical characters in state field.');return false;}
 
if(document.Registration.country.value == "")
 {alert('Country field cant be blank.');return false;}
 if(!isNaN(document.Registration.country.value))
  {alert('Please Enter only alphabetical characters in country field.');return false;}
 
 if(document.Registration.pin.value=="")
 {alert('Please Enter only Numbers in Pin field.');return false;}
 if(isNaN(document.Registration.pin.value))
 {alert('Please Enter only Numbers in Pin field.');return false;} 
 if(document.Registration.pin.value.length>6)
 {alert('Enter Valid Pin Number.');return false;}
 
 if(document.Registration.PhoneNumber.value=="")
 {alert('Please Enter only Numbers in Pin field.');return false;}
 if(isNaN(document.Registration.PhoneNumber.value))
 {alert('Please Enter only Numbers in Phone number field.');return false;}
 
if (document.Registration.FromEmailAddress.value.indexOf("@") < 1 || document.Registration.FromEmailAddress.value.indexOf(".") < 1) 
{alert('Please enter a valid email address.');return false;}

 	if((document.Registration.captcha.value) != (document.Registration.testcode.value))
 {alert('The string entered by you is wrong.');return false;}
 

 
 if (document.Registration.password.value == "")
 {alert('password field required.');return false;} 
 
  if (document.Registration.password.length > 14)
 {alert('password field required.');return false;} 
 
 if(document.Registration.security.value!="What was your childhood nickname?" && 
 document.Registration.security.value!="What school did you attend for sixth grade?" &&
 document.Registration.security.value!="What is your best friend's last name?" &&
 document.Registration.security.value!="What time of the day were you born?" &&
 document.Registration.security.value!="What was your favorite place to visit as a child?")
 {
 alert('Please select one secutiry question');
 return false;
 }
 
 if (document.Registration.answer.value == "")
 {alert('Answer field required.');return false;}

document.Registration.action="username.jsp";
document.Registration.method="post";
document.Registration.submit();
return true; }


function userlogin()
 {
 if (document.login.username.value == "")
 {alert ('Username cant be blank.');
 return false;} 
 
 if (document.login.password.value == "")
 {alert ('Password cant be blank.');
 return false;}
else
document.login.action="setlogin.jsp";
document.login.method="post";
document.login.submit();
 return true;
 }

 function checkun()
 {
  	if (document.Registration1.username.value == "")
 	{alert ('Username cant be blank.');
 	return false;}
 	
 	if (document.Registration1.username.value.length > 14)
 	{alert ('Username too long.');
 	return false;}
 	
 
 if (document.Registration1.username.value.indexOf(" ")>0)
 {alert('Username cant contain blank spaces.');return false;} 

else
	document.Registration1.action="checkusername.jsp";
	document.Registration1.method="post";
	document.Registration1.submit();
	return true;
}

function validcomp()
{
	if (document.Complaint.ctype.value != "P" && document.Complaint.ctype.value != "D" && document.Complaint.ctype.value != "H" && document.Complaint.ctype.value != "T" && document.Complaint.ctype.value != "O")
	{
	alert('Complaint Type field cant be empty.');
	return false;
	}
	else 
	document.Complaint.action="complsetbean.jsp";
	document.Complaint.method="post";
	document.Complaint.submit();
	return true;
}

function forgotpass()
{
	if (document.forgot.email.value == "")
	{alert('Email cant be blank');}
	
	else 
	document.forgot.action="forgotbean.jsp";
	document.forgot.method="post";
	document.forgot.submit();
	return true;
}

function secques()
{
if (document.asksecq.secanswer.value == "")
	{alert('Answer cant be blank');}
	
	else 
	document.asksecq.action="sendanswer.jsp";
	document.asksecq.method="post";
	document.asksecq.submit();
	return true;
}

function updateprof()
{
if (document.updateprofile.firstname.value == "")
 {alert('First Name is required.');return false;} 
 if (!isNaN(document.updateprofile.firstname.value))
 {alert('Please enter only alphabetical characters in First name.');return false;}
if (document.updateprofile.firstname.value.length > 15)
 	{alert ('Firstname Too Long.');
 	return false;}
 	
 	 
 if (document.updateprofile.lastname.value == "")
 {alert('Please fill last name field.');return false;} 
 if (!isNaN(document.updateprofile.lastname.value))
 {alert('Please enter only alphabetical characters in Last name.');return false;}
 if (document.updateprofile.lastname.length > 15)
 	{alert ('LastName Too Long.');
 	return false;}
 	
 	if(document.updateprofile.address.value == "")
 {alert('Address field cant be blank.');return false;}
 
 if(document.updateprofile.city.value == "")
 {alert('City field cant be blank.');return false;}
 if(!isNaN(document.updateprofile.city.value))
  {alert('Please Enter only alphabetical characters in city field.');return false;}
 
 if(document.updateprofile.state.value == "")
 {alert('State field cant be blank.');return false;}
 if(!isNaN(document.updateprofile.state.value))
  {alert('Please Enter only alphabetical characters in state field.');return false;}
 
if(document.updateprofile.country.value == "")
 {alert('Country field cant be blank.');return false;}
 if(!isNaN(document.updateprofile.country.value))
  {alert('Please Enter only alphabetical characters in country field.');return false;}
 
 if(document.updateprofile.pin.value=="")
 {alert('Please Enter only Numbers in Pin field.');return false;}
 if(isNaN(document.updateprofile.pin.value))
 {alert('Please Enter only Numbers in Pin field.');return false;} 
 if(document.updateprofile.pin.value.length>6)
 {alert('Enter Valid Pin Number.');return false;}
 
 if(document.updateprofile.phone.value=="")
 {alert('Please Enter only Numbers in Pin field.');return false;}
 if(isNaN(document.updateprofile.phone.value))
 {alert('Please Enter only Numbers in Phone number field.');return false;}
 
if (document.updateprofile.email.value.indexOf("@") < 1 || document.updateprofile.email.value.indexOf(".") < 1) 
{alert('Please enter a valid email address.');return false;}
 	
 else 
 document.updateprofile.action="setuserparams.jsp";
 document.updateprofile.method="post";
 document.updateprofile.submit();
 return true;
}



