/**
 * 
 */
package dbclass5;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Date;
import bean5.AddFlightsBean;

/**
 * pAcK n GO
 * @author Sourabh Mishra
 * @version 1.0
 * 
 */
public class AddFlightDb {

	private String flightName;
	private String dateOfFlight;
	private String timeOfFlight;
	private String destinationValue;
	private String sourceValue;
	private int costPerPerson;
	private String compName;
	
	Date date = new Date(0000-00-00);
	public void setParam(AddFlightsBean ob)
	{
		this.flightName=ob.getFlightName();
		this.sourceValue=ob.getSourceValue();
		this.destinationValue=ob.getDestinationValue();
		this.dateOfFlight=ob.getDateFlight();
		this.timeOfFlight=ob.getTimeFlight();
		this.costPerPerson=ob.getCppValue();
		this.compName=ob.getCompName();
		
	}
	
	public void insertData()
	{
		
		
		try {
			  Class.forName("oracle.jdbc.driver.OracleDriver").newInstance(); 
			  Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@172.16.68.55:1521:orcl1","team5","collabera"); 
			  //Statement statement = connection.createStatement(); 
			  System.out.println("Connection Established");
			  PreparedStatement pStatement = connection.prepareStatement("Insert into flights values(?,?,?,?,?)");
		      pStatement.setString(1,flightName);
		      pStatement.setString(2,compName);
		      pStatement.setString(3,sourceValue);
		      pStatement.setString(4,destinationValue);
		      pStatement.setInt(5,costPerPerson);
		      //pStatement.setString(3,depdate);
		 
		      
		      int n = pStatement.executeUpdate();
		}catch(Exception se)
		{
			System.out.println("Error"+se);
		}
	}
	public void insertdata1()
	{
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver").newInstance(); 
			  Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@172.16.68.55:1521:orcl1","team5","collabera"); 
			  //Statement statement = connection.createStatement(); 
			  System.out.println("Connection Established");
		      //System.out.println("Insertion in Flights Sucessful");
		      //System.out.println(date.valueOf(dateOfFlight));
		      PreparedStatement pStatement = connection.prepareStatement("Insert into flightdate values(?,?,?)");
		      pStatement.setString(1,flightName);
		      pStatement.setDate(2,date.valueOf(dateOfFlight));
		      pStatement.setString(3,timeOfFlight);
		      
		      int n1 = pStatement.executeUpdate();
		      System.out.println("Insertion in Flightdate Sucessful");
		}
		catch(Exception se)
		{
			System.out.println("Error"+se);
		}
}
}
