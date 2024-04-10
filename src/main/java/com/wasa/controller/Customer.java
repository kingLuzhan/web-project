package com.wasa.controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.wasa.databaseConnection.DatabaseConnection;

import com.wasa.model.CustomerDetails;
import com.wasa.model.UserDetails;
public class Customer {
	private DatabaseConnection dc;
	private Connection con;
	public Customer() {
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
	
	public int customerDetails(CustomerDetails cd) {
		int result;
		String query="Insert into members(Member_name,Member_address,Member_contact,Member_email,image,password,user_type) values(?,?,?,?,?,?,?)";
		try {
			String name=cd.getName();
			String address=cd.getAddress();
			String contact=cd.getNumber();
			String email=cd.getEmail();
			String image=cd.getImage();
			String password=cd.getPassword();
			String user_type=cd.getUserType();
					
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, name);
			ps.setString(2,address);
			ps.setString(3, contact);
			ps.setString(4,email);
			ps.setString(5, image);
			ps.setString(6,password);
			ps.setString(7, user_type);
			result=ps.executeUpdate();
			result=1;
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			result=0;
		}
		return result;
		
	}
	public ArrayList<UserDetails> getUserDetails(){
		ArrayList<UserDetails> rd = new ArrayList<UserDetails>();
		String query="Select * from members where user_type='customer' ";
		PreparedStatement ps;
		try {
		ps = this.con.prepareStatement(query);
		ResultSet rs = ps.executeQuery();
		while(rs.next()) {
			UserDetails ud= new UserDetails(
					rs.getInt("Member_id"), 
					rs.getString("Member_name"),
					rs.getString("Member_address"),  
					rs.getString("Member_contact"),  
					rs.getString("Member_email"),  
					rs.getString("image"),  
					rs.getString("password"),
					rs.getString("user_type"));
			rd.add(ud);
		}
		} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		}
		return rd;
		}
	
	public ArrayList<UserDetails> getUserAccount(String email){
		ArrayList<UserDetails> rd = new ArrayList<UserDetails>();
		String query="Select * from members where Member_email='"+email+"' ";
		PreparedStatement ps;
		try {
		ps = this.con.prepareStatement(query);
		ResultSet rs = ps.executeQuery();
		while(rs.next()) {
			UserDetails ud= new UserDetails(
					rs.getInt("Member_id"), 
					rs.getString("Member_name"),
					rs.getString("Member_address"),  
					rs.getString("Member_contact"),  
					rs.getString("Member_email"),  
					rs.getString("image"),  
					rs.getString("password"),
					rs.getString("user_type"));
			rd.add(ud);
		}
		
		} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		}
		return rd;
		}

}
