package com.JqueryDemo.Logic;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

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

}
