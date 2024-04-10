package com.wasa.model;

import java.io.Serializable;

public class CustomerDetails implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String name;
	private String email;
	private String password;
	private String image;
	private String address;
	private String number;
	private String userType;
	public CustomerDetails() {
		// TODO Auto-generated constructor stub
		super();
	}
	public String getName() {
		return name;
	}

	public String getEmail() {
		return email;
	}

	public String getPassword() {
		return password;
	}
	public String getImage() {
		return image;
	}
	public String getAddress() {
		return address;
	}
	public String getNumber() {
		return number;
	}
	public String getUserType() {
		return userType;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public void setUserType(String userType) {
		this.userType = userType;
	}
	
}
