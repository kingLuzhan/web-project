package com.wasa.controller;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.wasa.databaseConnection.DatabaseConnection;
import com.wasa.model.UserDetails;



public class SaveUserDetails {
private DatabaseConnection dc;
private Connection con;

public SaveUserDetails() {
	
	try {
		this.dc=new DatabaseConnection();
		Class.forName("com.mysql.cj.jdbc.Driver");
		this.con=this.dc.getConnect();
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
}

public int saveUserDetails(UserDetails ud) {
	int result=0;
	String query="Insert into member(name,email,password) values(?,?,?)";
	try {
		String name=ud.getName();
		String email=ud.getEmail();
		String password=ud.getPassword();
		PreparedStatement ps=con.prepareStatement(query);
		ps.setString(1,name);
		ps.setString(2,email);
		ps.setString(3,password);
		result=ps.executeUpdate();
	
	}catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}
	return result;
	
}
}
