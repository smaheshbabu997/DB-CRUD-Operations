package com.entity;

public class Student {

	private int id;
	private String fullName;
	private String address;
	private String dob;
	private String qualification;
	private String email;
	private String pwd;
	
	
	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Student(String fullName, String address, String dob, String qualification, String email,String pwd) {
		super();

		this.fullName = fullName;
		this.address = address;
		this.dob = dob;
		this.qualification = qualification;
		this.email = email;
		this.pwd=pwd;
	}
	
	
	
	
	public Student(int id, String fullName, String address, String dob, String qualification, String email,String pwd) {
		super();
		this.id = id;
		this.fullName = fullName;
		this.address = address;
		this.dob = dob;
		this.qualification = qualification;
		this.email = email;
		this.pwd=pwd;
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
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	@Override
	public String toString() {
		return "Student [id=" + id + ", fullName=" + fullName + ", address=" + address + ", dob=" + dob
				+ ", qualification=" + qualification + ", email=" + email + ", pwd= " + pwd + "]";
	}
	
	
}
