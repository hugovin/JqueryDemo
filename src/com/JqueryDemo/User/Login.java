package com.JqueryDemo.User;

import com.google.gson.Gson;
import com.google.gson.JsonObject;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.JqueryDemo.Logic.UserService;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
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
	     int userId = 0; 
		String username = (request.getParameter("username") != null) ? request.getParameter("username") : ""; 
		String password = (request.getParameter("password") != null) ? request.getParameter("password") : "";
		if(!username.equals("") && !password.equals(""))	
		{
			UserService userService = new UserService();
			userId = userService.VerifyUserAccountByEmail(username,password);
		}
		JsonObject obj = new JsonObject();
		obj.addProperty("UserId", userId);
		out.println(obj);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
