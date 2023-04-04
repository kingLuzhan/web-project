package com.wasa.model;

public class UserDetails {
	private String name;
	private String email;
	private String password;
	private String image;
	private String address;
	private String number;

	public UserDetails(String name,String email,String password) {
		this.name=name;
		this.email=email;
		this.password=password;
		// TODO Auto-generated constructor stub
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
	public void setImage(String image) {
		this.image = image;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public void setNumber(String number) {
		this.number = number;
	}



}
