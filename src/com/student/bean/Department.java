package com.student.bean;

import java.io.Serializable;

public class Department  implements Serializable{
	private int did;
	private String departname;
	public int getDid() {
		return did;
	}
	public void setDid(int did) {
		this.did = did;
	}
	public String getDepartname() {
		return departname;
	}
	public void setDepartname(String departname) {
		this.departname = departname;
	}
	

}
