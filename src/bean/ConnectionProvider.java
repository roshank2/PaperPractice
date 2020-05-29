/********************* Roshan Kumar ***********************/

package bean;

import java.sql.*;

public class ConnectionProvider {
	static String URL = "jdbc:mysql://localhost:3306/paperpractice?useSSL=false";
	static String USERNAME = "root";
	static String PASSWORD = "12343210";

	public static Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(URL, USERNAME, PASSWORD);
		} catch (Exception e) {
			System.out.println("No");
		}
		return con;
	}
}
