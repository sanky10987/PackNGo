package dbclass5;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import bean5.Bean_feedback;
import bean5.HotelBean;

public class DbFeedback {
	private String userID1;
	private String feedbackdescription1;
	public DbFeedback(Bean_feedback bf) {
		this.userID1=bf.getUser_idvalue();
		this.feedbackdescription1=bf.getDescriptionvalue();
	}
	public void DbInsertFeedback() throws Exception{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@172.16.68.55:1521:orcl1","team5","collabera");
		PreparedStatement preparedStatement = connection.prepareStatement("insert into Feedback(FEEDBACK_ID,USER_ID,FEEDBACK_DESCRIPTION) values(feedback_sequence.nextVal,?,?)");
		preparedStatement.setString(1,userID1); 
	    preparedStatement.setString(2,feedbackdescription1);
	    preparedStatement.executeUpdate(); 
	    System.out.println("Values is inserted successfully");
	    connection.close();
	}
}
