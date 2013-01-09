package dbclass5;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Date;
import java.util.ArrayList;

import bean5.PackageSearchBean;

/**
 * pAcK n GO
 * @author Sourabh Mishra
 * @version 1.0
 * 
 */
public class PackageSearchDb {

	private String package_name;
	private String destination;
	private String package_description;
	private String flight_name;
	private int hotel_id;
	private int num_days;
	private String holiday_type;
	private int cost_per_person;
	
	Date date = new Date(0000-00-00);
	
	public void setParam(PackageSearchBean pb)
	{
		this.holiday_type=pb.getHoliday_type();
		/*this.source_value=ob.getSourceValue();
		this.destination_value=ob.getDestinationValue();
		this.date_of_flightvalue=ob.getDateFlight();
		this.time_of_flightvalue=ob.getTimeFlight();
		this.cost_per_person_value=ob.getCppValue();
		this.compname=ob.getCompName();*/
		
	}
	
	public void showPackageType(PackageSearchBean pb)
	{
		try {
			  Class.forName("oracle.jdbc.driver.OracleDriver").newInstance(); 
			  Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@172.16.68.55:1521:orcl1","team5","collabera"); 
			  //Statement statement = connection.createStatement(); 
			  System.out.println("Connection Established");
			  PreparedStatement pStatement = connection.prepareStatement("SELECT * from packages WHERE holiday_type=?");
			  pStatement.setString(1,holiday_type);
		      ResultSet rs = pStatement.executeQuery() ;
		      System.out.println("Query Executed");
		    
		      ArrayList arrayList1=new ArrayList();
		      ArrayList arrayList2=new ArrayList();
		      ArrayList arrayList3=new ArrayList();
		      ArrayList arrayList4=new ArrayList();
		      ArrayList arrayList5=new ArrayList();
		      ArrayList arrayList6=new ArrayList();
		      //234789
		      while(rs.next())
		     {
		    	  package_name = rs.getString(2);
		    	  arrayList1.add(package_name);
		    	  System.out.println(package_name);
		    	  destination = rs.getString(3);
		    	  arrayList2.add(destination);
		    	  System.out.println(destination);
		    	  package_description = rs.getString(4);
		    	  arrayList3.add(package_description);
		    	  num_days = rs.getInt(7);
		    	  Integer numDays = new Integer(num_days);
		    	  arrayList4.add(numDays);
		    	  holiday_type = rs.getString(8);
		    	  arrayList5.add(holiday_type);
		    	  cost_per_person = rs.getInt(9);
		    	  Integer cpp = new Integer(cost_per_person);
		    	  arrayList6.add(cpp);
		     }
		      
		      pb.setPackageName(arrayList1);
		      pb.setDestination1(arrayList2);
		      pb.setPackageDescription(arrayList3);
		      pb.setNumDays(arrayList4);
		      pb.setHolidayType(arrayList5);
		      pb.setCostPerPerson(arrayList6);
		      pb.setSize(arrayList1.size());
		      
		      
	}
		catch(Exception e)
		{
			System.out.println("Erroe"+e);
		}

	}

	
	
}
