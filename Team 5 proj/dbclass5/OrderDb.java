package dbclass5;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Date;
import java.sql.ResultSet;

import bean5.FlightSearchBean;
import bean5.OrderBean;
/**
 * pAcK n GO
 * @author Sourabh Mishra
 * @version 1.0
 * 
 */
public class OrderDb {

	private int orderId;
	private int userId ;
	private int packageId;
	private String startDate;
	private String endDate="2010-12-30";
	private String flightName;
	private int hotelId;
	private int numA;
	private int numC;
	private int totalCost;

	Date date = new Date(0000-00-00);
	
	public void setParam (OrderBean ob){

		this.flightName=ob.getFlightName();
		System.out.println(ob.getStartDate());
		this.startDate=ob.getStartDate();
		System.out.println(startDate);
		this.numA=ob.getNumAdult();
		this.numC=ob.getNumChild();
		this.totalCost=ob.getTotalAmount();
		//this.hotelId=ob.getHotelId();
		this.packageId=ob.getPackageId();
		this.userId=ob.getUserId();
		
		
}
	

	public void insertOrder(OrderBean ob)
	{	
		System.out.println("Inside DB Class");
		try {
			  Class.forName("oracle.jdbc.driver.OracleDriver").newInstance(); 
			  Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@172.16.68.55:1521:orcl1","team5","collabera"); 
			  //Statement statement = connection.createStatement(); 
			  System.out.println("Connection Established");
			  PreparedStatement pStatement = 
				  connection.prepareStatement("insert into orders(user_id,package_id,start_date,end_date,flight_name,num_of_adults,num_of_child,total_cost) values(?,?,?,?,?,?,?,?)");
			 // System.out.println("Query done");
			  //ps.setInt(1,orderId);
			  //System.out.println("Order Id");
			  pStatement.setInt(1,userId);
		     // System.out.println("userId");
		      pStatement.setInt(2,packageId);
		     // System.out.println("Package ID");
		     // System.out.println(packageId);
		      pStatement.setDate(3,date.valueOf(startDate));
		     // System.out.println(date.valueOf(startDate));
		      pStatement.setDate(4,date.valueOf(endDate));
		     // System.out.println(date.valueOf(endDate));
		      pStatement.setString(5,flightName);
		     // System.out.println(flightName);
		      pStatement.setInt(6,numA);
		    //  System.out.println(numA);
		      pStatement.setInt(7,numC);
		     // System.out.println(numC);
		      pStatement.setInt(8,totalCost);
		     // System.out.println(totalCost);
		 
		      
		      int n = pStatement.executeUpdate();
		      connection.close();
		      System.out.println("Insertion in Orders Table Sucessfull");
		}catch(Exception se)
		{
			System.out.println("Error"+se);
		}
	
	}
	
	public void insertOrderFlight(OrderBean ob)
	{	
		System.out.println("Inside DB Class");
		try {
			  Class.forName("oracle.jdbc.driver.OracleDriver").newInstance(); 
			  Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@172.16.68.55:1521:orcl1","team5","collabera"); 
			  //Statement statement = connection.createStatement(); 
			  System.out.println("Connection Established");
			  PreparedStatement pStatement = 
				  connection.prepareStatement("insert into orders(user_id,start_date,end_date,flight_name,num_of_adults,num_of_child,total_cost) values(?,?,?,?,?,?,?)");
			 // System.out.println("Query done");
			  //ps.setInt(1,orderId);
			  //System.out.println("Order Id");
			  pStatement.setInt(1,userId);
		      System.out.println("UserId");
		      pStatement.setDate(2,date.valueOf(startDate));
		      System.out.println("Start Date");
		      pStatement.setDate(3,date.valueOf(endDate));
		     System.out.println("End Date");
		     pStatement.setString(4,flightName);
		      System.out.println("Flight Name");
		      pStatement.setInt(5,numA);
		      System.out.println("Num of Adults");
		      pStatement.setInt(6,numC);
		      System.out.println("Num of Child");
		      pStatement.setInt(7,totalCost);
		      System.out.println("Total Cost");
		 
		      
		      int n = pStatement.executeUpdate();
		      connection.close();
		      System.out.println("Insertion in Orders Table Sucessfull");
		}catch(Exception se)
		{
			System.out.println("Error"+se);
		
		}
	}
	public void getOrderId(OrderBean ob)
	{
		try {
			  Class.forName("oracle.jdbc.driver.OracleDriver").newInstance(); 
			  Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@172.16.68.55:1521:orcl1","team5","collabera"); 
			  //Statement statement = connection.createStatement(); 
			  System.out.println("Connection Established");
			  PreparedStatement pStatement = 
				  connection.prepareStatement("select order_id from orders where total_cost=? ");
			  System.out.println("Query done");
			  pStatement.setInt(1,totalCost);
			  ResultSet orderResultSet = pStatement.executeQuery() ;
			  while(orderResultSet.next())
			  {
				  orderId = orderResultSet.getInt(1);
			  }
			  ob.setOrderId(orderId);
	}
		catch (Exception e)
		{
			System.out.println("Error"+e);
		}
	
	
}
}
