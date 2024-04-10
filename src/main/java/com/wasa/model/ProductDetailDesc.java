package com.wasa.model;

public class ProductDetailDesc {
		private int product_id;
		private String product_name;
		private int product_price;
		private String product_desc;
		private String image;
		private String color;
		private String brand;
		private String category;
		private String size;
		private int quantity;
		
		public ProductDetailDesc(int product_id, String product_name, int product_price, String product_desc,
				String image, String color, String brand, String category, String size, int quantity) {
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

		public String getColor() {
			return color;
		}

		public void setColor(String color) {
			this.color = color;
		}

		public String getBrand() {
			return brand;
		}

		public void setBrand(String brand) {
			this.brand = brand;
		}

		public String getCategory() {
			return category;
		}

		public void setCategory(String category) {
			this.category = category;
		}

		public String getSize() {
			return size;
		}

		public void setSize(String size) {
			this.size = size;
		}

		public int getQuantity() {
			return quantity;
		}

		public void setQuantity(int quantity) {
			this.quantity = quantity;
		}
		
}