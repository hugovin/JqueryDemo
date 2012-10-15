package com.JqueryDemo.User;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.JqueryDemo.Logic.UserService;
import com.google.gson.JsonObject;

/**
 * Servlet implementation class Validations
 */
@WebServlet("/Validations")
public class Validations extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Validations() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();

		 response.setCharacterEncoding("utf8");
	     response.setContentType("application/json"); 
			JsonObject obj = new JsonObject();
	     String validation = (request.getParameter("validate") != null)? request.getParameter("validate"):"";
	     if(validation.equals("email"))
	     {
	    	 int userId = 0; 
	 		String email = (request.getParameter("email") != null) ? request.getParameter("email") : ""; 
	 		if(!email.equals(""))
	 		{
	 			UserService userService = new UserService();
	 			try {
	 				userId = userService.VerifyUniqueEmail(email);
	 			} catch (Exception e) {
	 				e.printStackTrace();
	 			}
	 		}
	 		
	 		obj.addProperty("UserId", userId);

	     }
	 	out.println(obj);
	     
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
