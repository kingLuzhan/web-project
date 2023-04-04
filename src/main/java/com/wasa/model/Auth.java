package com.wasa.model;

public class Auth {
	private String email;
	private String password;
	
	public Auth(String email,String password) {
		
		// TODO Auto-generated constructor stub
		this.email=email;
		this.password=password;
	}

	public String getEmail() {
		return email;
	}

	public String getPassword() {
		return password;
	}
}
