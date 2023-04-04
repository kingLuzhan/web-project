package com.wasa.controller;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.wasa.databaseConnection.DatabaseConnection;
import com.wasa.model.Product;



public class ProductDetails {
	private DatabaseConnection dc;
	private Connection con;

	  public ProductDetails() {
		// TODO Auto-generated constructor stub
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


	public int productDetails(Product pd) {
		int result=0;
		String query="Insert into products(productname,price,productdesc) values(?,?,?)";
		try {
			String name=pd.getProduct_name();
			int price=pd.getProduct_price();
			String desc=pd.getProduct_desc();
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1,name);
			ps.setInt(2,price);
			ps.setString(3,desc);
			result=ps.executeUpdate();
		
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return result;
		
	}
}
