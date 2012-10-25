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
 * Servlet implementation class Payment
 */
@WebServlet("/Payment")
public class Payment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Payment() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setCharacterEncoding("utf8");
		response.setContentType("application/json");
		int userId = 0;
		String PaymentType = (request.getParameter("payType") != null) ? request.getParameter("payType") : "";
		
		UserService userService = new UserService();
		JsonObject obj = new JsonObject();
		if(PaymentType.equals("cc")){
			HttpSession session = request.getSession(true);
			try {
				//add CreditCard
				session.setAttribute("cc","done" );
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			obj.addProperty("cc", "done");
		}
		if(PaymentType.equals("check"))
		{
			HttpSession session = request.getSession(true);
			try {
				//add CreditCard
				session.setAttribute("check","done" );
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			obj.addProperty("check", "done");
		}
		
		out.println(obj);
	}

}
