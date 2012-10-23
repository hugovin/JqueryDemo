package com.JqueryDemo.User;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.JqueryDemo.Beans.User;
import com.JqueryDemo.Logic.UserService;
import com.google.gson.JsonObject;

/**
 * Servlet implementation class Registration
 */
@WebServlet("/Registration")
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Registration() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String a = "";
		a = "1" + a;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		response.setCharacterEncoding("utf8");
		response.setContentType("application/json");
		int userId = 0;
		User newUser = new User();
		newUser.setEmail((request.getParameter("email") != null) ? request
				.getParameter("email") : "");
		newUser.setPasword((request.getParameter("password") != null) ? request
				.getParameter("password") : "");
		newUser.setUser((request.getParameter("user") != null) ? request
				.getParameter("user") : "");
		newUser.setCompany((request.getParameter("company") != null) ? request
				.getParameter("company") : "");
		newUser.setWebSite((request.getParameter("webSite") != null) ? request
				.getParameter("webSite") : "");
		newUser.setPhone((request.getParameter("phone") != null) ? request
				.getParameter("phone") : "");
		newUser.setStreet((request.getParameter("street") != null) ? request
				.getParameter("street") : "");
		newUser.setCity((request.getParameter("city") != null) ? request
				.getParameter("city") : "");
		newUser.setZipCode((request.getParameter("zipCode") != null) ? request
				.getParameter("zipCode") : "");
		newUser.setCountry((request.getParameter("country") != null) ? request
				.getParameter("country") : "");
		newUser.setRemarks((request.getParameter("remarks") != null) ? request
				.getParameter("remarks") : "");
		
		UserService userService = new UserService();
		JsonObject obj = new JsonObject();
		if(userService.Adduser(newUser)){
			HttpSession session = request.getSession(true);
			try {
				newUser.setUserId(userService.VerifyUserAccountByEmail(newUser.getEmail(),newUser.getPasword()));
				session.setAttribute("UserInfo", newUser);
				session.setAttribute("UserId", newUser.getUserId());
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			obj.addProperty("UserId", userId);
		}else{
			obj.addProperty("Error", "Unable to create User");
		}	
		
		
		out.println(obj);

	}
}
