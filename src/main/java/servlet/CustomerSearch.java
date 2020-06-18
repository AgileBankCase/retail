package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

import dao.CustomerSearchDAO;
import dao.LoginDAO;
import service.Validator;

@WebServlet(
        name = "customersearch",
        urlPatterns = {"/customersearch"}
    )
public class CustomerSearch extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
    	String ssnIdStr=req.getParameter("ssn-id");
    	String cusIdStr=req.getParameter("cid");
    	long ssnID=-1l,cusID=-1l;
    	if(Validator.isValidString(ssnIdStr)) {
    		ssnID=Long.parseLong(ssnIdStr);
    	}else if(Validator.isValidString(cusIdStr)) {
    		cusID=Long.parseLong(cusIdStr);
    	}
    	JSONObject json=CustomerSearchDAO.userDetails(ssnID,cusID);
    	resp.getOutputStream().print(json.toString());
    	return;
    }

}