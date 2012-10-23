package com.JqueryDemo.Logic;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.JqueryDemo.Beans.User;
import com.JqueryDemo.DB.ConnectMySql;

public class UserService {

	public int VerifyUserAccountByEmail(String username, String password) throws Exception {
		int userId = 0;
		ConnectMySql connectMySql = new ConnectMySql();
		
		try {		
			Connection con = connectMySql.OpenConnection();
			Statement st = con.createStatement();
			String query = "SELECT id FROM pso_login WHERE username ='"+ username.toLowerCase()+"' AND passwword = '"+ password.toLowerCase()+"'";
			ResultSet rs = st.executeQuery(query);
			
			try{
				while (rs.next()) {
					userId = Integer.parseInt(rs.getString(1));					
				}
			}catch(Exception e)
			{
				userId = 0;
			}
			connectMySql.CloseConnection();


		} catch (Exception e) {
			connectMySql.CloseConnection();
			return userId;
		}
		connectMySql.CloseConnection();
		return userId;

	}
	
	///verifies if the email is unique in the environment 
	public int VerifyUniqueEmail(String email) throws Exception {
		int userId = 0;
		ConnectMySql connectMySql = new ConnectMySql();
		
		try {		
			Connection con = connectMySql.OpenConnection();
			Statement st = con.createStatement();
			String query = "SELECT id FROM pso_login WHERE username ='"+ email.toLowerCase()+"'";
			ResultSet rs = st.executeQuery(query);
			
			try{
				while (rs.next()) {
					userId = Integer.parseInt(rs.getString(1));					
				}
			}catch(Exception e)
			{
				userId = 0;
			}
			connectMySql.CloseConnection();

		} catch (Exception e) {
			connectMySql.CloseConnection();
			return userId;
		}
		connectMySql.CloseConnection();
		return userId;
	}
	
	public boolean Adduser(User newUser)
	{
		if(!InsertLogin(newUser)){
			return false;
		}
		if(!InsertMembership(newUser))
		{
			return false;
		}
		return true;
	}
	 
	public boolean InsertLogin(User newUser){
		ConnectMySql connectMySql = new ConnectMySql();
		
		try {		
			Connection con = connectMySql.OpenConnection();
			Statement st = con.createStatement();
			String query = "INSERT INTO pso_demo_jquery.pso_login(username,passwword,status)VALUES('"+newUser.getEmail().toLowerCase()+"','"+newUser.getPasword()+"',2);";
			st.execute(query); 
			connectMySql.CloseConnection();
			return true;
		}catch (SQLException e1) {
				e1.printStackTrace();
				return false;
			
		} catch (Exception e) {
			try {
				connectMySql.CloseConnection();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			return  false;
		} 
	}
	

	public boolean InsertMembership(User newUser){
		ConnectMySql connectMySql = new ConnectMySql();
		
		try {		
			int loginId = VerifyUserAccountByEmail(newUser.getEmail().toLowerCase(),newUser.getPasword());
			Connection con = connectMySql.OpenConnection();
			Statement st = con.createStatement();
			String query = "INSERT INTO pso_demo_jquery.pso_user_membership(login_id,user,company,website,phone,city,street,zip_code,country,remarks,reg_step)"+
					       "VALUES("+loginId+",'"+newUser.getUser()+"','"+newUser.getCompany()+"','"+newUser.getWebSite()+"','"+newUser.getPhone()+"'"+
					       ",'"+newUser.getCity()+"','"+newUser.getStreet()+"','"+newUser.getZipCode()+"','"+newUser.getCountry()+"','"+newUser.getRemarks()+"',2);";//2 means
			st.execute(query); 
			connectMySql.CloseConnection();
			return true;
		}catch (SQLException e1) {
				e1.printStackTrace();
				return false;
			
		} catch (Exception e) {
			try {
				connectMySql.CloseConnection();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			return  false;
		} 
	}
	
	public boolean AdduserPayment(){
		return false;
	}

}
