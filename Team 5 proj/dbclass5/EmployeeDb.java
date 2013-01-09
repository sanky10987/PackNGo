package dbclass5;

import bean5.EmployeeBean;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.swing.JOptionPane;

import facade5.FacadeMain;
import bean5.EmployeeBean;

public class EmployeeDb{ 
	
	EmployeeBean bean;
	
		
	 public void AddEmployeeDb(EmployeeBean bean){
		 String FName = new String(bean.getEmployeeName1());
		 System.out.println("first name = "+FName);
	  Connection connection = null;
    try{ 
      Class.forName("oracle.jdbc.driver.OracleDriver").newInstance(); 
      connection = DriverManager.getConnection("jdbc:oracle:thin:@172.16.68.55:1521:orcl1","team5","collabera"); 
 
      PreparedStatement preparedStatementAdd = 
                         connection.prepareStatement("insert into Employee"
     +"(first_name,last_name,emp_role,contact_num,e_mail,complaint_id) values(?,?,?,?,?,?)"); 
 
      preparedStatementAdd.setString(1,bean.getEmployeeName1()); 
      preparedStatementAdd.setString(2,bean.getEmployeeName2()); 
      preparedStatementAdd.setString(3,bean.getEmployeeRole()); 
      preparedStatementAdd.setLong(4,bean.getContactNum());
      preparedStatementAdd.setString(5,bean.getEmail());
      preparedStatementAdd.setInt(6,bean.getComplaintId());
      
      int n=preparedStatementAdd.executeUpdate(); 
     
      System.out.println(n);
      preparedStatementAdd.close();
      
      
      //Query to display back the record of the added employee to Swing window
      ResultSet rs;
      preparedStatementAdd = 
    	  connection.prepareStatement("SELECT * FROM employee WHERE first_name=?");
      preparedStatementAdd.setString(1,FName);
      rs = preparedStatementAdd.executeQuery();
       
       while ( rs.next() ) {
      	   bean.setEmployeeId(rs.getInt("emp_id"));
           bean.setEmployeeName1(rs.getString("first_name"));
           bean.setEmployeeName2(rs.getString("last_name"));
           bean.setEmployeeRole(rs.getString("emp_role"));
           bean.setContactNum(rs.getInt("contact_num"));
           bean.setEmail(rs.getString("e_mail"));
           bean.setComplaintId(rs.getInt("complaint_id"));
           
            System.out.println(bean.getEmployeeId());
      		System.out.println(bean.getEmployeeName1());
      		System.out.println(bean.getEmployeeName2());
      		System.out.println(bean.getEmployeeRole());
      		System.out.println(bean.getContactNum());
      		System.out.println(bean.getEmail());
      		System.out.println(bean.getComplaintId());
      		System.out.println("TRUE");
    }
    }   
    catch(Exception exception){ 
      System.out.println(exception); 
    } 
}
	 public void DeleteEmployeeDb(EmployeeBean bean){
		 int id = bean.getEmployeeId();
		 
		 Connection connection = null;
		    try{ 
		      Class.forName("oracle.jdbc.driver.OracleDriver").newInstance(); 
		      connection = DriverManager.getConnection("jdbc:oracle:thin:@172.16.68.55:1521:orcl1","team5","collabera"); 
		 
	     PreparedStatement preparedStatementDelete = 
	    	  connection.prepareStatement("DELETE FROM employee WHERE emp_id=?");
	      preparedStatementDelete.setInt(1,id);
	      int n = preparedStatementDelete.executeUpdate();
	    
	      if(n!=0){
	    	  bean.setFlag(true);
	    	  System.out.println("Deleted Successfully");  
	      }
	      else{
	    	  bean.setFlag(false);
	    	  System.out.println("Unable to delete the record");  
	      }    
	 }
	catch(Exception exception){ 
	      System.out.println(exception); 
	} 
 }
	public void EditEmployeeDb(EmployeeBean bean){
		int id = bean.getEmployeeId();
		System.out.println(bean.getEmployeeId());
		

		 
		 Connection connection;
		    try{ 
		      Class.forName("oracle.jdbc.driver.OracleDriver").newInstance(); 
		      connection = DriverManager.getConnection("jdbc:oracle:thin:@172.16.68.55:1521:orcl1","team5","collabera"); 
		      ResultSet rset;
		      
	     PreparedStatement preparedStatementEdit = 
	    	  connection.prepareStatement("SELECT * FROM employee WHERE emp_id=?");
	      preparedStatementEdit.setInt(1,id);
	      System.out.println(id);
	      rset = preparedStatementEdit.executeQuery();
	      if(rset == null){
	    	bean.setFlag(false); 
	    	System.out.println(bean.isFlag());
	      }
	 
	       while ( rset.next() ) {
	    	   
	      	   bean.setEmployeeId(rset.getInt(1));
	           bean.setEmployeeName1(rset.getString(2));
	           bean.setEmployeeName2(rset.getString(3));
	           bean.setEmployeeRole(rset.getString(4));
	           bean.setContactNum(rset.getInt(5));
	           bean.setEmail(rset.getString(6));
	           bean.setComplaintId(rset.getInt(7));
	           bean.setFlag(true);
	           System.out.println(bean.isFlag());
	            
	           System.out.println(bean.getEmployeeId());
	      	   System.out.println(bean.getEmployeeName1());
	      	   System.out.println(bean.getEmployeeName2());
	      	   System.out.println(bean.getEmployeeRole());
	      	   System.out.println(bean.getContactNum());
	      	   System.out.println(bean.getEmail());
	      	   System.out.println(bean.getComplaintId());
	      	
	      		
	}
		
	}catch(Exception exception){ 
	      System.out.println(exception); 
	} 
	
	 
}
	public void EditedEmployeeDb(EmployeeBean bean){
		 int id = bean.getEmployeeId();
		 System.out.println("Id = "+id);
	  Connection connection = null;
   try{ 
     Class.forName("oracle.jdbc.driver.OracleDriver").newInstance(); 
     connection = DriverManager.getConnection("jdbc:oracle:thin:@172.16.68.55:1521:orcl1","team5","collabera"); 

     PreparedStatement preparedStatementAdd = 
                connection.prepareStatement("update employee set first_name = ?,"+
                  "last_name=?,emp_role=?,contact_num=?,e_mail=?,complaint_id=? where emp_id ="+id); 
    // preparedStatement.setInt(1,bean.getEmployeeId()); 
     preparedStatementAdd.setString(1,bean.getEmployeeName1()); 
     preparedStatementAdd.setString(2,bean.getEmployeeName2()); 
     preparedStatementAdd.setString(3,bean.getEmployeeRole()); 
     preparedStatementAdd.setLong(4,bean.getContactNum());
     preparedStatementAdd.setString(5,bean.getEmail());
     preparedStatementAdd.setInt(6,bean.getComplaintId());
     
     int n=preparedStatementAdd.executeUpdate(); 
     System.out.println(n);
     if(n!=0){
   	 
    	bean.setFlag(true); 
     }
     else{
    	bean.setFlag(false); 
     }    
    
     
     preparedStatementAdd.close();
        
}catch(Exception exception){ 
    System.out.println(exception); 
	} 

}
	public void ViewEmployeeDb(EmployeeBean bean)
	{
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
                         connection.prepareStatement("SELECT * from employee");
	 ResultSet rs;
     rs = preparedStatementAdd.executeQuery();
      
      while ( rs.next() ) {
     	  bean.setEmployeeId(rs.getInt(1));
     	 Integer convert= new Integer(bean.getEmployeeId());
     	 ar1.add(convert);
     	 bean.setEmployeeName1(rs.getString(2));
    	  ar2.add(bean.getEmployeeName1());
    	  bean.setEmployeeName2(rs.getString(3));
     	  ar3.add(bean.getEmployeeName2());
     	 bean.setEmployeeRole(rs.getString(4));
    	  ar4.add(bean.getEmployeeRole());
    	  bean.setContactNum(rs.getInt(5));
    	  Long convert1 = new Long(bean.getContactNum());
     	  ar5.add(convert1);
     	 bean.setEmail(rs.getString(5));
    	  ar6.add(bean.getEmail());
    	  bean.setComplaintId(rs.getInt(7));
    	  Integer convert2 = new Integer(bean.getComplaintId());
     	  ar7.add(convert2);
     	
     }
      bean.setSize(ar1.size());
      bean.setEmployeeIdAL(ar1);
      bean.setEmployeeName1AL(ar2);
      bean.setEmployeeName2AL(ar3);
      bean.setEmployeeRoleAL(ar4);
      bean.setContactNumAL(ar5);
      bean.setEmailAL(ar6);
      bean.setComplaintIdAL(ar7);
      
   } catch(Exception exception){ 
     System.out.println(exception); 
   } 
}	
	
	public void AssignComplaintEmployeeDb(EmployeeBean bean){
		int id = bean.getEmployeeId();
		 System.out.println("Id = "+id);
	  Connection connection = null;
	try{ 
    Class.forName("oracle.jdbc.driver.OracleDriver").newInstance(); 
    connection = DriverManager.getConnection("jdbc:oracle:thin:@172.16.68.55:1521:orcl1","team5","collabera"); 

    PreparedStatement preparedStatementAdd = 
               connection.prepareStatement("update employee set complaint_id=? where emp_id ="+id); 

    preparedStatementAdd.setInt(1,bean.getComplaintId());
    
    int n=preparedStatementAdd.executeUpdate(); 
    System.out.println(n);
    if(n!=0){
  	 
   	bean.setFlag(true); 
    }
    else{
   	bean.setFlag(false); 
    }    
   
    
    preparedStatementAdd.close();
       
}catch(Exception exception){ 
   System.out.println(exception); 
	} 
	}
			
}


	 