package com.entity;

public class cart {
	// cid: cart id
	private int cid;
	// pid: phone id
	private int pid;
	// uid: user id
	private int uid;
	private String cName;
	private String cBrand;
	private double cPrice;
	private double totalPrice;
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getcName() {
		return cName;
	}
	public void setcName(String cName) {
		this.cName = cName;
	}
	public String getcBrand() {
		return cBrand;
	}
	public void setcBrand(String cBrand) {
		this.cBrand = cBrand;
	}
	public double getcPrice() {
		return cPrice;
	}
	public void setcPrice(double cPrice) {
		this.cPrice = cPrice;
	}
	public double getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}
	
	
}
