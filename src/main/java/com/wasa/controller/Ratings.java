package com.wasa.controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.wasa.databaseConnection.DatabaseConnection;
import com.wasa.model.Rating;
import com.wasa.model.RatingDetails;

public class Ratings {
	private DatabaseConnection dc;
	private Connection con;
public Ratings() {
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
public int RatingDetail(Rating r) {
	int result=0;
	String query="Insert into ratings(Comments,product_id,Member_id,rating) values(?,?,?,?)";
	try {
		String comment=r.getComment();
		int member=r.getMember_id();
		int product=r.getproduct_id();
		float rating=r.getRating();
		PreparedStatement ps=con.prepareStatement(query);
		ps.setString(1, comment);
		ps.setInt(2,product);
		ps.setInt(3,member);
		ps.setFloat(4,rating);
		result=ps.executeUpdate();
	
	}catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}
	return result;
	
}
public ArrayList<RatingDetails> getRatingDetails(){
	ArrayList<RatingDetails> rd = new ArrayList<RatingDetails>();
	PreparedStatement ps;
	try {
	ps = this.con.prepareStatement("Select * from ratings where product_id=2");
	ResultSet rs = ps.executeQuery();
	while(rs.next()) {
		RatingDetails r = new RatingDetails(rs.getInt("Rating_id"),
				rs.getInt("product_id"),rs.getInt("Member_id"),
				rs.getFloat("rating"), rs.getString("Comments"));
	
	rd.add(r);
	}
	} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
	}
	return rd;
	}


}