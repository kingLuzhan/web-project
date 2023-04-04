package com.wasa.model;

import java.io.Serializable;

public class Product implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private int product_id;

	private String product_name;
	private int product_price;
	private String product_desc;
	private String image;
	private String color;
	private String brand;
	private String category;
	public String getImage() {
		return image;
	}

	public String getColor() {
		return color;
	}

	public String getBrand() {
		return brand;
	}

	public String getCategory() {
		return category;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public void setCategory(String category) {
		this.category = category;
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
