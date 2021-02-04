package com.java.json.action;

public class JsonData {
	private String name;
	private String phone;
	private String addr;
	
	// using Fields(생성자)
	public JsonData(String name, String phone, String addr) {
		super();
		this.name = name;
		this.phone = phone;
		this.addr = addr;
	}
	
	// Getter Setter
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	
	// toString
	@Override
	public String toString() {
		return "JsonData [name=" + name + ", phone=" + phone + ", addr=" + addr + "]";
	}
	
	
	
}
