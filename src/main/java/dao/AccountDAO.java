package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Level;
import java.util.logging.Logger;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import service.DBUtil;

public class AccountDAO {

	static Logger logger = Logger.getLogger(AccountDAO.class.getName());
	
	public static int addAccount(long customerID, String type, long depositAmount) {
		int affectedRows = 0;
		try {
			Connection conn = DBUtil.getConnection();
			PreparedStatement stmt = conn.prepareStatement("INSERT INTO public.account_details(\r\n" + 
					"	\"Customer_ID\", \"Account_Type\", \"Balance\")\r\n" + 
					"	VALUES (?, ?, ?);");
			stmt.setLong(1, customerID);// 1 specifies the first parameter in the query
			stmt.setString(2, type);
			stmt.setLong(3, depositAmount);

			affectedRows = stmt.executeUpdate();

		} catch (Exception e) {
			logger.log(Level.SEVERE, "Exception Occured", e);
		}
		return affectedRows;
	}
	
	public static JSONObject getAccounts(long customerID) {
		JSONObject jsonObject = new JSONObject();
		try {
			Connection conn = DBUtil.getConnection();
		
			PreparedStatement stmt=conn.prepareStatement("SELECT \"Customer_ID\", \"Account_ID\", \"Account_Type\", \"Balance\", \"Created_Date\"\r\n" + 
					"	FROM public.account_details WHERE \"Customer_ID\" = ?;");  
			stmt.setLong(1,customerID); 
			ResultSet rs=stmt.executeQuery();
			
			JSONArray array = new JSONArray();
			//converting resultset into json
			while(rs.next()) {
				   JSONObject record = new JSONObject();
				   //Inserting key-value pairs into the json object
				   record.put("CustomerID", rs.getLong("Customer_ID"));
				   record.put("Account_ID", rs.getLong("Account_ID"));
				   record.put("Account_Type", rs.getString("Account_Type"));
				   record.put("Balance", rs.getLong("Balance"));
				   record.put("Created_Date", rs.getDate("Created_Date").toString());
				   array.add(record);
				}
			jsonObject.put("Account_Details", array);
			
		}catch(Exception e) {
			logger.log(Level.SEVERE,"Exception Occured",e);
		}
		return jsonObject;
	}

	public static int deleteCustomer(String cusid, String type) {
		int affectedrows = 0;
		try {
			Connection conn = DBUtil.getConnection();
			PreparedStatement stmt = conn.prepareStatement(
					"DELETE FROM public.account_details\r\n" + " WHERE \"Customer_ID\"=? and \"Account_Type\"=?;");
		
			stmt.setLong(1, Long.parseLong(cusid));
			stmt.setString(2, type);
			affectedrows = stmt.executeUpdate();

		} catch (Exception e) {
			logger.log(Level.SEVERE, "Exception Occured", e);
		}
		return affectedrows;
	}
}
