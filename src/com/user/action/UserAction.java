package com.user.action;

import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport{
	//用户名 ，密码， 确认密码，年龄 手机号码，电子邮箱 出生日期
	private String username;
	private String pass1;
	private String pass2;
	private int age;   //类型自动
	private String telphone;
	private String email;
	private java.sql.Date birthday;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPass1() {
		return pass1;
	}
	public void setPass1(String pass1) {
		this.pass1 = pass1;
	}
	public String getPass2() {
		return pass2;
	}
	public void setPass2(String pass2) {
		this.pass2 = pass2;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getTelphone() {
		return telphone;
	}
	public void setTelphone(String telphone) {
		this.telphone = telphone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public java.sql.Date getBirthday() {
		return birthday;
	}
	public void setBirthday(java.sql.Date birthday) {
		this.birthday = birthday;
	}
	@Override
	public String execute() throws Exception {
		System.out.println("正在执行execute方法");
		return super.execute();
	}
	public String login() throws Exception {
		System.out.println("正在执行login方法");
		if(this.getUsername().equals("zlh"))
		{
			return SUCCESS;
		}else{
		   return INPUT;
		}
	}
	
	public String add() throws Exception {
		System.out.println("正在执行add方法");
		return super.execute();
	}
}
