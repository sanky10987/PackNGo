package dbclass5;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import bean5.ComplaintBean;
import bean5.FeedbackBean;

public class FeedbackDb {
	
	public void ViewFeedbackDb(FeedbackBean bean){

		System.out.println(bean.isFlag());
		 ArrayList ar1 = new ArrayList();
		 ArrayList ar2 = new ArrayList();
		
	
		 Connection connection = null;
   try{ 
     Class.forName("oracle.jdbc.driver.OracleDriver").newInstance(); 
     connection = DriverManager.getConnection("jdbc:oracle:thin:@172.16.68.55:1521:orcl1","team5","collabera"); 

     PreparedStatement preparedStatementAdd = 
                        connection.prepareStatement("SELECT * from feedback");
	 ResultSet feedbackRecords;
	 feedbackRecords = preparedStatementAdd.executeQuery();
     
   /* if(complaintRecords==null){
    	System.out.println("false");
    	}
    else if(complaintRecords!=null){
    	System.out.println("true");
	}*/
     while ( feedbackRecords.next() ) {
    	bean.setUserId(feedbackRecords.getInt(1));
    	System.out.println(bean.getUserId());
    	Integer convert1 = new Integer(bean.getUserId());
    	ar1.add(convert1);
    	bean.setTestimonial(feedbackRecords.getString(2));
   	  	ar2.add(bean.getTestimonial());
    }
     
     bean.setSize(ar1.size());
     System.out.println(ar1.size());
     bean.setUserIdAL(ar1);
     bean.setTestimonialAL(ar2);
     System.out.println(bean.getUserIdAL());
     
  } catch(Exception exception){ 
    System.out.println(exception); 
  } 
}
}
