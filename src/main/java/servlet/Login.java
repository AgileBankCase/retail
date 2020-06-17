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

import dao.LoginDAO;
import service.Validator;

@WebServlet(
        name = "MyServlet",
        urlPatterns = {"/login"}
    )
public class Login extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
    	
    	String username = req.getParameter("username");
    	String password = req.getParameter("password");
    	String accountType="false";
    	if(Validator.isValidString(username) && Validator.isValidString(password)) { 
    		accountType = LoginDAO.checkCredentials(username,password);
    		
    		if(accountType.equals("mismatch")){
        		req.setAttribute("msg", "Username or Password not correct!");
        		RequestDispatcher requestDispatcher = req.getRequestDispatcher("loginscreen.jsp");
        		requestDispatcher.forward(req, resp);
        	}else if(Validator.isValidString(accountType)) {
    			HttpSession session=req.getSession();
    			session.setAttribute("uname", username);
        		session.setAttribute("type", accountType);
        		
        		if(accountType.equals("executive")) {
        			RequestDispatcher requestDispatcher = req.getRequestDispatcher("create customer screen.jsp");
            		requestDispatcher.forward(req, resp);
        		}
        		else if(accountType.equals("cashier")) {
        			RequestDispatcher requestDispatcher = req.getRequestDispatcher("transfer money.html");
            		requestDispatcher.forward(req, resp);
        		}
    		}
    	}else if(accountType.equals("false")){
    		req.setAttribute("msg", "Username or Password should not be empty!");
    		RequestDispatcher requestDispatcher = req.getRequestDispatcher("loginscreen.jsp");
    		requestDispatcher.forward(req, resp);
    		
    	}
    }

}