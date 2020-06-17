package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.LoginDAO;
import service.Validator;

@WebServlet(
        name = "logincheck",
        urlPatterns = {"/logincheck"}
    )
public class CheckLogin extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
    	HttpSession session=req.getSession();
    	if(session.getAttribute("uname")!=null||session.getAttribute("uname")=="") {
    		if(session.getAttribute("type").equals("executive")) {
    			RequestDispatcher requestDispatcher = req.getRequestDispatcher("createcustomerscreen.jsp");
        		requestDispatcher.forward(req, resp);
    		}
    		else if(session.getAttribute("type").equals("cashier")) {
    			RequestDispatcher requestDispatcher = req.getRequestDispatcher("transfermoney.html");
        		requestDispatcher.forward(req, resp);
    		}
    	}
    	else {
    		RequestDispatcher requestDispatcher = req.getRequestDispatcher("loginscreen.jsp");
    		requestDispatcher.forward(req, resp);
    	}
    	
    }

}