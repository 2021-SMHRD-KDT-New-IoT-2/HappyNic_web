package user;

import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
public class UserDAO {

	private Connection conn; 
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public UserDAO() {
		try {
			String driverName = "oracle.jdbc.driver.OracleDriver";
			String dbURL = "jdbc:oracle:thin:@localhost:1521:xe";
			String dbID = "hr";
			String dbPassword = "hr";
			
			Class.forName(driverName);
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
			
			
		}catch(ClassNotFoundException e) {
			System.out.println(e.toString());
		}catch(SQLException sqle) {
			System.out.println(sqle.toString());
		}catch(Exception e) {
			System.out.println("Unkonwn error");
			e.printStackTrace();
		}	
	}
	 public int login(String userID, String userPassword) {
		 String SQL = "SELECT userPassword FROM USER1 WHERE userID = ?";
		 
		 try {
			 
			 pstmt = conn.prepareStatement(SQL);
			 pstmt.setString(1, userID);
			 rs = pstmt.executeQuery();

			 if(rs.next()) {
				 if(rs.getString(1).equals(userPassword)) {
					 return 1;
				 }else
					 return 0;
			 }return -1;
			 
		 }catch(Exception e) {
			 e.printStackTrace();
		 }return -2;
	 }
	 public int join(User user) {
		 String SQL = "INSERT INTO USER VALUES (?,?,?,?,?)";
		 try {
			 pstmt = conn.prepareStatement(SQL);
			 pstmt.setString(1, user.getUserID());
			 pstmt.setString(2, user.getUserPassword());
			 pstmt.setString(3, user.getUserName());
			 pstmt.setString(4, user.getUserGender());
			 pstmt.setString(5, user.getUserEmail());
			 return pstmt.executeUpdate();
		 }catch(Exception e) {
			 e.printStackTrace();
		 }
		 return -1;
	 }
 }