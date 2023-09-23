package com.Itkuang.mvcdemo.vo;

import java.sql.Timestamp;

public class data {
	private String userid;
	private Timestamp h;
	private int value1;
	private int value2;
	private int value3;
	
	
	public data() {
		super();
	}
	public data(String userid, Timestamp h, int value1, int value2, int value3) {
		this.userid = userid;
		this.h = h;
		this.value1 = value1;
		this.value2 = value2;
		this.value3 = value3;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public Timestamp getH() {
		return h;
	}
	public void setH(Timestamp h) {
		this.h = h;
	}
	public int getValue1() {
		return value1;
	}
	public void setValue1(int value1) {
		this.value1 = value1;
	}
	public int getValue2() {
		return value2;
	}
	public void setValue2(int value2) {
		this.value2 = value2;
	}
	public int getValue3() {
		return value3;
	}
	public void setValue3(int value3) {
		this.value3 = value3;
	}
	
	

}
