package com.wasa.model;

public class OrderDetail {
	private int order_id;
	private String product;
	private String customer;
	private int total_amount;
	private int price;
	private int quantity;
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	private String status;
	public OrderDetail(int order_id,String customer,String product,int price,int total_amount,int quantity,String status) {
		// TODO Auto-generated constructor stub
		this.order_id=order_id;
		this.product=product;
		this.customer=customer;
		this.total_amount=total_amount;
		this.status=status;
		this.setPrice(price);
		this.quantity=quantity;
		
	}
	public int getOrder_id() {
		return order_id;
	}
	public String getProduct() {
		return product;
	}
	public String getCustomer() {
		return customer;
	}
	public int getTotal_amount() {
		return total_amount;
	}
	public String getStatus() {
		return status;
	}
	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}
	public void setProduct(String product) {
		this.product = product;
	}
	public void setCustomer(String customer) {
		this.customer = customer;
	}
	public void setTotal_amount(int total_amount) {
		this.total_amount = total_amount;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	

}
