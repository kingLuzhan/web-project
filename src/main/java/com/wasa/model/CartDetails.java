package com.wasa.model;

public class CartDetails {
	private int cart_id;
	private String product_name;
	private String product_price;
	private String product_image;
	private int quantity;
	
	public CartDetails(int cart_id, String product_name, String product_price, String product_image, int quantity) {
		super();
		this.cart_id = cart_id;
		this.product_name = product_name;
		this.product_price = product_price;
		this.product_image = product_image;
		this.quantity = quantity;
	}


	public int getCart_id() {
		return cart_id;
	}

	public void setCart_id(int cart_id) {
		this.cart_id = cart_id;
	}

	public String getProduct_price() {
		return product_price;
	}

	public void setProduct_price(String product_price) {
		this.product_price = product_price;
	}

	public String getProduct_image() {
		return product_image;
	}

	public void setProduct_image(String product_image) {
		this.product_image = product_image;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	
}