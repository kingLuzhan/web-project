package com.wasa.model;

import java.io.Serializable;

public class Order {
	
	/*
	 * <th>Order Number</th> <th>Customer Name</th> <th>Product Name</th> <th>Order
	 * Date</th> <th>Order Total</th> <th>Status</th>
	 */
	private int order_id;
	private String order_date;
	private int product_id;
	private int customer_id;
	private int total_amount;
	private String status;
	private int quantity;
	private int price;
	
	void order(String order_date,int customer_id,int total_amount,String status) {
		this.customer_id=customer_id;
		this.order_date=order_date;
		this.total_amount=total_amount;
		this.status=status;
		
	}
	void orderDetails(int order_id,int product_id,int quantity,int price) {
		this.order_id=order_id;
		this.product_id=product_id;
		this.quantity=quantity;
		this.price=price;
		
	}
	
	public int getOrder_id() {
		return order_id;
	}
	public String getOrder_date() {
		return order_date;
	}
	public int getProduct_id() {
		return product_id;
	}
	public int getCustomer_id() {
		return customer_id;
	}
	public int getTotal_amount() {
		return total_amount;
	}
	public String getStatus() {
		return status;
	}
	public int getQuantity() {
		return quantity;
	}
	public int getPrice() {
		return price;
	}
	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}
	public void setOrder_date(String order_date) {
		this.order_date = order_date;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public void setCustomer_id(int customer_id) {
		this.customer_id = customer_id;
	}
	public void setTotal_amount(int total_amount) {
		this.total_amount = total_amount;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	

	
	
}
