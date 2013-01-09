function ValidateAddHotel()
 {
	if (document.add_hotel.hotel_name.value == "")
	 {alert('Hotel Name is required.');return false;} 
	if (!isNaN(document.add_hotel.hotel_name.value))
	 {alert('Please enter only alphabetical characters in Hotel name.');return false;}
	
	var hn=document.add_hotel.hotel_name.value;
	if(hn[0]==" ")
	 {alert('First Value should not be empty');
	 return false;} 
	 
	 if (document.add_hotel.hotel_location.value == "")
	 {alert('Hotel location is required.');return false;} 
	 
	 if (!isNaN(document.add_hotel.hotel_location.value))
	 {alert('Please enter only alphabetical characters in hotel location.');return false;}
	 
	 var hl=document.add_hotel.hotel_location.value;
	 if (hl[0]==" ")
	 {alert('First Value should not be empty');return false;} 
	 
	 if (document.add_hotel.hotel_desc.value == "")
	 {alert('Hotel Description is required.');return false;} 
	 
	 var hd=document.add_hotel.hotel_desc.value;
	 if (hd[0]==" ")
	 {alert('First Value should not be empty');return false;}
	  
	 if (document.add_hotel.room_type.value == "")
	 {alert('Please give S,D or L(Single,Double,Luxury) only for room type');return false;} 
	  
	 if (document.add_hotel.cost_per_room.value == "")
	 {alert('Cost per room cant be blank.');return false;} 
	 
	 if(isNaN(document.add_hotel.cost_per_room.value))
	  {alert('Please Enter numbers in cost.');return false;}
	  
	 var hc=document.add_hotel.cost_per_room.value;
	 if (hc[0]==" ")
	 {alert('First Value should not be empty');return false;} 
	
	if (document.add_hotel.hotel_rating.value == "")
	 {alert('Hotel Rating cant be blank.');return false;} 
	 
	 if(isNaN(document.add_hotel.hotel_rating.value))
	  {alert('Rating should only be 5,4,3,2 or 1 without any space');return false;}
	  
	 var hc=document.add_hotel.hotel_rating.value;
	 if (hc[0]==" ")
	 {alert('Rating should only be 5,4,3,2 or 1 without any space');return false;} 
	
	else
	{document.add_hotel.action="AddHotel1.jsp";
	document.add_hotel.method="post";
	document.add_hotel.submit();
	return true;
	}	 
}

  
