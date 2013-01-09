package dbclass5;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bean5.beanforgotp;

public class dbforgpass {
int flag;
String ques;
	
	public void pass(beanforgotp bean){
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver"); 
		      Connection connection = 
		    	  DriverManager.getConnection("jdbc:oracle:thin:@172.16.68.55:1521:orcl1","team5","collabera");
		 
		      PreparedStatement preparedStatement = 
		connection.prepareStatement("select user_id,security_ques from users where email=?");
		      preparedStatement.setString(1, bean.getEmail());
		      ResultSet rs=preparedStatement.executeQuery();
		      while(rs.next())
		      {
		    	  flag=rs.getInt(1);
		    	  ques=rs.getString(2);
		    	  bean.setSecQues(ques);
		    	  //System.out.println(ques);
		      }
		      connection.close();
		}catch(Exception e){
			System.out.println("Exception = "+e);
		}
}		
	
}


