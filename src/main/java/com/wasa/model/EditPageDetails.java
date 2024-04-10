package com.wasa.model;

public class EditPageDetails {
	private String product_name;
	private int product_price;
	private String product_desc;
	private String image;
	private String color;
	private String brand;
	private String category;
	private String size;
	
	public String getColor() {
		return color;
	}

	public String getBrand() {
		return brand;
	}

	public String getCategory() {
		return category;
	}

	public String getSize() {
		return size;
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

	public void setSize(String size) {
		this.size = size;
	}

	private int quantity;
	private int product_id;
	
	public EditPageDetails(int product_id,String product_name,int product_price,String product_desc,String image,String color,String brand,String category,String size,int quantity) {
		// TODO Auto-generated constructor stub
		this.product_id=product_id;
		this.product_name=product_name;
		this.product_price=product_price;
		this.product_desc=product_desc;
		this.image=image;
		this.brand=brand;
		this.color=color;
		this.category=category;
		this.size=size;
		this.quantity=quantity;
	}

	public String getProduct_name() {
		return product_name;
	}

	public int getProduct_price() {
		return product_price;
	}

	public String getProduct_desc() {
		return product_desc;
	}

	public String getImage() {
		return image;
	}

	
	public int getQuantity() {
		return quantity;
	}

	public int getProduct_id() {
		return product_id;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public void setProduct_price(int product_price) {
		this.product_price = product_price;
	}

	public void setProduct_desc(String product_desc) {
		this.product_desc = product_desc;
	}

	public void setImage(String image) {
		this.image = image;
	}

	

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	

}
