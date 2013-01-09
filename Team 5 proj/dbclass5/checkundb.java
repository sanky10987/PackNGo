package dbclass5;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bean5.checkuname;

public class checkundb {
public int flag;
	public void check(checkuname bean)
	{
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver"); 
	      Connection connection = 
	    	  DriverManager.getConnection("jdbc:oracle:thin:@172.16.68.55:1521:orcl1","team5","collabera"); 
	 
	      PreparedStatement preparedStatement = 
	connection.prepareStatement("select username from userlogin");
	      ResultSet rs=preparedStatement.executeQuery();
	      while(rs.next())
	      {
	    	  if(rs.getString(1).equals(bean.getUserName()))
	    	  {flag=1;
	    		  bean.setFlag(flag);
	    	  break;}
	    	  /*else 
	    		  flag=1;*/
	      }
	}
	catch(Exception e)
	{
		System.out.println("Exception= "+e);
	}
}}
