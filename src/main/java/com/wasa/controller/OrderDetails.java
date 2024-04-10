package com.wasa.controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.wasa.databaseConnection.DatabaseConnection;
import com.wasa.model.Order;
import com.wasa.model.OrderDetail;



public class OrderDetails {
	private DatabaseConnection dc;
	private Connection con;
	private String usertype;
	private String email;
	public OrderDetails() {
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
public int orderDetails(Order orders) {
		
		int result=0;
		String query="Insert into products() values(?,?)";
		try {
			int product=orders.getProduct_id();
			String date=orders.getOrder_date();
			PreparedStatement ps=con.prepareStatement(query);
			ps.setInt(1,product);
			ps.setString(2,date);
			result=ps.executeUpdate();
		
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return result;
		
	}
public ArrayList<OrderDetail> getOrderDetails(){
	 ArrayList<OrderDetail> od = new ArrayList<OrderDetail>();
	 PreparedStatement ps; try { 
	 	 ps = this.con.prepareStatement("SELECT o.Order_id, o.Total_amount,o.status,p.Product_name, od.Quantity, p.Product_price, m.Member_name\r\n"
	 	 		+ "FROM order_item o \r\n"
	 	 		+ "JOIN order_details od ON o.Order_id = od.Order_id"
	 	 		+ " JOIN members m ON o.Member_id = m.Member_id"
	 	 		+ " JOIN products p ON od.Product_id = p.Product_id");
	 ResultSet rs = ps.executeQuery();
	 while(rs.next()) { 
		 OrderDetail pds = new OrderDetail(rs.getInt("Order_id"), rs.getString("Member_name"), rs.getString("Product_name"), rs.getInt("Product_price"), rs.getInt("Total_amount"),rs.getInt("Quantity"),rs.getString("status"));
	 	od.add(pds); 
	 	 } 
	 } catch (SQLException e) { 
	 	 //	 TODO Auto-generated catch block
	 	 e.printStackTrace(); 
	 	 
	 } return od; }


}
