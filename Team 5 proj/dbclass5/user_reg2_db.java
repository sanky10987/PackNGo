package dbclass5;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;


import bean5.Bean_Register2;

public class user_reg2_db {

	
	public void user(Bean_Register2 bean)
	{
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver"); 
	      Connection connection = 
	    	  DriverManager.getConnection("jdbc:oracle:thin:@172.16.68.55:1521:orcl1","team5","collabera"); 
	  		 
	  		      PreparedStatement preparedStatement = 
	  		connection.prepareStatement("insert into userlogin(username,password)values(?,?)");
	  		    preparedStatement.setString(1, bean.getUserName()); 
			      preparedStatement.setString(2, bean.getPassWord()); 
			      int n=preparedStatement.executeUpdate(); 
				     connection.close();
		}catch(Exception e)
		{
			System.out.println("Exception= "+e);
		}
}}
