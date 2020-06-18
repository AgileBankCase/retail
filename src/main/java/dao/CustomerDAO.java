package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Level;
import java.util.logging.Logger;

import service.DBUtil;
import service.Validator;

public class CustomerDAO {

	static Logger logger = Logger.getLogger(CustomerDAO.class.getName());

	public static int registerCustomer(String ssnid, String name, int age, String addline1, String addline2,
			String city, String state) {
		int affectedrows = 0;
		try {
			Connection conn = DBUtil.getConnection();
			PreparedStatement stmt = conn.prepareStatement("INSERT INTO public.customer_details(\r\n"
					+ "	\"Customer_SSN_ID\", \"Name\", \"Age\", \"Address_Line_1\", \"Address_Line_2\", \"State\", \"City\")\r\n"
					+ "	VALUES (?, ?, ?, ?, ?, ?, ?);");
			stmt.setLong(1, Long.parseLong(ssnid));// 1 specifies the first parameter in the query
			stmt.setString(2, name);
			stmt.setInt(3, age);
			stmt.setString(4, addline1);
			stmt.setString(5, addline2);
			stmt.setString(6, state);
			stmt.setString(7, city);

			affectedrows = stmt.executeUpdate();

		} catch (Exception e) {
			logger.log(Level.SEVERE, "Exception Occured", e);
		}
		return affectedrows;
	}

	// update
	public static int updateCustomer(String cusId, String name, int age, String addline1, String addline2) {
		int affectedrows = 0;
		try {
			Connection conn = DBUtil.getConnection();
			PreparedStatement stmt = conn.prepareStatement("UPDATE public.customer_details\r\n"
					+ "	SET  \"Name\"=?, \"Age\"=?, \"Address_Line_1\"=?, \"Address_Line_2\"=?\r\n"
					+ "	WHERE \"Customer_ID\"=?;");

			stmt.setString(1, name);
			stmt.setInt(2, age);
			stmt.setString(3, addline1);
			stmt.setString(4, addline2);
			stmt.setLong(5, Long.parseLong(cusId));
			affectedrows = stmt.executeUpdate();

		} catch (Exception e) {
			logger.log(Level.SEVERE, "Exception Occured", e);
		}
		return affectedrows;
	}

	// delete
	public static int deleteCustomer( String cusId) {
		int affectedrows = 0;
		try {
			Connection conn = DBUtil.getConnection();
			PreparedStatement stmt = conn.prepareStatement(
					"DELETE FROM public.customer_details\r\n" + " WHERE \"Customer_ID\"=?;");
		
			stmt.setLong(1, Long.parseLong(cusId));
			affectedrows = stmt.executeUpdate();

		} catch (Exception e) {
			logger.log(Level.SEVERE, "Exception Occured", e);
		}
		return affectedrows;
	}
}