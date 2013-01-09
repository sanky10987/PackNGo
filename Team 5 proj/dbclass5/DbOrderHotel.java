package dbclass5;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import bean5.OrderHotelBean;

public class DbOrderHotel {
	Date date = new Date(0000-00-00);
	private int user_id;
	private int package_id;
	private String start_date;
	private String end_date;
	private String flight_name;
	private int hotel_id;
	private int num_of_adults;
	private int num_of_child;
	private int total_cost;
	public DbOrderHotel(OrderHotelBean ob) {
		this.user_id=ob.getUser_id();
		this.package_id=ob.getPackage_id();
		this.start_date=ob.getStart_date();
		this.end_date=ob.getEnd_date();
		this.flight_name=ob.getFlight_name();
		this.hotel_id=ob.getHotel_id();
		this.num_of_adults=ob.getNum_of_adults();
		this.num_of_child=ob.getNum_of_child();
		this.total_cost=ob.getTotal_cost();
	}
	public void InsertDbHotel() throws Exception{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@172.16.68.55:1521:orcl1","team5","collabera");
		PreparedStatement preparedStatement = connection.prepareStatement("insert into Orders values(order_sequence.nextVal,?,?,?,?,?,?,?,?,?)");
		preparedStatement.setInt(1,user_id); 
	    preparedStatement.setInt(2,package_id);
	    preparedStatement.setDate(3,Date.valueOf(start_date));
	    preparedStatement.setDate(4,Date.valueOf(end_date));
	    preparedStatement.setString(5,flight_name);
	    preparedStatement.setInt(6,hotel_id);
	    preparedStatement.setInt(7,num_of_adults); 
	    preparedStatement.setInt(8,num_of_child); 
	    preparedStatement.setInt(9,total_cost);
	    preparedStatement.executeUpdate(); 
	    System.out.println("Values is inserted successfully");
	    preparedStatement.close();
	    connection.close();
	}
}