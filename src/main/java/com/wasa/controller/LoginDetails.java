package com.wasa.controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.mindrot.jbcrypt.BCrypt;

import com.wasa.databaseConnection.DatabaseConnection;
import com.wasa.model.Auth;



public class LoginDetails {
	private DatabaseConnection dc;
	private Connection con;
	private String user_type;
	private int memberId;
	public LoginDetails() {
		// TODO Auto-generated constructor stub
		try {
			this.dc=new DatabaseConnection();
			Class.forName("com.mysql.cj.jdbc.Driver");
			this.con=this.dc.getConnect();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public int loginDetails(Auth auth) {
		int result=0;
		String query="Select * from members";
		try{
			DatabaseConnection dc=new DatabaseConnection();
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=dc.getConnect();
			PreparedStatement ps=this.con.prepareStatement(query);
			ResultSet rs=ps.executeQuery();
			String email=auth.getEmail();
			String password=auth.getPassword();
			while(rs.next()){
				
				if (email.equals(rs.getString("Member_email"))&& BCrypt.checkpw(password, rs.getString("password"))) {
					this.user_type=rs.getString("user_type"); 
					this.memberId=rs.getInt("Member_id");
					result=1;
				} 
					
			}
			return result;
			
		}
		catch(Exception e){
			
		}  
		return result;
		
	}
	public String getUserType() {
		return this.user_type;
	}
	public int getMemberId() {
		return memberId;
	}
}
