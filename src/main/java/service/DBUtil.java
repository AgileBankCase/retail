package service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {

	static Connection conn = null;
	
	public static Connection getConnection() throws SQLException {
		if(conn==null) {
			String dbUrl = "jdbc:postgresql://ec2-18-214-211-47.compute-1.amazonaws.com:5432/d1afaoeqvbvmgo?user=aedjuotodrcmgn&password=0493fea64a4196e40cb784fc801f602240f6a82e2344ff57ee751c478e94853e";
			//String dbUrl = System.getenv("JDBC_DATABASE_URL");
			conn = DriverManager.getConnection(dbUrl);
		}
		return conn;
	}
}
