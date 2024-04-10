package com.wasa.controller;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.wasa.databaseConnection.DatabaseConnection;
import com.wasa.model.EditPage;
import com.wasa.model.EditPageDetails;
import com.wasa.model.Product;
import com.wasa.model.ProductDetailDesc;
import com.wasa.model.ProductDetailed;
import com.wasa.model.ProductDetails;


public class ProductDetail {
	private DatabaseConnection dc;
	private Connection con;

	  public ProductDetail() {
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
		String query="Insert into products(Product_name,Product_desc,Product_price,Product_image,Color_id,Brand_id,Category_id,Size_id,Quantity) values(?,?,?,?,?,?,?,?,?)";
		try {
			String name=pd.getProduct_name();
			int price=pd.getProduct_price();
			String desc=pd.getProduct_desc();
			String image=pd.getImage();
			int color=pd.getColor();
			int brand=pd.getBrand();
			int category=pd.getCategory();
			int size=pd.getSize();
			int quantity=10;
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
			result=ps.executeUpdate();
		
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return result;
		
	}
	
	 public ArrayList<ProductDetails> getProductDetail(){
	 ArrayList<ProductDetails> pd = new ArrayList<ProductDetails>();
	 PreparedStatement ps; try { 
		 ps = this.con.prepareStatement("SELECT p.Product_id, p.Product_name,p.Product_desc, p.Product_price,p.Product_image,col.Color_name,b.Brand_name, c.Category_type,  s.Size_name,p.Quantity\r\n"
		 		+ "FROM products p "
		 		+ "JOIN brand b ON p.Brand_id = b.Brand_id "
		 		+ "JOIN categories c ON p.Category_id = c.Category_id "
		 		+ "JOIN color col ON p.Color_id = col.Color_id "
		 		+ "JOIN size s ON p.Size_id = s.Size_id;");
	 ResultSet rs = ps.executeQuery();
	 while(rs.next()) { 
		 ProductDetails pds = new ProductDetails(
				 rs.getInt("product_id"),
	 rs.getString("product_name"),rs.getInt("product_price"),
	 rs.getString("product_desc"), rs.getString("product_image"),
	 rs.getString("color_name"), rs.getString("brand_name"),rs.getString("category_type"),rs.getString("size_name"),rs.getInt("quantity"));
		 pd.add(pds); 
		 } 
	 } catch (SQLException e) { 
		 //	 TODO Auto-generated catch block
		 e.printStackTrace(); 
		 
	 } return pd; }
	 
	 
	 

	 public int deleteProduct(int productId) {
		 int result=0;
		    PreparedStatement ps;
		    try {
		        ps = this.con.prepareStatement("DELETE FROM products WHERE Product_id = ?");
		        ps.setInt(1, productId);
		        ps.executeUpdate();
		        return result=1;
		    } catch (SQLException e) {
		        e.printStackTrace();
		        return result=0;
		    }
		}

	 public ArrayList<ProductDetailed> getProductDetails(){
			ArrayList<ProductDetailed> pd = new ArrayList<ProductDetailed>();
			PreparedStatement ps;
			try {
				ps = this.con.prepareStatement("Select * from products");
				ResultSet rs = ps.executeQuery();
				while(rs.next()) {
					ProductDetailed pds = new ProductDetailed(rs.getInt("Product_id"),
															rs.getString("Product_name"),
															rs.getInt("Product_price"),
															rs.getString("Product_desc"),
															rs.getString("Product_image"),
															rs.getInt("Color_id"),
															rs.getInt("Brand_id"),
															rs.getInt("Category_id"),
															rs.getInt("Size_id"),
															rs.getInt("Quantity"));
				pd.add(pds);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return pd;
		}
	 public ArrayList<ProductDetailDesc> getProductDetailDesc(int productId){
		 ArrayList<ProductDetailDesc> pdd = new ArrayList<ProductDetailDesc>();
		 PreparedStatement ps; try { 
			 ps = this.con.prepareStatement("SELECT p.Product_id, p.Product_name,p.Product_desc, p.Product_price,p.Product_image,col.Color_name,b.Brand_name, c.Category_type,  s.Size_name,p.Quantity\r\n"
			 		+ "FROM products p "
			 		+ "JOIN brand b ON p.Brand_id = b.Brand_id "
			 		+ "JOIN categories c ON p.Category_id = c.Category_id "
			 		+ "JOIN color col ON p.Color_id = col.Color_id "
			 		+ "JOIN size s ON p.Size_id = s.Size_id where Product_id='"+productId+"'");
		 ResultSet rs = ps.executeQuery();
		 while(rs.next()) { 
			 ProductDetailDesc pds = new ProductDetailDesc(
		 rs.getInt("Product_id"),
		 rs.getString("Product_name"),rs.getInt("Product_price"),
		 rs.getString("Product_desc"), rs.getString("Product_image"),
		 rs.getString("Color_name"), rs.getString("Brand_name"),rs.getString("Category_type"),rs.getString("Size_name"),rs.getInt("Quantity"));
		 pdd.add(pds); 
			 } 
		 } catch (SQLException e) { 
			 //	 TODO Auto-generated catch block
			 e.printStackTrace(); 
			 
		 } return pdd; 
	}
}
