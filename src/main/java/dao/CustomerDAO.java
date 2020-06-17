package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Level;
import java.util.logging.Logger;

import service.DBUtil;
import service.Validator;

public class CustomerDAO {
	
	static Logger logger = Logger.getLogger(LoginDAO.class.getName());
	static int affectedrows=0;
	public static int registerCustomer(String ssnid,String name,int age,String addline1,String addline2,String city,String state){
		try {
			Connection conn = DBUtil.getConnection();
			PreparedStatement stmt=conn.prepareStatement("INSERT INTO public.customer_details(\r\n" + 
					"	\"Customer_SSN_ID\", \"Name\", \"Age\", \"Address_Line_1\", \"Address_Line_2\", \"State\", \"City\")\r\n" + 
					"	VALUES (?, ?, ?, ?, ?, ?, ?);");  
			stmt.setLong(1,Long.parseLong(ssnid));//1 specifies the first parameter in the query  
			stmt.setString(2,name); 
			stmt.setInt(3,age);
			stmt.setString(4,addline1);
			stmt.setString(5,addline2);
			stmt.setString(6,state);
			stmt.setString(7,city);
			
			 affectedrows=stmt.executeUpdate();  
			
			
		}catch(Exception e) {
			logger.log(Level.SEVERE,"Exception Occured",e);
		}
		return affectedrows;
	}
	
	//update
	public static String updateCustomer(String ssnid,String name,int age,String addline1,String addline2,String city,String state){
		try {
			Connection conn = DBUtil.getConnection();
			PreparedStatement stmt=conn.prepareStatement("INSERT INTO public.customer_details(\r\n" + 
					"	\"Customer_SSN_ID\", \"Name\", \"Age\", \"Address_Line_1\", \"Address_Line_2\", \"State\", \"City\")\r\n" + 
					"	VALUES (?, ?, ?, ?, ?, ?, ?);");  
			stmt.setLong(1,Long.parseLong(ssnid));//1 specifies the first parameter in the query  
			stmt.setString(2,name); 
			stmt.setInt(3,age);
			stmt.setString(4,addline1);
			stmt.setString(5,addline2);
			stmt.setString(6,state);
			stmt.setString(7,city);
			
			 affectedrows=stmt.executeUpdate();  
			if(affectedrows>0) {
				return "Succesfully Registered!";
			}
			
		}catch(Exception e) {
			logger.log(Level.SEVERE,"Exception Occured",e);
		}
		return "Not Registered!";
	}
	//delete
	public static String deleteCustomer(String ssnid,String name,int age,String addline1,String addline2,String city,String state){
		try {
			
			Connection conn = DBUtil.getConnection();
			PreparedStatement stmt=conn.prepareStatement("INSERT INTO public.customer_details(\r\n" + 
					"	\"Customer_SSN_ID\", \"Name\", \"Age\", \"Address_Line_1\", \"Address_Line_2\", \"State\", \"City\")\r\n" + 
					"	VALUES (?, ?, ?, ?, ?, ?, ?);");  
			stmt.setLong(1,Long.parseLong(ssnid));//1 specifies the first parameter in the query  
			stmt.setString(2,name); 
			stmt.setInt(3,age);
			stmt.setString(4,addline1);
			stmt.setString(5,addline2);
			stmt.setString(6,state);
			stmt.setString(7,city);
			
			 affectedrows=stmt.executeUpdate();  
			if(affectedrows>0) {
				return "Succesfully Registered!";
			}
			
		}catch(Exception e) {
			logger.log(Level.SEVERE,"Exception Occured",e);
		}
		return "Not Registered!";
	}
}