package com.JqueryDemo.Beans;

public class User {
	private int UserId;
	private String Email;	
	private String Pasword;
	private String User;
	private String Company;
	private String WebSite;
	private String Phone;
	private String Street;
	private String City;
	private String ZipCode;
	private String Country;
	private String Remarks;
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getPasword() {
		return Pasword;
	}
	public void setPasword(String pasword) {
		Pasword = pasword;
	}
	public String getUser() {
		return User;
	}
	public void setUser(String user) {
		User = user;
	}
	public String getCompany() {
		return Company;
	}
	public void setCompany(String company) {
		Company = company;
	}
	public String getWebSite() {
		return WebSite;
	}
	public void setWebSite(String webSite) {
		WebSite = webSite;
	}
	public String getPhone() {
		return Phone;
	}
	public void setPhone(String phone) {
		
		Phone = phone;
	}
	public String getStreet() {
		return Street;
	}
	public void setStreet(String street) {
		Street = street;
	}
	public String getCity() {
		return City;
	}
	public void setCity(String city) {
		City = city;
	}
	public String getZipCode() {
		return ZipCode;
	}
	public void setZipCode(String zipCode) {
		ZipCode = zipCode;
	}
	public String getCountry() {
		return Country;
	}
	public void setCountry(String country) {
		Country = country;
	}
	public String getRemarks() {
		return Remarks;
	}
	public void setRemarks(String remarks) {
		Remarks = remarks;
	}

	public int getUserId() {
		return UserId;
	}
	public void setUserId(int userId) {
		UserId = userId;
	}
	public User() {
		super();
	}
	
	public User(int userId, String email, String pasword, String user,
			String company, String webSite, String phone, String street,
			String city, String zipCode, String country, String remarks) {
		super();
		UserId = userId;
		Email = email;
		Pasword = pasword;
		User = user;
		Company = company;
		WebSite = webSite;
		Phone = phone;
		Street = street;
		City = city;
		ZipCode = zipCode;
		Country = country;
		Remarks = remarks;
	}
	
	
}
