package com.wasa.controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServlet;

import com.wasa.databaseConnection.DatabaseConnection;
import com.wasa.model.Cart;
import com.wasa.model.CartDetails;

import javax.servlet.annotation.WebServlet;

/**
 * Servlet implementation class CartOperations
 */
@WebServlet("/CartOperations")
public class CartOperations extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DatabaseConnection dc;
	private Connection con;
	
    public CartOperations() {
        super();
        try {
			this.dc=new DatabaseConnection();
			Class.forName("com.mysql.cj.jdbc.Driver");
			this.con=this.dc.getConnect();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }

    public int saveCartDetails(Cart cart) {
    	int result=0;
    	String query="Insert into cart(Product_id,Member_id,Quantity) Values(?,?,?)";
    	try {
    		int product_id = cart.getProduct_id();
    		int member_id = cart.getMember_id();
    		int quantity = cart.getQuantity();
    		PreparedStatement ps = con.prepareStatement(query);
    		ps.setInt(1, product_id);
    		ps.setInt(2, member_id);
    		ps.setInt(3, quantity);
    		result=ps.executeUpdate();
    	} catch(Exception e) {
    		e.printStackTrace();
    	}
    	return result;
    }
    
    public ArrayList<CartDetails> getCartDetails(int memberId) {
    	ArrayList<CartDetails> cartList = new ArrayList<CartDetails>();
    	try {
    		PreparedStatement ps = this.con.prepareStatement("SELECT p.Product_name,p.Product_price,p.Product_image,c.Cart_id,c.Quantity from cart c JOIN products p ON c.Product_id = p.Product_id where Member_id='"+memberId+"'");
    	
    		ResultSet rs = ps.executeQuery();
    		while(rs.next()) {
    			CartDetails cartDetails = new CartDetails(rs.getInt("Cart_id"),rs.getString("Product_name"),rs.getString("Product_price"),rs.getString("Product_image"),rs.getInt("Quantity"));
    			cartList.add(cartDetails);
    		}
    	} catch(Exception e) {
    		e.printStackTrace();
    	}
    	return cartList;
    }
    
    public int deleteCartItem(int cartId) {
		 int result=0;
		    PreparedStatement ps;
		    try {
		        ps = this.con.prepareStatement("DELETE FROM cart WHERE Cart_id = ?");
		        ps.setInt(1, cartId);
		        ps.executeUpdate();
		        return result=1;
		    } catch (SQLException e) {
		        e.printStackTrace();
		        return result=0;
		    }
		}
}
