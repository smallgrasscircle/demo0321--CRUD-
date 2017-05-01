package com.student.bean;

import java.io.Serializable;

public class Student implements Serializable{
     private int sid;
     private String sname;
     private String sno;
     private String sex;
     private String password;
     private String department;   //级联
     private String myclass;      //级联
     private String shengfen;
     private String instesting;
     private java.sql.Date birthday; 
     private String beizhu;
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getSno() {
		return sno;
	}
	public void setSno(String sno) {
		this.sno = sno;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}


	
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getMyclass() {
		return myclass;
	}
	public void setMyclass(String myclass) {
		this.myclass = myclass;
	}
	public String getShengfen() {
		return shengfen;
	}
	public void setShengfen(String shengfen) {
		this.shengfen = shengfen;
	}
	public String getInstesting() {
		return instesting;
	}
	public void setInstesting(String instesting) {
		this.instesting = instesting;
	}
	
	public java.sql.Date getBirthday() {
		return birthday;
	}
	public void setBirthday(java.sql.Date birthday) {
		this.birthday = birthday;
	}
	public String getBeizhu() {
		return beizhu;
	}
	public void setBeizhu(String beizhu) {
		this.beizhu = beizhu;
	}
     
 
}
