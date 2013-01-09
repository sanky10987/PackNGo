package dbclass5;

//import java.io.IOException;
//import java.net.URL;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

//import sun.net.www.URLConnection;

import bean5.userlogin;

public class logindb {
public int flag;
	public void login(userlogin bean) //throws IOException
	{
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver"); 
		      Connection connection = 
		    	  DriverManager.getConnection("jdbc:oracle:thin:@172.16.68.55:1521:orcl1","team5","collabera"); 
		 
		      PreparedStatement preparedStatement = 
		connection.prepareStatement("select username,password,user_id from userlogin");
		      ResultSet res=preparedStatement.executeQuery();
		      //int set;
		      while(res.next())
		      {
		    	  if (res.getString(1).equals(bean.getUserName()) && res.getString(2).equals(bean.getPassWord()))
		    	  {  flag=1;
		    	  bean.setFlag(flag);		    	
		    	  bean.setUserId(res.getInt(3));
		    	  break;
		    	  }
		    	 /* else {set=2;
		    	  setflag(set);}*/
		      }  //System.out.println(this.getflag());
		      connection.close();	
		      /*URL url = new URL( "http://D:/Core%20Java/Team5OTA/WebContent/directuser.jsp" );
		      URLConnection connection1= (URLConnection) url.openConnection();
		      connection1.setDoOutput(true);*/
		}catch(Exception e)
		{
			System.out.println("Exception = "+e);
		}	      
	      
	} /*public void setflag(int set){
		this.flag=set;
		System.out.println(this.flag);
	}
	
	public int getflag(){
		System.out.println(this.flag);
  	  return this.flag;
    }*/
	
}
