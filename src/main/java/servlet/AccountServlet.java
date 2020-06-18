package servlet;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import dao.AccountDAO;
import dao.CustomerDAO;
import dao.CustomerSearchDAO;

@WebServlet(
        name = "account",
        urlPatterns = {"/account"}
    )
public class AccountServlet extends HttpServlet {

	static Logger logger = Logger.getLogger(AccountServlet.class.getName());
	
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
    	try {
	    	String customerID = req.getParameter("cus-id");
	    	String accountType = req.getParameter("type");
	    	String depositAmount = req.getParameter("deposit-amt");
	    	JSONObject userDetailsJSON = CustomerSearchDAO.userDetails(-1l, Long.parseLong(customerID));
	    	if(((JSONArray)userDetailsJSON.get("User_Details")).size()>0) {
	    		JSONObject accountDetails = AccountDAO.getAccounts(Long.parseLong(customerID));
	    		JSONArray accounts = (JSONArray)accountDetails.get("Account_Details");
	    		if(accounts!=null && accounts.size()>0) {
	    			for(int index = 0; index < accounts.size(); index++) {
	    				if(((JSONObject)accounts.get(index)).get("Account_Type").equals(accountType)) {
	    					resp.getOutputStream().print("{\"status\":\""+ accountType + " type account already exists for this Customer ID!\"}");
	    					return;
	    				}
	    			}
	    		}
	    		int result = AccountDAO.addAccount(Long.parseLong(customerID), accountType, Long.parseLong(depositAmount));
	    		if (result > 0) {
					resp.getOutputStream().print("{\"status\":\"Succesfully Registered!\"}");
					return;
				}
	    	}else {
	    		resp.getOutputStream().print("{\"status\":\"Customer ID does not exist!\"}");
				return;
	    	}
    	} catch (Exception e) {
    		logger.log(Level.SEVERE, "Exception occured", e);
    	}
    	return;
    }
    
    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	// TODO Auto-generated method stub
    	String cusid = req.getParameter("cusid");
    	String type = req.getParameter("type");
		try{
			int result=AccountDAO.deleteCustomer(cusid, type);
			if (result > 0) {
				resp.getOutputStream().print("{\"status\":\"Succesfully Deleted!\"}");
				return;
			}else {
				resp.getOutputStream().print("{\"status\":\"Account type/Customer ID does not exist!\"}");
				return;
			}
		} catch (Exception e) {
			logger.log(Level.SEVERE, "Exception occured", e);
		}
		resp.getOutputStream().print("{\"status\":\"Delete failed\"}");
		return;
    }

}