package servlet;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.CustomerDAO;
import service.Validator;

@WebServlet(
        name = "customer",
        urlPatterns = {"/customer"}
    )
public class Customer extends HttpServlet {
	static Logger logger = Logger.getLogger(Customer.class.getName());
	
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
    	try {
	    	String ssnid = req.getParameter("ssn-id");
	    	String name = req.getParameter("cname");
	    	String ageStr=req.getParameter("age");
	    	String addline1 = req.getParameter("addline1");
	    	String addline2 = req.getParameter("addline2");
	    	String city = req.getParameter("city");
	    	String state = req.getParameter("state");
	    	if(ssnid.isEmpty()||name.isEmpty()||ageStr.isEmpty()||addline1.isEmpty()||addline2.isEmpty()||city.isEmpty()||state.isEmpty()) {
	    		resp.getOutputStream().print("{\"status\":\"Please Enter Mandatory Fields\"}");
	    		return;
	    	}
    		int age = Integer.parseInt(ageStr);
	    	int result=CustomerDAO.registerCustomer(ssnid,name,age,addline1,addline2,city,state);
	    	if(result>0) {
	    		resp.getOutputStream().print("{\"status\":\"Succesfully Registered!\"}");
	    		return;
	    	}
    	}
    	catch(Exception e) {
        	logger.log(Level.SEVERE,"Exception occured",e);
        }
    	resp.getOutputStream().print("{\"status\":\"Registration failed\"}");
		return;
    }
    
   //doPut() //used for update customer
	
	  protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws
	  ServletException, IOException {
	  
	//String ssnid=req.getParameter("ssn-id");
	
//	  int result=CustomerDAO.updateCustomer(ssnid, name, age, addline1, addline2, city,
//	  state) 
		  }
	 
   //doDelete() //used for delete customer
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
    	
    }
   //doGet()//used for customer status display if time permits
}