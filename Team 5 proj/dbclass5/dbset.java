package dbclass5;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import bean5.Bean_Register;
import bean5.userlogin;

public class dbset {

	public void set(Bean_Register beanset,userlogin beanL)
	{
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver"); 
		      Connection connection = 
		
		    	  DriverManager.getConnection("jdbc:oracle:thin:@172.16.68.55:1521:orcl1","team5","collabera"); 
		 //"update tname set c1=?,c2=? where col=?");
		      PreparedStatement preparedStatement = 
		connection.prepareStatement("update users set first_name=?,middle_name=?,last_name=?,gender=?,address=?,city=?,state=?,country=?,pin=?,phone=?,mobile=?,email=?"+
				"where user_id=?");
		      System.out.println("Testmessage");
	preparedStatement.setString(1, beanset.getFirstName());
	preparedStatement.setString(2, beanset.getMiddleName());
	preparedStatement.setString(3, beanset.getLastName());
	preparedStatement.setString(4, beanset.getGenderReg());
	preparedStatement.setString(5, beanset.getAddressReg());
	preparedStatement.setString(6, beanset.getCityReg());	
	preparedStatement.setString(7, beanset.getStateReg());
	preparedStatement.setString(8, beanset.getCountryReg());
	preparedStatement.setString(9, beanset.getPinReg());
	preparedStatement.setString(10, beanset.getPhoneReg());
	preparedStatement.setString(11, beanset.getMobileReg());
	preparedStatement.setString(12, beanset.getEmailReg());
	preparedStatement.setInt(13, beanL.getUserId());
	 System.out.println("Testmessage");
	
	int n=preparedStatement.executeUpdate();
		}catch(Exception e)
		{
			System.out.println("Exception = "+e);
		}
}}
