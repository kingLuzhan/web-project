package com.wasa.controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.wasa.databaseConnection.DatabaseConnection;
import com.wasa.model.EditPage;
import com.wasa.model.EditPageDetails;

public class EditUserDetails {


private DatabaseConnection dc;
private Connection con;

public EditUserDetails() {
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

public int editProduct(EditPage ed) {
	
	int result=0;
	
	String query="UPDATE products\r\n"
			+ "SET Product_name = ?, Product_desc = ?, Product_price = ?, Product_image = ?, Color_id = ?, Brand_id = ?, Category_id = ?, Size_id = ?, Quantity = ?\r\n"
			+ "WHERE Product_id = ?;\r\n";
	try {
		String name=ed.getProduct_name();
		int price=ed.getProduct_price();
		String desc=ed.getProduct_desc();
		String image=ed.getImage();
		int color=ed.getColor();
		int brand=ed.getBrand();
		int category=ed.getCategory();
		int size=ed.getSize();
		int quantity=ed.getQuantity();
		int product=ed.getProduct_id();
		PreparedStatement ps=con.prepareStatement(query);
		ps.setString(1,name);
		ps.setString(2,desc);
		ps.setInt(3,price);
		ps.setString(4,image);
		ps.setInt(5,color);
		ps.setInt(6,brand);
		ps.setInt(7,category);
		ps.setInt(8,size);
		ps.setInt(9,quantity);
		ps.setInt(10,product);
		result=ps.executeUpdate();
	
	}catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}
	return result;
	
}
public ArrayList<EditPageDetails> getEditProductDetails(int orderId){
	 ArrayList<EditPageDetails> ed = new ArrayList<EditPageDetails>();
	 PreparedStatement ps; try { 
	 	 ps = this.con.prepareStatement("SELECT p.Product_id, p.Product_name,p.Product_desc, p.Product_price,p.Product_image,col.Color_name,b.Brand_name, c.Category_type,  s.Size_name,p.Quantity\r\n"
	 	 		+ "FROM products p "
	 	 		+ "JOIN brand b ON p.Brand_id = b.Brand_id "
	 	 		+ "JOIN categories c ON p.Category_id = c.Category_id "
	 	 		+ "JOIN color col ON p.Color_id = col.Color_id "
	 	 		+ "JOIN size s ON p.Size_id = s.Size_id WHERE"
	 	 		+ " p.Product_id = '"+orderId+"';");
	 ResultSet rs = ps.executeQuery();
	 while(rs.next()) { 
	 	EditPageDetails pds = new EditPageDetails(
	 			 rs.getInt("product_id"),
	 rs.getString("product_name"),rs.getInt("product_price"),
	 rs.getString("product_desc"), rs.getString("product_image"),
	 rs.getString("color_name"), rs.getString("brand_name"),rs.getString("category_type"),rs.getString("size_name"),rs.getInt("quantity"));
	 	 ed.add(pds); 
	 	 } 
	 } catch (SQLException e) { 
	 	 //	 TODO Auto-generated catch block
	 	 e.printStackTrace(); 
	 	 
	 } return ed; }



}
