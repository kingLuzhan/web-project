package com.wasa.model;

public class ProductDetailed {
		private int product_id;
		private String product_name;
		private int product_price;
		private String product_desc;
		private String image;
		private int color;
		private int brand;
		private int category;
		private int size;
		private int quantity;
		
		
		public ProductDetailed(int product_id, String product_name, int product_price, String product_desc, String image,
				int color, int brand, int category, int size, int quantity) {
			super();
			this.product_id = product_id;
			this.product_name = product_name;
			this.product_price = product_price;
			this.product_desc = product_desc;
			this.image = image;
			this.color = color;
			this.brand = brand;
			this.category = category;
			this.size = size;
			this.quantity = quantity;
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
		public String getImage() {
			return image;
		}
		public void setImage(String image) {
			this.image = image;
		}
		public int getColor() {
			return color;
		}
		public void setColor(int color) {
			this.color = color;
		}
		public int getBrand() {
			return brand;
		}
		public void setBrand(int brand) {
			this.brand = brand;
		}
		public int getCategory() {
			return category;
		}
		public void setCategory(int category) {
			this.category = category;
		}
		public int getSize() {
			return size;
		}
		public void setSize(int size) {
			this.size = size;
		}
		public int getQuantity() {
			return quantity;
		}
		public void setQuantity(int quantity) {
			this.quantity = quantity;
		}

		
}