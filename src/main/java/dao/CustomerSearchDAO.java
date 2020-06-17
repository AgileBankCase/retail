package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Level;
import java.util.logging.Logger;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import service.DBUtil;
import service.Validator;

public class CustomerSearchDAO {
	
	static Logger logger = Logger.getLogger(LoginDAO.class.getName());
	static int affectedrows=0;
	@SuppressWarnings("unchecked")
	public static JSONObject userDetails( long ssnId,long cusId){
		JSONObject jsonObject = new JSONObject();
		try {
			Connection conn = DBUtil.getConnection();
		
			PreparedStatement stmt=conn.prepareStatement("SELECT \"Customer_SSN_ID\", \"Name\", \"Age\", \"Address_Line_1\", \"Address_Line_2\", \"State\", \"City\", \"Customer_ID\"\r\n" + 
					"	FROM public.customer_details where \"Customer_SSN_ID\"=? or \"Customer_ID\"=?;");  
			stmt.setLong(1,ssnId);//1 specifies the first parameter in the query  
			stmt.setLong(2,cusId); 
			ResultSet rs=stmt.executeQuery();
			
			JSONArray array = new JSONArray();
			//converting resultset into json
			while(rs.next()) {
				   JSONObject record = new JSONObject();
				   //Inserting key-value pairs into the json object
				   record.put("Customer SSN ID", rs.getLong("Customer_SSN_ID"));
				   record.put("Customer ID", rs.getLong("Customer_ID"));
				   record.put("Name", rs.getString("Name"));
				   record.put("Age", rs.getInt("Age"));
				   record.put("Address Line 1", rs.getString("Address_Line_1"));
				   record.put("Address Line 2", rs.getString("Address_Line_2"));
				   array.add(record);
				}
			jsonObject.put("User_Details", array);
			
		}catch(Exception e) {
			logger.log(Level.SEVERE,"Exception Occured",e);
		}
		return jsonObject;
	}
}

