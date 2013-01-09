function EmployeeValidate(AddEmployee)
{
if (document.AddEmployee.employeeName1.value=="")
    {
    alert('The Employee First Name field cannot be blank');
        return false;
    }
if (document.AddEmployee.employeeName2.value=="")
    {
    alert('The Employee Last Name field cannot be blank');
        return false;
    }
if (document.AddEmployee.employeeRole.value=="")
    {
    alert('The Employee Role field cannot be blank');
        return false;
    }
if(document.AddEmployee.contactNum.value=="")
 	{	
 	alert('The contact number fielid cannot be blank.');
 	return false;
 	}
if(isNaN(document.AddEmployee.contactNum.value))
 	{
 	alert('Please Enter only Numbers in contact number field.');
 	return false;
 	}
 
if (document.AddEmployee.email.value=="")
    {
    alert('The Email field cannot be blank');
        return false;
    }
if (document.AddEmployee.email.value.indexOf("@") < 1 || document.AddEmployee.email.value.indexOf(".") < 1) 
	{
	alert('Please enter a valid email address.');
	return false;
	}
else
    {
    document.AddEmployee.action="AddEmployeeJsp.jsp";
	AddEmployee.method="post"; 
    AddEmployee.submit();
    	return true;  	
	}
}
function EmployeeEdit(EditEmployee)
{
if(document.EditEmployee.employeeId.value=="")
	{
	alert('The Text field cannot be blank');
	document.EditEmployee.employeeId.select();
	event.returnValue= false;
	}
	else
	{
	document.EditEmployee.action="EditEmployeeJsp.jsp";
	document.EditEmployee.method="post"; 
    document.EditEmployee.submit();
    	return true;  	
	}
}

function EmployeeDelete(DeleteEmployee)
{
if(document.DeleteEmployee.employeeId.value =="")
	{
	alert('The Text field cannot be blank');
	event.returnValue= false;
	}
	else
	{
	document.DeleteEmployee.action="DeleteEmployeeJsp.jsp";
	DeleteEmployee.method="post"; 
    DeleteEmployee.submit();
    	event.returnValue= true;  	
	}
}

function PackageValidate(AddPackage)
{
if (document.AddPackage.packageName.value=="")
    {
    alert('The Add Package field cannot be blank');
        return false;
    }
if(document.AddPackage.destination.value=="")
	{
	alert('The Destination field cannot be blank');
         return false;
    }
if(document.AddPackage.description.value=="")
	{
	alert('The Description field cannot be blank');
        return false;
    }

if(document.AddPackage.hotelId.value=="")
	{
	alert('The Hotel Id field cannot be blank');
         return false;
    }
if(isNaN(document.AddPackage.hotelId.value))
 	{
 	alert('Please Enter a valid hotel Id.');
 	return false;
 	}
if(document.AddPackage.numOfDays.value=="")
	{
	alert('The Number of Days field cannot be blank');
         return false;
    }
if(isNaN(document.AddPackage.numOfDays.value))
 	{
 	alert('Please Enter valid number of days.');
 	return false;
 	}
if(document.AddPackage.costPerPerson.value=="")
	{
	alert('Enter a Valid value in Cost Per Person field');
         return false;
    }

if(isNaN(document.AddPackage.costPerPerson.value))
 	{
 	alert('Please enter valid cost per person');
 	return false;
 	}
if (document.AddPackage.costPerPerson.value.indexOf(" ") > 0)
	{
	alert('No white spaces allowed in cost per person field');
 	return false;
 	}
else
    {
    document.AddPackage.action="AddPackageJsp.jsp";
	AddPackage.method="post"; 
    AddPackage.submit();
    	return true;  	
	}
}

function PackageDelete(DeletePackage)
{
if(document.DeletePackage.packageId.value =="")
	{
	alert('The Text field cannot be blank');
	event.returnValue= false;
	}
else if(isNaN(document.DeletePackage.packageId.value))
	{
	alert('The Text field cannot be blank');
	event.returnValue= false;
	}	
	else
	{
	document.DeletePackage.action="DeletePackageJsp.jsp";
	DeletePackage.method="post"; 
    DeletePackage.submit();
    	event.returnValue= true;  	
	}
}

function PackageEdit(EditPackage)
{
if(document.EditPackage.packageId.value=="")
	{
	alert('The Text field cannot be blank');
	event.returnValue= false;
	}
	else
	{
	document.EditPackage.action="EditPackageJsp.jsp";
	EditPackage.method="post"; 
    EditPackage.submit();
    	return true;  	
	}
}




function LoginInternalValidate (LoginInternal)
{
if (document.LoginInternal.username.value=="")
    {
    alert('The Username field cannot be blank');
         event.returnValue= false;
    }
else if(document.LoginInternal.password.value=="")
	{
	alert('The Password field cannot be blank');
         event.returnValue= false;
    }
    else
    {
    document.LoginInternal.action="LoginInternalJsp.jsp";
    LoginInternal.method="post" ;
    LoginInternal.submit();
    	return true;  	
	}
}

function FlightDelete(DeleteFlight)
{
if(document.DeleteFlight.flightName.value =="")
	{
	alert('The Text field cannot be blank');
	event.returnValue= false;
	}
else
	{
	document.DeleteFlight.action="DeleteFlightJsp.jsp";
	DeleteFlight.method="post"; 
    DeleteFlight.submit();
    	return true;  	
	}
}

function HotelDelete(DeleteHotel)
{
if(document.DeleteHotel.hotelId.value =="")
	{
	alert('The Text field cannot be blank');
	event.returnValue= false;
	}
else
	{
	document.DeleteHotel.action="DeleteHotelJsp.jsp";
	DeleteHotel.method="post"; 
    DeleteHotel.submit();
    	return true;  	
	}
}




