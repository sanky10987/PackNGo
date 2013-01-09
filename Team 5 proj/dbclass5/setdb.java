package dbclass5;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bean5.Bean_Register;
import bean5.userlogin;

public class setdb {

	
	public void passbeans(Bean_Register bean, userlogin beanL)
	{
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver"); 
		      Connection connection = 
		    	  DriverManager.getConnection("jdbc:oracle:thin:@172.16.68.55:1521:orcl1","team5","collabera");
		 
		      PreparedStatement preparedStatement = 
		connection.prepareStatement("select first_name,middle_name,last_name,gender,address,city,state,country,pin,phone,mobile,email from users where user_id=?");
		      
		      preparedStatement.setInt(1, beanL.getUserId());
		      ResultSet rs= preparedStatement.executeQuery();
		      
		      while(rs.next())
		      {
		    	  bean.setFirstName(rs.getString("first_name"));
		    	  bean.setMiddleName(rs.getString("middle_name"));
		    	  bean.setLastName(rs.getString("last_name"));
		    	  bean.setGenderReg(rs.getString("gender"));
		    	  bean.setAddressReg(rs.getString("address"));
		    	  bean.setCityReg(rs.getString("city"));
		    	  bean.setStateReg(rs.getString("state"));
		    	  bean.setCountryReg(rs.getString("country"));
		    	  bean.setPinReg(rs.getString("pin"));
		    	  bean.setPhoneReg(rs.getString("phone"));
		    	  bean.setMobileReg(rs.getString("mobile"));
		    	  bean.setEmailReg(rs.getString("email"));	
		    	  //System.out.println(bean.getEmailReg());
		      }
		connection.close();      
		}catch(Exception e)
		{
			System.out.println("Exception = "+e);
		}
		
}}
