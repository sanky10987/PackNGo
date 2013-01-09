package dbclass5;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bean5.retrpass;

public class dbgetpass {

	int flag;
	public void pass(retrpass bean){
		
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver"); 
		      Connection connection = 
		    	  DriverManager.getConnection("jdbc:oracle:thin:@172.16.68.55:1521:orcl1","team5","collabera"); 
		 
		      PreparedStatement preparedStatement = 
		connection.prepareStatement("select user_id from users where answer=?");
		      preparedStatement.setString(1, bean.getAnswr());
		ResultSet rs=preparedStatement.executeQuery();
		
		while(rs.next()){
			flag=rs.getInt(1);
			bean.setFlag(flag);
		}rs.close();
		connection.close();
		}
		catch(Exception e)
		{
			System.out.println("Exception = "+e);
		}}

		public void get(retrpass bean){
			
			try{
				Class.forName("oracle.jdbc.driver.OracleDriver"); 
			      Connection connection = 
			    	  DriverManager.getConnection("jdbc:oracle:thin:@172.16.68.55:1521:orcl1","team5","collabera"); 
			 
			      PreparedStatement preparedStatement = 
			connection.prepareStatement("select password from userlogin where user_id=?");
			      preparedStatement.setInt(1,bean.getFlag());
			ResultSet rs=preparedStatement.executeQuery();
			
			while(rs.next()){
				String pass=rs.getString(1);
				bean.setPassw(pass);
			}
			rs.close();
			connection.close();
			}catch(Exception e)
			{
				System.out.println("Exception = "+e);
			}
		
		
}}
