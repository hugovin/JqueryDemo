package com.JqueryDemo.DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class ConnectMySql {

	private Connection cnx = null;

	public Connection OpenConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// Error loading mysql connector
			e.printStackTrace();
		}
		String protocolo = "jdbc:mysql://";
		String URL_conexion = protocolo + "localhost/" + "pso_demo_jquery";
		try {
			cnx = DriverManager.getConnection(URL_conexion, "root", "admin");
			return cnx;
		} catch (Exception e) {
			return null;
		}

	}

	public void CloseConnection() throws SQLException {
		if (cnx != null) {
			cnx.close();
		}
	}

}
