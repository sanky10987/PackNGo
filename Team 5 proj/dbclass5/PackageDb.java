package dbclass5;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import bean5.PackageBean;

public class PackageDb{ 
		
	 public void AddPackageDb(PackageBean bean){
		 String PName = new String(bean.getPackageName());
		 System.out.println("package name = "+PName);
	  Connection connection = null;
    try{ 
      Class.forName("oracle.jdbc.driver.OracleDriver").newInstance(); 
      connection = DriverManager.getConnection("jdbc:oracle:thin:@172.16.68.55:1521:orcl1","team5","collabera"); 
 
      PreparedStatement preparedStatementAdd = 
                         connection.prepareStatement("insert into Packages"
     +"(package_name,destination,package_description,hotel_id,num_days," +
     	"holiday_type,cost_per_person) values(?,?,?,?,?,?,?)"); 
     
      preparedStatementAdd.setString(1,bean.getPackageName()); 
      preparedStatementAdd.setString(2,bean.getDestination()); 
      preparedStatementAdd.setString(3,bean.getDescription()); 
      preparedStatementAdd.setInt(4,bean.getHotelId());
      preparedStatementAdd.setInt(5,bean.getNumOfDays());
      preparedStatementAdd.setString(6,bean.getHolidayType());
      preparedStatementAdd.setInt(7,bean.getCostPerPerson());
      
      int n=preparedStatementAdd.executeUpdate(); 
     
      System.out.println(n);
      preparedStatementAdd.close();
	 
//	Query to display back the record of the added package to Swing window
     ResultSet rs;
     preparedStatementAdd = 
   	  connection.prepareStatement("SELECT * FROM packages WHERE package_name=?");
     preparedStatementAdd.setString(1,PName);
     rs = preparedStatementAdd.executeQuery();
      
      while ( rs.next() ) {
     	  bean.setPackageId(rs.getInt(1));
          bean.setPackageName(rs.getString(2));
          bean.setDestination(rs.getString(3));
          bean.setDescription(rs.getString(4));
          bean.setFlightName(rs.getString(5));
          bean.setHotelId(rs.getInt(6));
          bean.setNumOfDays(rs.getInt(7));
          bean.setHolidayType(rs.getString(8));
          bean.setCostPerPerson(rs.getInt(9));
          
           System.out.println(bean.getPackageId());
           System.out.println(bean.getPackageName());
           System.out.println(bean.getDestination());
           System.out.println(bean.getDescription());
           System.out.println(bean.getFlightName());
           System.out.println(bean.getHotelId());
           System.out.println(bean.getNumOfDays());
           System.out.println(bean.getHolidayType());
           System.out.println(bean.getCostPerPerson());
     		
   }
   } catch(Exception exception){ 
     System.out.println(exception); 
   } 
}
	 public void DeletePackageDb(PackageBean bean){
		 System.out.println(bean.getPackageId());
		 int id = bean.getPackageId();
		 System.out.println(id);
		 
		 Connection connection1 = null;
		    try{ 
		    	System.out.println("yes");
		      Class.forName("oracle.jdbc.driver.OracleDriver").newInstance(); 
		      System.out.println("yes");
		      connection1 = DriverManager.getConnection("jdbc:oracle:thin:@172.16.68.55:1521:orcl1","team5","collabera"); 
		      System.out.println("yes");
	     PreparedStatement preparedStatementDelete = 
	    	  connection1.prepareStatement("DELETE FROM packages WHERE package_id=?");
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
	 
public void EditPackageDb(PackageBean bean){
			int id = bean.getPackageId();		//
			System.out.println(bean.getPackageId());

			 Connection connection;
			    try{ 
			      Class.forName("oracle.jdbc.driver.OracleDriver").newInstance(); 
			      connection = DriverManager.getConnection("jdbc:oracle:thin:@172.16.68.55:1521:orcl1","team5","collabera"); 
			      ResultSet rset;
			     
		     PreparedStatement preparedStatementEdit = 
		    	  connection.prepareStatement("SELECT * FROM packages WHERE package_id=?");
		      preparedStatementEdit.setInt(1,id);
		      
		      rset = preparedStatementEdit.executeQuery();
		     
		      if(rset == null){
		    	 bean.setFlag(false); 
		    	 System.out.println(bean.isFlag());
		      }
		      else if(rset != null){
		 
		       while ( rset.next() ) {
		    	   
		      	   bean.setPackageId(rset.getInt(1));		//
		           bean.setPackageName(rset.getString(2));
		           bean.setDestination(rset.getString(3));
		           bean.setDescription(rset.getString(4));
		           bean.setHotelId(rset.getInt(6));
		           bean.setNumOfDays(rset.getInt(7));
		           bean.setHolidayType(rset.getString(8));
		           bean.setCostPerPerson(rset.getInt(9));
		           bean.setFlag(true);
		           System.out.println(bean.isFlag());
		            
		           System.out.println(bean.getPackageId());
		      	   System.out.println(bean.getPackageName());
		      	   System.out.println(bean.isFlag());
		      	     		
		       }
		   }
			
		}catch(Exception exception){ 
		      System.out.println(exception); 
		} 
}
		
public void EditedPackageDb(PackageBean bean){
			 int id = bean.getPackageId();		//
			 System.out.println("Id = "+id);
			 System.out.println("yup");
			 Connection connection = null;
	   try{ 
	     Class.forName("oracle.jdbc.driver.OracleDriver").newInstance(); 
	     connection = DriverManager.getConnection("jdbc:oracle:thin:@172.16.68.55:1521:orcl1","team5","collabera"); 
	     System.out.println("yup");
	     PreparedStatement preparedStatementAdd = 
	                connection.prepareStatement("update packages set package_name = ?,"+
	                  "destination=?,package_description=?,hotel_id=?,num_days=?,holiday_type=?, cost_per_person=? where package_id = "+id);
	     
	     System.out.println(bean.getPackageName());
	     System.out.println(bean.getDestination());
	     System.out.println(bean.getDescription()); 
	     System.out.println(bean.getHotelId());
	     System.out.println(bean.getNumOfDays());
	     System.out.println(bean.getHolidayType());
	     System.out.println(bean.getCostPerPerson());
	     System.out.println(bean.getPackageId());
	    														 
	     preparedStatementAdd.setString(1,bean.getPackageName()); 
	     preparedStatementAdd.setString(2,bean.getDestination()); 
	     preparedStatementAdd.setString(3,bean.getDescription()); 
	     preparedStatementAdd.setInt(4,(bean.getHotelId()));
	     preparedStatementAdd.setInt(5,(bean.getNumOfDays()));
	     preparedStatementAdd.setString(6,bean.getHolidayType());
	     preparedStatementAdd.setInt(7,(bean.getCostPerPerson()));		//
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
		
	 public void ViewPackageDb(PackageBean bean){
		 
		 ArrayList ar1 = new ArrayList();
		 ArrayList ar2 = new ArrayList();
		 ArrayList ar3 = new ArrayList();
		 ArrayList ar4 = new ArrayList();
		 ArrayList ar5 = new ArrayList();
		 ArrayList ar6 = new ArrayList();
		 ArrayList ar7 = new ArrayList();
		 ArrayList ar8 = new ArrayList();
		 
		 Connection connection = null;
    try{ 
      Class.forName("oracle.jdbc.driver.OracleDriver").newInstance(); 
      connection = DriverManager.getConnection("jdbc:oracle:thin:@172.16.68.55:1521:orcl1","team5","collabera"); 
 
      PreparedStatement preparedStatementAdd = 
                         connection.prepareStatement("SELECT * from packages");
	 ResultSet rs;
     rs = preparedStatementAdd.executeQuery();
      
      while ( rs.next() ) {
     	  bean.setPackageId(rs.getInt(1));
     	  Integer convert = new Integer(bean.getPackageId());
     	  ar1.add(convert);
     	 bean.setPackageName(rs.getString(2));
    	  ar2.add(bean.getPackageName());
    	  bean.setDestination(rs.getString(3));
     	  ar3.add(bean.getDestination());
     	 bean.setDescription(rs.getString(4));
    	  ar4.add(bean.getDescription());
       //   flightName = rs.getString(5);
       //   ar5.add(flightName);
    	  bean.setHotelId(rs.getInt(6));
    	  Integer convert1 = new Integer(bean.getHotelId());
     	  ar5.add(convert1);
     	 bean.setNumOfDays(rs.getInt(7));
     	Integer convert2 = new Integer(bean.getNumOfDays());
    	  ar6.add(convert2);
    	  bean.setHolidayType(rs.getString(8));
     	  ar7.add(bean.getHolidayType());
     	 bean.setCostPerPerson(rs.getInt(9));
     	Integer convert3 = new Integer(bean.getCostPerPerson());
    	  ar8.add(convert3);
          
     }
      bean.setSize(ar1.size());
      bean.setPackageIdAL(ar1);
      bean.setPackageNameAL(ar2);
      bean.setDestinationAL(ar3);
      bean.setDescriptionAL(ar4);
 //   bean.setFlightNameAL(ar5);
      bean.setHotelIdAL(ar5);
      bean.setNumOfDaysAL(ar6);
      bean.setHolidayTypeAL(ar7);
      bean.setCostPerPersonAL(ar8);
      
   } catch(Exception exception){ 
     System.out.println(exception); 
   } 
}
}