package dbclass5;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Date;
import java.util.ArrayList;

import bean5.FlightBean;

/**
 * @author Learning
 *
 */
public class FlightDb {
	
	Date date = new Date(0000-00-00);
	
	public void insertData(FlightBean bean)
	{
		System.out.println(bean.getFlightName());
		
		try {
			  Class.forName("oracle.jdbc.driver.OracleDriver").newInstance(); 
			  Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@172.16.68.55:1521:orcl1","team5","collabera"); 
			  //Statement statement = connection.createStatement(); 
			  System.out.println("Connection Established");
			  PreparedStatement ps = connection.prepareStatement("Insert into flights values(?,?,?,?,?)");
		      ps.setString(1,bean.getFlightName());
		      ps.setString(2,bean.getCompName());
		      ps.setString(3,bean.getSourceValue());
		      ps.setString(4,bean.getDestinationValue());
		      ps.setInt(5,bean.getCppValue());
		 
		      
		      int n = ps.executeUpdate();
		      if(n!=0)
		      {
		    	  bean.setFlagFlight(true);
		    	  System.out.println("Insertion in Flights Sucessful");
		      }
		      else if(n==1)
		      {
		    	  bean.setFlagFlight(false);
		      }
		      connection.close();
		      
		}catch(Exception se)
		{
			System.out.println("Error"+se);
		}
	}
	public void insertDate(FlightBean bean)
	{
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver").newInstance(); 
			  Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@172.16.68.55:1521:orcl1","team5","collabera"); 
			  //Statement statement = connection.createStatement(); 
			  System.out.println("Connection Established");
		      //System.out.println("Insertion in Flights Sucessful");
		      //System.out.println(date.valueOf(date_of_flightvalue));
		      PreparedStatement ps = connection.prepareStatement("Insert into flightdate values(?,?,?)");
		      ps.setString(1,bean.getFlightName());
		      ps.setDate(2,date.valueOf(bean.getDateFlight()));
		      ps.setString(3,bean.getTimeFlight());
		      
		      int n1 = ps.executeUpdate();
		      if(n1!=0)
		      {
		    	  bean.setFlagDate(true);
		    	  System.out.println("Insertion in Flightdate Sucessful");
		      }
		      else if(n1==1)
		      {
		    	  bean.setFlagDate(false);
		      }
		      
		}
		catch(Exception se)
		{
			System.out.println("Error"+se);
		}
}
	public void DeleteFlightDb(FlightBean bean) {
		
		
		Connection connection1 = null;
	    try{ 
	    	System.out.println("yes");
	      Class.forName("oracle.jdbc.driver.OracleDriver").newInstance(); 
	      System.out.println("yes");
	      connection1 = DriverManager.getConnection("jdbc:oracle:thin:@172.16.68.55:1521:orcl1","team5","collabera"); 
	      System.out.println("yes");
     PreparedStatement preparedStatementDelete = 
    	  connection1.prepareStatement("DELETE FROM flights WHERE flight_name=?");
     preparedStatementDelete.setString(1,bean.getFlightName());
      int n = preparedStatementDelete.executeUpdate();
      System.out.println(n);
      
      if(n!=0){
    	  bean.setFlagFlight(true);
    	  System.out.println(bean.isFlagFlight());  
      }
      else{
    	  bean.setFlagFlight(false);
    	  System.out.println(bean.isFlagFlight());  
      }
      
      
      preparedStatementDelete = 
    	  connection1.prepareStatement("DELETE FROM flightdate WHERE flight_name=?");
     preparedStatementDelete.setString(1,bean.getFlightName());
      int n1 = preparedStatementDelete.executeUpdate();
      System.out.println(n1);
      
      if(n1!=0){
    	  bean.setFlagDate(true);
    	  System.out.println(bean.isFlagFlight());  
      }
      else{
    	  bean.setFlagDate(false);
    	  System.out.println(bean.isFlagFlight());  
      }
      
      
 }
catch(Exception exception){ 
      System.out.println(exception); 
} 
		
	}
	public void ViewFlightDb(FlightBean bean) {
		
		 ArrayList ar1 = new ArrayList();
		 ArrayList ar2 = new ArrayList();
		 ArrayList ar3 = new ArrayList();
		 ArrayList ar4 = new ArrayList();
		 ArrayList ar5 = new ArrayList();
		 ArrayList ar6 = new ArrayList();
		 ArrayList ar7 = new ArrayList();
		 
		 Connection connection = null;
		    try{ 
		      Class.forName("oracle.jdbc.driver.OracleDriver").newInstance(); 
		      connection = DriverManager.getConnection("jdbc:oracle:thin:@172.16.68.55:1521:orcl1","team5","collabera"); 
		 
		      PreparedStatement preparedStatementAdd = 
		                         connection.prepareStatement("SELECT * from flights");
			 ResultSet rs;
		     rs = preparedStatementAdd.executeQuery();
		      
		      while ( rs.next() ) {
		     	  bean.setFlightName(rs.getString(1));
		     	  ar1.add(bean.getFlightName());
		     	 bean.setDestinationValue(rs.getString(4));
		    	  ar2.add(bean.getDestinationValue());
		    	  bean.setSourceValue(rs.getString(3));
		     	  ar3.add(bean.getSourceValue());
		     	 bean.setCppValue(rs.getInt(5));
		     	 Integer convert1 = new Integer(bean.getCppValue());
		    	  ar4.add(convert1);
		    	  bean.setCompName(rs.getString(2));
		     	  ar5.add(bean.getCompName());
		     	 
		       }
		      
		      bean.setSize(ar1.size());
		      bean.setFlightNameAL(ar1);
		      bean.setDestinationValueAL(ar2);
		      bean.setSourceValueAL(ar3);
		      bean.setCppValueAL(ar4);
		      bean.setCompNameAL(ar5);
		 
		      connection.close();
		      
	} catch(Exception exception){ 
		   System.out.println(exception); 
		} 
	
	try{ 
	      Class.forName("oracle.jdbc.driver.OracleDriver").newInstance(); 
	      connection = DriverManager.getConnection("jdbc:oracle:thin:@172.16.68.55:1521:orcl1","team5","collabera"); 
	 
	      PreparedStatement preparedStatementAdd = 
	                         connection.prepareStatement("SELECT * from flightdate");
		 ResultSet rs;
	     rs = preparedStatementAdd.executeQuery();
		
	     while ( rs.next() ) {
	
	    	 bean.setDateFlight(rs.getString(2));
	    	  ar6.add(bean.getDateFlight());
	    	  bean.setTimeFlight(rs.getString(3));
	     	  ar7.add(bean.getTimeFlight());
	     }
	     
	      bean.setDateFlightAL(ar6);
	      bean.setTimeFlightAL(ar7);
	      
	      connection.close();
	 }catch(Exception exception){ 
		   System.out.println(exception); 
		} 
	}
}