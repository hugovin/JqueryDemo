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
 * Servlet implementation class Confirm
 */
@WebServlet("/Confirm")
public class Confirm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Confirm() {
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
	     boolean error = false;

			UserService userService = new UserService();
			try {
				error = userService.Confirm(1);
			} catch (Exception e) {
				e.printStackTrace();
			}
		JsonObject obj = new JsonObject();
		obj.addProperty("error", error);
		out.println(obj);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
