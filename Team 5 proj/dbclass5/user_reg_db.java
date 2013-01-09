package dbclass5;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Date;
import java.sql.ResultSet;


import bean5.Bean_Register;

public class user_reg_db {
String firstname;
int getId;
	
	public void user(Bean_Register bean)
	{firstname=bean.getFirstName();
		try{
			Date date=new Date(0000-00-00);
			String date1=bean.getYearBirth()+"-"+bean.getMonthBirth()+"-"+bean.getBirthDate();
			 
			
			Class.forName("oracle.jdbc.driver.OracleDriver"); 
		      Connection connection = 
		    	  DriverManager.getConnection("jdbc:oracle:thin:@172.16.68.55:1521:orcl1","team5","collabera"); 
		 
		      PreparedStatement preparedStatement = 
		connection.prepareStatement("insert into users(first_name,middle_name,last_name,gender,dob,address,city,state,country,phone,mobile,email,pin,answer,security_ques)"+
				"values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"); 
		      preparedStatement.setString(1, bean.getFirstName()); 
		      preparedStatement.setString(2, bean.getMiddleName()); 
		      preparedStatement.setString(3, bean.getLastName()); 
		      preparedStatement.setString(4, bean.getGenderReg());       
		      preparedStatement.setDate(5, date.valueOf(date1)); 
		      preparedStatement.setString(6, bean.getAddressReg()); 
		      preparedStatement.setString(7, bean.getCityReg()); 
		      preparedStatement.setString(8, bean.getStateReg());
		      preparedStatement.setString(9, bean.getCountryReg()); 
		      preparedStatement.setString(10,bean.getPhoneReg());
		      preparedStatement.setString(11,(bean.getMobileReg()));
		      preparedStatement.setString(12, bean.getEmailReg());
		      preparedStatement.setString(13, (bean.getPinReg()));
		      preparedStatement.setString(14, (bean.getAnswer()));
		      preparedStatement.setString(15, (bean.getSecurity()));
		     int n=preparedStatement.executeUpdate(); 
		     connection.close();
		    } catch(Exception e)
		{
			System.out.println("Exception= "+e);
		}	
	}
	public void user_un(Bean_Register bean)
	{try{
		Class.forName("oracle.jdbc.driver.OracleDriver"); 
	      Connection connection1 = 
	    	  DriverManager.getConnection("jdbc:oracle:thin:@172.16.68.55:1521:orcl1","team5","collabera"); 
	
	      PreparedStatement pre = 
	  		connection1.prepareStatement("select user_id from users where first_name=?");
	      pre.setString(1, bean.getFirstName());
	      //int n=pre.executeUpdate();
	      ResultSet resu=pre.executeQuery();
	      while(resu.next())
	      {
	    	  getId=Integer.parseInt(resu.getString(1));
	      }		connection1.close();
	}catch(Exception e)
	{
		System.out.println("Exception= "+e);
	}
	}
	public void insertui(Bean_Register bean){
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver"); 
		      Connection connection1 = 
		    	  DriverManager.getConnection("jdbc:oracle:thin:@172.16.68.55:1521:orcl1","team5","collabera"); 
		      PreparedStatement pre = 
			  		connection1.prepareStatement("insert into userlogin (user_id,username,password) values (?,?,?)");
		      System.out.println(getId);
		      pre.setInt(1, getId);
		      pre.setString(2, bean.getUserName());
		      pre.setString(3, bean.getPassWord());
		      int n=pre.executeUpdate();
		      connection1.close();
		}catch(Exception e)
		{
			System.out.println("Exception = "+e);
		}
	}
	
}
