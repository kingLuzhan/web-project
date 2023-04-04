package com.wasa.databaseConnection;
import java.sql.Connection;  
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
	public Connection getConnect() {
		Connection con = null;
		try {
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/"+DatabaseCredentials.getDbName(), 
					DatabaseCredentials.getUsername(), DatabaseCredentials.getPassword());
			}
		 catch (SQLException e) {
		 }
		return con;
	}
}