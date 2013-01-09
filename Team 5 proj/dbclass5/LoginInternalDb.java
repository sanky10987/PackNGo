package dbclass5;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import bean5.LoginInternalBean;


import facade5.FacadeMain;

public class LoginInternalDb {
	boolean flag;
	FacadeMain f = new FacadeMain();

	public void ValidateEmployee(LoginInternalBean bean){
		
		Connection connection = null;
	    try{ 
	      Class.forName("oracle.jdbc.driver.OracleDriver").newInstance(); 
	      connection = DriverManager.getConnection("jdbc:oracle:thin:@172.16.68.55:1521:orcl1","team5","collabera"); 
		ResultSet rs;
	      PreparedStatement preparedStatementValidate = 
	    	  connection.prepareStatement("SELECT * FROM employee_login WHERE username_employee=? and password_employee=? and usertype=?");
	      preparedStatementValidate.setString(1,bean.getUsername());
	      preparedStatementValidate.setString(2,bean.getPassword());
	      preparedStatementValidate.setString(3,bean.getRole());
	      
	      rs = preparedStatementValidate.executeQuery();
	       
	       if (rs.next())
	    	   bean.setFlag(true);
	       else
	    	   bean.setFlag(false);
	      
	    }  catch(Exception exception){ 
	      System.out.println(exception); 
	    } 
	}
}
