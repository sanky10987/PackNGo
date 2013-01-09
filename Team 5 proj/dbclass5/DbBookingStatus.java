package dbclass5;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean5.BeanSearchHotel;
import bean5.OrderHotelBean;
import bean5.PaymentBean;

public class DbBookingStatus {
	private String order_status1;
	public void DbBookedHistory(PaymentBean pb,OrderHotelBean ob,int n) throws Exception{
		//this.order_status1=pb.getOrder_status();
		order_status1="O";
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@172.16.68.55:1521:orcl1","team5","collabera");
		//String str="select * from Hotelss where HOTEL_LOCATION=? and HOTEL_RATING=? and ROOM_TYPE=?";
		PreparedStatement stmt=connection.prepareStatement("select * from orders where order_id=(select order_id from payment where order_status=?) and user_id=(select user_id from users where user_id=?)");
		stmt.setString(1,order_status1);
		stmt.setInt(2,n);
		//int n=stmt.executeUpdate();
		//System.out.println(n);
		ArrayList a1=new ArrayList();
		ArrayList a3=new ArrayList();
		ArrayList a4=new ArrayList();
		ArrayList a5=new ArrayList();
		ArrayList a6=new ArrayList();
		ArrayList a7=new ArrayList();
		ArrayList a8=new ArrayList();
		ArrayList a9=new ArrayList();
		ArrayList a10=new ArrayList();
		ResultSet rs1;
		rs1=stmt.executeQuery();
		n=rs1.getRow();
		System.out.println(n);
		//rs1.next();
		
		//System.out.println(rs1.getString(2));
		while(rs1.next())
		{	
			Integer i=new Integer(rs1.getInt(1));
			a1.add(i);
			Integer i1=new Integer(rs1.getInt(3));
			a3.add(i1);
			Integer i2=new Integer(rs1.getInt(4));
			a4.add(rs1.getDate(4));
			
			a5.add(rs1.getDate(5));
			a6.add(rs1.getString(6));
			Integer i3=new Integer(rs1.getInt(7));
			a7.add(i3);
			Integer i4=new Integer(rs1.getInt(8));
			a8.add(i4);
			Integer i5=new Integer(rs1.getInt(9));
			a9.add(i5);
			Integer i6=new Integer(rs1.getInt(10));
			a10.add(i6);
		}
		ob.setOrder_id1(a1);
		ob.setPackage_id1(a3);
		ob.setStart_date1(a4);
		ob.setEnd_date1(a5);
		ob.setFlight_name1(a6);
		ob.setHotel_id1(a7);
		ob.setNum_of_adults1(a8);
		ob.setNum_of_child1(a9);
		ob.setTotal_cost1(a10);
		stmt.close();
		connection.close();
		}
	/*public static void main(String args[]) throws Exception{
		DbBookingStatus db=new DbBookingStatus();
		PaymentBean pb = null;
		OrderBean ob = null;
		System.out.println(db.DbBookedHistory(pb,ob,2));
}*/
}
