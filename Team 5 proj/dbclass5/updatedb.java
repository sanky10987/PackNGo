package dbclass5;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import bean5.Bean_Register;
import bean5.userlogin;

public class updatedb {
	public void update(Bean_Register bean) //throws IOException
	{
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver"); 
		      Connection connection = 
		    	  DriverManager.getConnection("jdbc:oracle:thin:@172.16.68.55:1521:orcl1","team5","collabera"); 
		 
		      PreparedStatement preparedStatement = 
		connection.prepareStatement("");
		}catch(Exception e)
		{
	System.out.println("Exception = "+e);
		}
	}
	}
