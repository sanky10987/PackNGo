function FlightValidate()
{

if (document.flightForm.flightName.value == "")
    {
    alert("The Flight name field cannot be blank");
        event.returnValue=false;
    }
	else if(document.flightForm.source.value == "")
	{
	alert("The Source field cannot be blank");
         event.returnValue=false;
    }
    else if(document.flightForm.destination.value=="")
	{
	alert("The Destination field cannot be blank");
         event.returnValue=false;
    }
    else if(document.flightForm.compName.value == "Select")
	{
	alert("Please Select a Airlines Name");
         event.returnValue=false;
    }
    else if(document.flightForm.date.value == "")
	{
	alert("The Date field cannot be blank");
         event.returnValue=false;
    }
     else if(document.flightForm.time.value == "")
	{
	alert("The Time field cannot be blank");
         event.returnValue=false;
    } else if(document.flightForm.costPP.value == "")
	{
	alert("The Cost Per Person field cannot be blank");
         event.returnValue=false;
    }
    	 
   else
    {
    document.AddPackage.action="BLAddFlights.jsp";
	AddPackage.method="post"; 
    AddPackage.submit();
    	return true;  	
	}
	}