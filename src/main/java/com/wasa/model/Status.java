package com.wasa.model;

public class Status {
	private int id;
	private String status;
	public Status(int id,String status) {
		this.id =id;
		this.status=status;
	}
	
	public int getId() {
		return id;
	}
	public String getStatus() {
		return status;
	}
	
}
