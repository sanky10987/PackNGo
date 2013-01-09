package dbclass5;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Date;
import java.util.ArrayList;
import java.text.SimpleDateFormat;


//import bean5.EmployeeBean;
import bean5.FlightSearchBean;

public class FlightSearchDb {

	/**
	 * pAcK n GO
	 * @author Sourabh Mishra
	 * @version 1.0
	 * 
	 */
	private String flightname;
	private String compname;
	private String source;
	private String dest;
	private int costpp;
	private String depdate;
	private String adate;
	private int numadult;
	private int numchild;
	
	Date date = new Date(0000-00-00);
	
 public void setParam (FlightSearchBean fs){
		// TODO Auto-generated method stub
		
	  
	 	this.source = fs.getSource1();
	 	this.dest = fs.getDest1();
	 	this.adate = fs.getAdate1();
	 	this.depdate =fs.getDepdate1();
	  //this.numadult = fs.getNumadult1();
	 	//this.numchild = fs.getNumchild1();
	 	
	 
	 
		 	  
		  System.out.println(this.source);
		  System.out.println(this.dest);
		  System.out.println(this.depdate);
		  
 }
	
	
	public void getFlightDetailsdep(FlightSearchBean fb){
		//FlightSearchBean fb1 = new FlightSearchBean();
		 //String t="test";
		try {
			  Class.forName("oracle.jdbc.driver.OracleDriver").newInstance(); 
			  Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@172.16.68.55:1521:orcl1","team5","collabera"); 
			  //Statement statement = connection.createStatement(); 
			  System.out.println("Connection Established");
			  PreparedStatement pStatement = connection.prepareStatement("SELECT * from flightdata WHERE SOURCE=? and date_of_flight=? and DESTINATION=?");
		      pStatement.setString(1,source);
		      pStatement.setDate(2,date.valueOf(depdate));
		      pStatement.setString(3,dest);
		      
		      
		      
		     
		 
		      
		      ResultSet rs = pStatement.executeQuery() ;
		      System.out.println("Query Executed");
		     		      
		      ArrayList arrayList1=new ArrayList();
		      ArrayList arrayList2=new ArrayList();
		      ArrayList arrayList3=new ArrayList();
		      ArrayList arrayList4=new ArrayList();
		      ArrayList ar5=new ArrayList();
		      ArrayList ar6=new ArrayList();
		      ArrayList ar7=new ArrayList();
		      
		      		      
		      while(rs.next())
		      {

		    	  	flightname = rs.getString(1);
		    	  	arrayList1.add(flightname);
		    	  		      compname = rs.getString(2);
		    	  		      //System.out.println(rs.getString(2));
		    	  		      arrayList2.add(compname);
		    	  		      source = rs.getString(3);
		    	  		      arrayList3.add(source);
		    	  		      //System.out.println(rs.getString(3));
		    	  		      dest = rs.getString(4);
		    	  		      arrayList4.add(dest);
		    	  		     // System.out.println(dest);
		    	  		      String dof = rs.getString(6);
		    	  		      //String dof2 = format.format(rs.getString(7));
		    	  		      ar6.add(dof);
		    	  		      String tof = rs.getString(7);
		    	  		      ar7.add(tof);
		    	  		      String cpp = rs.getString(5);
		    	  		      ar5.add(cpp);

		      }
		      
		      fb.setSize(arrayList1.size());
		      //System.out.println(arrayList1.size());
		      fb.setFlightname(arrayList1);
		      fb.setCompname(arrayList2);
		      fb.setSource(arrayList3);
		      fb.setDest(arrayList4);
		      fb.setDepdate(ar6);
		      fb.setTime(ar7);
		      fb.setCostpp(ar5);
		     
		    
		    connection.close();
		}
		
			  
		
		catch(Exception exception){ 
		      System.out.println(exception);
		    }
		
	
	}
	public void getFlightDetailsarr(FlightSearchBean fb){
		FlightSearchBean fb1 = new FlightSearchBean();
		 //String t="test";
		try {
			  Class.forName("oracle.jdbc.driver.OracleDriver").newInstance(); 
			  Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@172.16.68.55:1521:orcl1","team5","collabera"); 
			  //Statement statement = connection.createStatement(); 
			  System.out.println("Connection Established");
			  PreparedStatement pStatement = connection.prepareStatement("SELECT * from flightdata WHERE SOURCE=? and date_of_flight=? and DESTINATION=?");
		      pStatement.setString(1,source);
		      pStatement.setDate(2,date.valueOf(adate));
		      pStatement.setString(3,dest);
		      
		      //PreparedStatement pStatement1 = connection.prepareStatement("SELECT * from flightdata WHERE date_of_flight=?");
		      
		     
		 
		      
		      ResultSet rs = pStatement.executeQuery() ;
		      System.out.println("Query Executed");
		     		      
		      ArrayList arrayList1=new ArrayList();
		      ArrayList arrayList2=new ArrayList();
		      ArrayList arrayList3=new ArrayList();
		      ArrayList arrayList4=new ArrayList();
		      ArrayList arrayList5=new ArrayList();
		      ArrayList arrayList6=new ArrayList();
		      ArrayList arrayList7=new ArrayList();
		      
		      
		      
		     
		      //System.out.println(rs.getString(1));
		      
		      while(rs.next())
		      {
		      flightname = rs.getString(1);
		      //System.out.println(flightname);
		      arrayList1.add(flightname);
		      compname = rs.getString(2);
		      arrayList2.add(compname);
		      source = rs.getString(3);
		      arrayList3.add(source);
		      //System.out.println(source);
		      dest = rs.getString(4);
		      arrayList4.add(dest);
		      String dof = rs.getString(7);
		      //String dof2 = format.format(rs.getString(7));
		      arrayList7.add(dof);
		      String tof = rs.getString(6);
		      arrayList6.add(tof);
		      String cpp = rs.getString(5);
		      arrayList5.add(cpp);
	      
		      }
		      
		      fb.setFlightname(arrayList1);
		      fb.setSource(arrayList2);
		      fb.setDest(arrayList3);
		      fb.setDepdate(arrayList4);
		      fb.setTime(arrayList6);
		      fb.setCostpp(arrayList5);
		      
		       	      
		    
		    connection.close();
		}
		
			  
		
		catch(Exception exception){ 
		      System.out.println(exception);
		    }
		
	
	}
	
	

}
