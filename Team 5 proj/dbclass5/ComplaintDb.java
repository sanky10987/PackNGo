package dbclass5;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import bean5.ComplaintBean;

public class ComplaintDb {
	
	public void ViewComplaintDb(ComplaintBean bean){

		System.out.println(bean.isFlag());
		 ArrayList ar1 = new ArrayList();
		 ArrayList ar2 = new ArrayList();
		 ArrayList ar3 = new ArrayList();
		 ArrayList ar4 = new ArrayList();
	
		 Connection connection = null;
   try{ 
     Class.forName("oracle.jdbc.driver.OracleDriver").newInstance(); 
     connection = DriverManager.getConnection("jdbc:oracle:thin:@172.16.68.55:1521:orcl1","team5","collabera"); 

     PreparedStatement preparedStatementAdd = 
                        connection.prepareStatement("SELECT * from complaints");
	 ResultSet complaintRecords;
    complaintRecords = preparedStatementAdd.executeQuery();
     
   /* if(complaintRecords==null){
    	System.out.println("false");
    	}
    else if(complaintRecords!=null){
    	System.out.println("true");
	}*/
     while ( complaintRecords.next() ) {
    	bean.setComplaintId(complaintRecords.getInt(1));
    	System.out.println(bean.getComplaintId());
    	Integer convert1= new Integer(bean.getComplaintId());
    	ar1.add(convert1);
    	bean.setComplaintType(complaintRecords.getString(2));
   	  	ar2.add(bean.getComplaintType());
   	  	bean.setDescription(complaintRecords.getString(3));
    	ar3.add(bean.getDescription());
    	bean.setUserId(complaintRecords.getInt(4));
    	Integer convert2= new Integer(bean.getUserId());
   	  	ar4.add(convert2);  
   	  	
    }
     
     bean.setSize(ar1.size());
     System.out.println(ar1.size());
     bean.setComplaintIdAL(ar1);
     bean.setComplaintTypeAL(ar2);
     System.out.println("new "+bean.getComplaintTypeAL());
     bean.setDescriptionAL(ar3);
     bean.setUserIdAL(ar4);
     System.out.println(bean.getUserIdAL());
     
  } catch(Exception exception){ 
    System.out.println(exception); 
  } 
}
}
