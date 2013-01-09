package dbclass5;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean5.ComplaintBean;
import bean5.PaymentBean;

public class PaymentDb {
	public void ViewPaymentDb(PaymentBean bean){

		System.out.println(bean.isFlag());
		 ArrayList ar1 = new ArrayList();
		 ArrayList ar2 = new ArrayList();
		 ArrayList ar3 = new ArrayList();
		 ArrayList ar4 = new ArrayList();
		 ArrayList ar5 = new ArrayList();
		 ArrayList ar6 = new ArrayList();
	
		 Connection connection = null;
		 
		 try{ 
		     Class.forName("oracle.jdbc.driver.OracleDriver").newInstance(); 
		     connection = DriverManager.getConnection("jdbc:oracle:thin:@172.16.68.55:1521:orcl1","team5","collabera"); 

		     PreparedStatement preparedStatementAdd = 
		                        connection.prepareStatement("SELECT * from payment");
			 ResultSet paymentRecords;
			 paymentRecords = preparedStatementAdd.executeQuery();
		    
		    while ( paymentRecords.next() ) {
		    	bean.setOrderId(paymentRecords.getInt(1));
		    	Integer convert = new Integer(bean.getOrderId());
		    	ar1.add(convert);
		    	bean.setPaymentMode(paymentRecords.getString(2));
		   	  	ar2.add(bean.getPaymentMode());
		   	  	bean.setPaymentDetails(paymentRecords.getString(3));
		    	ar3.add(bean.getPaymentDetails());
		    	bean.setPaymentStatus(paymentRecords.getString(4));
		   	  	ar4.add(bean.getPaymentStatus());  
		   	    bean.setOrderStatus(paymentRecords.getString(5));
		   	  	ar4.add(bean.getOrderStatus());  
		   	    bean.setDeliveryDate(paymentRecords.getString(6));
		   	  	ar4.add(bean.getDeliveryDate());  
		   	  	
		    }
		     
		     bean.setSize(ar1.size());
		     System.out.println(ar1.size());
		     bean.setOrderIdAL(ar1);
		     bean.setPaymentModeAL(ar2);
		     bean.setPaymentDetailsAL(ar3);
		     bean.setPaymentStatusAL(ar4);
		     bean.setOrderStatusAL(ar4);
		     bean.setDeliveryDateAL(ar4);
		     
		     System.out.println(bean.getDeliveryDateAL());
		     
		  }catch(Exception exception){ 
		    System.out.println(exception); 
		  } 
		}

	public void EditPaymentDb(PaymentBean bean) {
		 int id = bean.getOrderId();		//
		 System.out.println("Id = "+id);
		 System.out.println("yup");
		 Connection connection = null;
   try{ 
     Class.forName("oracle.jdbc.driver.OracleDriver").newInstance(); 
     connection = DriverManager.getConnection("jdbc:oracle:thin:@172.16.68.55:1521:orcl1","team5","collabera"); 
     System.out.println("yup");
     PreparedStatement updatePayment = 
                connection.prepareStatement("update payment set payment_status = ?,order_status=? where order_id = "+id);
     
   /*  System.out.println(bean.getPackageName());
     System.out.println(bean.getDestination());
     System.out.println(bean.getDescription()); 
     System.out.println(bean.getHotelId());
     System.out.println(bean.getNumOfDays());
     System.out.println(bean.getHolidayType());
     System.out.println(bean.getCostPerPerson());
     System.out.println(bean.getPackageId());*/
    														 
     updatePayment.setString(1,bean.getPaymentStatus()); 
     updatePayment.setString(2,bean.getOrderStatus()); 
    
     System.out.println("yup");
     int n=updatePayment.executeUpdate(); 
     System.out.println(n);
     System.out.println("yup");
     if(n!=0){
    	 bean.setFlag(true);
    	 System.out.println("true");
     }
     else{
    	 bean.setFlag(false);
    	 System.out.println("true");
     }    
    updatePayment.close();
        
}catch(Exception exception){ 
    System.out.println(exception); 
	} 

		
	}		 
}
