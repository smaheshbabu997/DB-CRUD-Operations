package com.entity;

public class studentlist {
	private int id;
	private String fullName;
	private String address;
	
	public studentlist() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
//constructers***********
	
	public studentlist(int id, String fullName, String address) {
		super();
		this.id = id;
		this.fullName = fullName;
		this.address = address;
	}
	
	public studentlist( String fullName,String address) {
		super();
		
		this.fullName = fullName;
		this.address= address;
	}

//setter and getter methods

	public String getAddress() {
		return address;
	}



	public void setAddress(String address) {
		this.address = address;
	}



	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
	}



	public String getFullName() {
		return fullName;
	}



	public void setFullName(String fullName) {
		this.fullName = fullName;
	}




	@Override 
	public String toString() {
		return "studentlist [id=" + id + ", fullName=" + fullName + ", address=" + address + "]";
	}
	
	
}
