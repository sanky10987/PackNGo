package dbclass5;

import java.awt.List;
import java.beans.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import bean5.BeanSearchHotel;
import bean5.HotelBean;
import facade5.FacadeMain;

public class DbHotel {
	private int hotelId1;
	private String hotelName1;
	private String description1;
	private String location1;
	private int rating1;
	private String roomType1;
	private int costPerRoom1;
	public DbHotel(HotelBean hb) {
		this.hotelId1=hb.getHotelId();
		this.hotelName1=hb.getHotelName();
		this.description1=hb.getDescription();
		this.location1=hb.getLocation();
		this.rating1=hb.getRating();
		this.roomType1=hb.getRoomType();
		this.costPerRoom1=hb.getCostPerRoom();
	}

	public DbHotel(BeanSearchHotel hb) {
		this.location1=hb.getLocation();
		this.rating1=hb.getRating();
		this.roomType1=hb.getRoomType();
		/*System.out.println(location1);
		System.out.println(rating1);
		System.out.println(roomType1);*/
	}
	public DbHotel() {
		// TODO Auto-generated constructor stub
	}

	public void InsertDbHotel() throws Exception{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@172.16.68.55:1521:orcl1","team5","collabera");
		PreparedStatement preparedStatement = connection.prepareStatement("insert into Hotels values(hotels_sequence.nextVal,?,?,?,?,?,?)");
	    preparedStatement.setString(1, hotelName1);
	    preparedStatement.setString(2, location1);
	    preparedStatement.setString(3, description1);
	    preparedStatement.setInt(4, rating1);
	    preparedStatement.setString(5,roomType1);
	    preparedStatement.setInt(6, costPerRoom1); 
	    preparedStatement.executeUpdate(); 
	    System.out.println("Values is inserted successfully");
	    connection.close();
	}
	public void DbSearchHotel(BeanSearchHotel hb) throws Exception{
		System.out.println("In DB Function");
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@172.16.68.55:1521:orcl1","team5","collabera");
		//String str="select * from Hotelss where HOTEL_LOCATION=? and HOTEL_RATING=? and ROOM_TYPE=?";
		PreparedStatement stmt=connection.prepareStatement("select * from Hotels where HOTEL_LOCATION=? and HOTEL_RATING=? and ROOM_TYPE=?");
		stmt.setString(1,location1);
		stmt.setInt(2,rating1);
		stmt.setString(3,roomType1);
		System.out.println(location1);
		System.out.println(rating1);
		System.out.println(roomType1);
		//int n=stmt.executeUpdate();
		//System.out.println(n);
		System.out.println("After Prepared");
		ArrayList a1=new ArrayList();
		ArrayList a2=new ArrayList();
		ArrayList a3=new ArrayList();
		ArrayList a4=new ArrayList();
		ArrayList a5=new ArrayList();
		ArrayList a6=new ArrayList();
		ArrayList a7=new ArrayList();
		ResultSet rs1;
		rs1=stmt.executeQuery();
		/*System.out.println(location1);
		System.out.println(rating1);
		System.out.println(roomType1);*/
		//int n=rs1.getRow();
		//System.out.println(n);
		//rs1.next();
		
		//System.out.println(rs1.getString(2));
		while(rs1.next())
		{	
			Integer i=new Integer(rs1.getInt(1));
			System.out.println(rs1.getInt(1));
			a1.add(i);
			a2.add(rs1.getString(2));
			System.out.println(rs1.getString(2));
			a3.add(rs1.getString(3));
			System.out.println(rs1.getString(3));
			a4.add(rs1.getString(4));
			System.out.println(rs1.getString(4));
			System.out.println(rs1.getInt(5));
			System.out.println(rs1.getString(6));
			System.out.println(rs1.getInt(7));
			int i9=rs1.getInt(5);
			Integer i5=new Integer(i9);
			a5.add(i5);
			a6.add(rs1.getString(6));
			int i7=rs1.getInt(7);
			Integer i8=new Integer(i7);
			a7.add(i8);
			
		}
		System.out.println(a1.size());
		System.out.println(a2.size());
		System.out.println(a3.size());
		System.out.println(a4.size());
		System.out.println(a5.size());
		System.out.println(a6.size());
		System.out.println(a7.size());
		
		hb.setHotelId(a1);
		hb.setHotelName(a2);
		hb.setLocation1(a3);
		hb.setDescription(a4);
		hb.setRating1(a5);
		hb.setRoomType1(a6);
		hb.setCostPerRoom(a7);
		stmt.close();
		connection.close();
		 
		
	}
	/*public static void main(String args[]) throws Exception{
		DbHotel db=new DbHotel("Bangalore",5,"D");
		System.out.println(db.DbSearchHotel());
	}*/

	public void bookkHotel(HotelBean hb) throws ClassNotFoundException, SQLException {
		this.hotelId1=hb.getHotelId();
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@172.16.68.55:1521:orcl1","team5","collabera");
		//String str="select * from Hotelss where HOTEL_LOCATION=? and HOTEL_RATING=? and ROOM_TYPE=?";
		PreparedStatement stmt=connection.prepareStatement("select * from Hotels where HOTEL_ID=?");
		stmt.setInt(1,hotelId1);
		//int n=stmt.executeUpdate();
		//System.out.println(n);
		ResultSet rs1;
		rs1=stmt.executeQuery();
		rs1.next();
		
		//System.out.println(rs1.getString(2));
		hb.setHotelName(rs1.getString(2));
		hb.setLocation(rs1.getString(3));
		hb.setRating(rs1.getInt(5));
		hb.setCostPerRoom(rs1.getInt(7));
		rs1.close();
		stmt.close();
		connection.close();
		
	}

	public void viewHotels(HotelBean hb) throws ClassNotFoundException, SQLException {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@172.16.68.55:1521:orcl1","team5","collabera");
		//String str="select * from Hotelss where HOTEL_LOCATION=? and HOTEL_RATING=? and ROOM_TYPE=?";
		PreparedStatement stmt=connection.prepareStatement("select * from Hotels");
		ArrayList a1=new ArrayList();
		ArrayList a2=new ArrayList();
		ArrayList a3=new ArrayList();
		ArrayList a4=new ArrayList();
		ArrayList a5=new ArrayList();
		ArrayList a6=new ArrayList();
		ArrayList a7=new ArrayList();
		ResultSet rs1;
		rs1=stmt.executeQuery();
		int n=rs1.getRow();
		System.out.println(n);
		//rs1.next();
		
		//System.out.println(rs1.getString(2));
		while(rs1.next())
		{	
			a2.add(rs1.getString(2));
			a3.add(rs1.getString(3));
			a4.add(rs1.getString(4));
			Integer i1=new Integer(rs1.getInt(5));
			a5.add(i1);
			a6.add(rs1.getString(6));
			Integer i2=new Integer(rs1.getInt(7));
			a5.add(i2);
		}
		hb.setHotelName1(a2);
		hb.setLocation1(a3);
		hb.setDescription1(a4);
		hb.setRating1(a5);
		hb.setRoomType1(a6);
		hb.setCostPerRoom1(a7);
		rs1.close();
		stmt.close();
		connection.close();
		 
	}
public void DeleteHotelDb(HotelBean bean) {
		
		System.out.println(bean.getHotelId());
		 int id = bean.getHotelId();
		 System.out.println(id);
		 
		 Connection connection1 = null;
		    try{ 
		    	System.out.println("yes");
		      Class.forName("oracle.jdbc.driver.OracleDriver").newInstance(); 
		      System.out.println("yes");
		      connection1 = DriverManager.getConnection("jdbc:oracle:thin:@172.16.68.55:1521:orcl1","team5","collabera"); 
		      System.out.println("yes");
	     PreparedStatement preparedStatementDelete = 
	    	  connection1.prepareStatement("DELETE FROM hotels WHERE hotel_id=?");
	     preparedStatementDelete.setInt(1,id);
	      int n = preparedStatementDelete.executeUpdate();
	      System.out.println(n);
	      
	      if(n!=0){
	    	  bean.setFlag(true);
	    	  System.out.println(bean.isFlag());  
	      }
	      else{
	    	  bean.setFlag(false);
	    	  System.out.println(bean.isFlag());  
	      }   
	 }
	catch(Exception exception){ 
	      System.out.println(exception); 
	} 
		
	}
	public void EditHotelDb(HotelBean bean){
		int id = bean.getHotelId();		//
		System.out.println(bean.getHotelId());

		 Connection connection;
		    try{ 
		      Class.forName("oracle.jdbc.driver.OracleDriver").newInstance(); 
		      connection = DriverManager.getConnection("jdbc:oracle:thin:@172.16.68.55:1521:orcl1","team5","collabera"); 
		      ResultSet rset;
		      System.out.println("executed1");
		      PreparedStatement preparedStatementEdit = 
	    	  connection.prepareStatement("SELECT * FROM hotels WHERE hotel_id=?");
		      preparedStatementEdit.setInt(1,id);
		      System.out.println("executed2");
		      rset = preparedStatementEdit.executeQuery();
		      System.out.println("executed3");
		      
		      if(rset == null){
		    	  bean.setFlag(false); 
		    	  System.out.println(bean.isFlag());
		      }
		      else if(rset != null){
	 
		      while ( rset.next() ) {
	    	   
	      	   bean.setHotelId(rset.getInt(1));		//
	           bean.setHotelName(rset.getString(2));
	           bean.setDescription(rset.getString(3));
	           bean.setLocation(rset.getString(4));
	           bean.setRating(rset.getInt(5));
	           bean.setRoomType(rset.getString(6));
	           bean.setCostPerRoom(rset.getInt(7));
	           bean.setFlag(true);
	           System.out.println(bean.isFlag());
	            
	           System.out.println(bean.getHotelId());
	      	   System.out.println(bean.getHotelName());
	      	   System.out.println(bean.isFlag());
	      	     		
	       }
	   }
		
	}catch(Exception exception){ 
	      System.out.println(exception); 
	} 
	}
	
	public void EditedHotelDb(HotelBean bean){
		int id = bean.getHotelId();		//
		 System.out.println("Id = "+id);
		 System.out.println("yup");
		 Connection connection = null;
  try{ 
    Class.forName("oracle.jdbc.driver.OracleDriver").newInstance(); 
    connection = DriverManager.getConnection("jdbc:oracle:thin:@172.16.68.55:1521:orcl1","team5","collabera"); 
    System.out.println("yup");
    PreparedStatement preparedStatementAdd = 
               connection.prepareStatement("update hotels set hotel_name = ?,"+
                 "hotel_location=?,hotel_description=?,hotel_rating=?,room_type=?, cost_per_room=? where hotel_id = "+id);
    
   /* System.out.println(bean.getPackageName());
    System.out.println(bean.getDestination());
    System.out.println(bean.getDescription()); 
    System.out.println(bean.getHotelId());
    System.out.println(bean.getNumOfDays());
    System.out.println(bean.getHolidayType());
    System.out.println(bean.getCostPerPerson());
    System.out.println(bean.getPackageId());*/
   														 
    preparedStatementAdd.setString(1,bean.getHotelName()); 
    preparedStatementAdd.setString(2,bean.getDescription()); 
    preparedStatementAdd.setString(3,(bean.getLocation()));
    preparedStatementAdd.setInt(4,(bean.getRating()));
    preparedStatementAdd.setString(5,bean.getRoomType());
    preparedStatementAdd.setInt(6,(bean.getCostPerRoom()));		//
    System.out.println("yup");
    int n=preparedStatementAdd.executeUpdate(); 
    System.out.println(n);
    System.out.println("yup");
    if(n!=0){
   	 System.out.println("true");
    }
    else{
   	 System.out.println("true");
    }    
   preparedStatementAdd.close();
       
}catch(Exception exception){ 
   System.out.println(exception); 
	} 
	}

}
