package com.wasa.model;

public class RatingDetails {
	private int rating_id;
	private int member_id;
	private int product_id;
	private float rating;
	private String comment;
	public RatingDetails(int rating_id,int member_id,int product_id,float rating, String comment) {
		this.rating_id=rating_id;
		this.member_id=member_id;
		this.product_id=product_id;
		this.rating=rating;
		this.comment=comment;
		// TODO Auto-generated constructor stub
	}
	public int getRating_id() {
		return rating_id;
	}
	public int getMember_id() {
		return member_id;
	}
	public int getproduct_id() {
		return product_id;
	}
	public float getRating() {
		return rating;
	}
	public String getComment() {
		return comment;
	}
	public void setRating_id(int rating_id) {
		this.rating_id = rating_id;
	}
	public void setMember_id(int member_id) {
		this.member_id = member_id;
	}
	public void setproduct_id(int product_id) {
		this.product_id = product_id;
	}
	public void setRating(float rating) {
		this.rating = rating;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
}
