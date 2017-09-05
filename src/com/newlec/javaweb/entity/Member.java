package com.newlec.javaweb.entity;

import java.util.Date;

public class Member {
	
	private String id;
	private String pwd;
	private String name;
	private String moon; 
	private String gender; 
	private String birthday;
	private String phone;
	private Date regDate;
	
	public Member() {
	}


	public Member(String id, String pwd, String moon, String name, String gender, String birthday, String phone) {
		super();
		this.id = id;
		this.pwd = pwd;
		this.moon = moon;
		this.name = name;
		this.gender = gender;
		this.birthday = birthday;
		this.phone = phone;
	}


	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getMoon() {
		return moon;
	}

	public void setMoon(String moon) {
		this.moon = moon;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}


	public Date getRegDate() {
		return regDate;
	}


	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

}
