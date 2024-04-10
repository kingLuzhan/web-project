package com.wasa.model;

import java.io.Serializable;

public class Product implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	
	private String product_name;
	private int product_price;
	private String product_desc;
	private String image;
	private int color;
	private int brand;
	private int category;
	private int size;
	private int quantity;
	private int product_id;
	
	public Product() {
		// TODO Auto-generated constructor stub
		super();
//		String product_name,String product_desc,int product_price,int color,int brand,int category,int size,int quantity
//		this.product_name=product_name;
//		this.product_price=product_price;
//		this.product_desc=product_desc;
//		this.brand=brand;
//		this.color=color;
//		this.category=category;
//		this.size=size;
//		this.quantity=quantity;
		

	}
	
	public int getColor() {
		return color;
	}

	public int getBrand() {
		return brand;
	}

	public int getCategory() {
		return category;
	}

	public int getSize() {
		return size;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public void setColor(int color) {
		this.color = color;
	}

	public void setBrand(int brand) {
		this.brand = brand;
	}

	public void setCategory(int category) {
		this.category = category;
	}

	public void setSize(int size) {
		this.size = size;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public String getImage() {
		return image;
	}

	

	public int getProduct_id() {

		return product_id;

	}

	public void setProduct_id(int product_id) {

		this.product_id = product_id;

	}

	public String getProduct_name() {

		return product_name;

	}

	public void setProduct_name(String product_name) {

		this.product_name = product_name;

	}

	public int getProduct_price() {

		return product_price;

	}

	public void setProduct_price(int product_price) {

		this.product_price = product_price;

	}

	public String getProduct_desc() {

		return product_desc;

	}

	public void setProduct_desc(String product_desc) {

		this.product_desc = product_desc;

	}

}
