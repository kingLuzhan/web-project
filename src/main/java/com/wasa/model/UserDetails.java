package com.wasa.model;

public class UserDetails {
	private int id;
	private String name;
	private String email;
	private String password;
	private String image;
	private String address;
	private String number;
	private String userType;

	public UserDetails(int id,String name, String address,String number,String email,String image,String password,String userType) {
		this.id=id;
		this.name=name;
		this.email=email;
		this.password=password;
		this.image=image;
		this.address=address;
		this.number=number;
		this.userType=userType;
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
	public String getUserType() {
		return userType;
	}
	public void setUserType(String userType) {
		this.userType = userType;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}



}
