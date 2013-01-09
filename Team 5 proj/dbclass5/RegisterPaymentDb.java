package dbclass5;
import bean5.PaymentBean;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

/**
 * pAcK n GO
 * @author Sourabh Mishra
 * @version 1.0
 * 
 */

public class RegisterPaymentDb {

	private int orderid;
	private String paymentMode;
	private String paymentDetails;
	private String paymentStatus ;
	private String orderStatus;
	private String deliveryDate;
	
	Date date = new Date (0000-00-00);
	
	public void setparam(PaymentBean pb)
	{
		this.orderid=pb.getOrderId();
		this.paymentMode = pb.getPaymentMode();
		this.paymentDetails = pb.getPaymentDetails();
		this.deliveryDate=pb.getDeliveryDate();
		
	}
	public void InsertPayment(PaymentBean pb)
	{	
			orderStatus = "O";
			paymentStatus="RC";
		try
		{
			  Class.forName("oracle.jdbc.driver.OracleDriver").newInstance(); 
			  Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@172.16.68.55:1521:orcl1","team5","collabera"); 
			  //Statement statement = connection.createStatement(); 
			  System.out.println("Connection Established");
			  PreparedStatement pStatement = connection.prepareStatement("Insert into payment values(?,?,?,?,?,?)");
			  pStatement.setInt(1,orderid);
		      pStatement.setString(2,paymentMode);
		      pStatement.setString(3,paymentDetails);
		      pStatement.setString(4,paymentStatus);
		      pStatement.setString(5,orderStatus);
		      pStatement.setDate(6,date.valueOf(deliveryDate));
		 
		      
		      int n = pStatement.executeUpdate();
		      System.out.println("Insertion in payment table sucessfull");
		}
		catch (Exception e)
		{
			System.out.println("Error"+e);
		}
	}
	
}
