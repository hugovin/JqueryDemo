package com.JqueryDemo.Logic;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import com.JqueryDemo.DB.ConnectMySql;

public class UserService {

	public int VerifyUserAccountByEmail(String username, String password) {
		int userId = 0;
		try {

			ConnectMySql connectMySql = new ConnectMySql();
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
			return userId;
		}
		return userId;

	}

}
