package com.gh.entity;

public class User {
	
	private Integer user_id;
	
	private String user_name;
	
	private String password;
	
	private String phone;
	
	private String email;
	
	private String address;
	
	public User() {
		super();
	}

	public Integer getUser_id() {
		return user_id;
	}

	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public User(String user_name, String password, String phone, String email, String address) {
		super();
		this.user_name = user_name;
		this.password = password;
		this.phone = phone;
		this.email = email;
		this.address = address;
	}
}
