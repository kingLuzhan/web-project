package com.wasa.controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.wasa.databaseConnection.DatabaseConnection;
import com.wasa.model.UserDetails;

public class ValidationEmail {
private String email;
private DatabaseConnection dc;
private Connection con;
private boolean validEmail;

public ValidationEmail(UserDetails user) {
	this.email=user.getEmail();
	dc=new DatabaseConnection();
	 this.con=this.dc.getConnect();
	// TODO Auto-generated constructor stub
}
void checkEmail() {
	String query = "SELECT COUNT(*) FROM mytable WHERE email=?";
	try {
		PreparedStatement ps = this.con.prepareStatement(query);
		ps.setString(1, email);
		ResultSet resultSet = ps.executeQuery();
		int count = 0;
		if (resultSet.next()) {
		    count = resultSet.getInt(1);
		}
		if (count > 0) {
			validEmail=true;// email already exists in database
			
		} else {
			validEmail=false;
		    // email doesn't exist in database
		}


	}catch (Exception e) {
		// TODO: handle exception
	}

}
public boolean isValidEmail() {
	return validEmail;
}
}
