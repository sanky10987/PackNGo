package dbclass5;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import bean5.Beancomplaint;
import bean5.userlogin;

public class compldb {
	public void complain(Beancomplaint bean,userlogin beanL)
	{
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver"); 
		      Connection connection = 
		    	  DriverManager.getConnection("jdbc:oracle:thin:@172.16.68.55:1521:orcl1","team5","collabera"); 
		 
		      PreparedStatement preparedStatement = 
		connection.prepareStatement("insert into complaints (complaint_type,description,user_id) values(?,?,?)");
		      
		      //preparedStatement.setInt(1, 4);
		      preparedStatement.setString(1, bean.getComplType());
		      preparedStatement.setString(2, bean.getComplDesc());
		      preparedStatement.setInt(3, beanL.getUserId());
		      int n= preparedStatement.executeUpdate();
		      connection.close();
		}catch(Exception e){
			System.out.println("Exception = "+e);
		}

}}
