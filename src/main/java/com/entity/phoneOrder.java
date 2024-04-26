package com.entity;

public class phoneOrder {
	private int id;	
	private String orderid;
	
	private String oName;
	private String oGmail;
	private String oAddress;
	private String oNumPhone;
	
	
	private String oNamePhone;
	private String oBrand;
	private String oPrice;
	
	private String oDayBuy;
	private String oPayment;
	
	
	public phoneOrder() {
		super();
		// TODO Auto-generated constructor stub
	}


	public phoneOrder(int id, String orderid, String oName, String oGmail, String oAddress, String oNumPhone,
			String oNamePhone, String oBrand, String oPrice, String oDayBuy, String oPayment) {
		super();
		this.id = id;
		this.orderid = orderid;
		this.oName = oName;
		this.oGmail = oGmail;
		this.oAddress = oAddress;
		this.oNumPhone = oNumPhone;
		this.oNamePhone = oNamePhone;
		this.oBrand = oBrand;
		this.oPrice = oPrice;
		this.oDayBuy = oDayBuy;
		this.oPayment = oPayment;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getOrderid() {
		return orderid;
	}


	public void setOrderid(String orderid) {
		this.orderid = orderid;
	}


	public String getoName() {
		return oName;
	}


	public void setoName(String oName) {
		this.oName = oName;
	}


	public String getoGmail() {
		return oGmail;
	}


	public void setoGmail(String oGmail) {
		this.oGmail = oGmail;
	}


	public String getoAddress() {
		return oAddress;
	}


	public void setoAddress(String oAddress) {
		this.oAddress = oAddress;
	}


	public String getoNumPhone() {
		return oNumPhone;
	}


	public void setoNumPhone(String oNumPhone) {
		this.oNumPhone = oNumPhone;
	}


	public String getoNamePhone() {
		return oNamePhone;
	}


	public void setoNamePhone(String oNamePhone) {
		this.oNamePhone = oNamePhone;
	}


	public String getoBrand() {
		return oBrand;
	}


	public void setoBrand(String oBrand) {
		this.oBrand = oBrand;
	}


	public String getoPrice() {
		return oPrice;
	}


	public void setoPrice(String oPrice) {
		this.oPrice = oPrice;
	}


	public String getoDayBuy() {
		return oDayBuy;
	}


	public void setoDayBuy(String oDayBuy) {
		this.oDayBuy = oDayBuy;
	}


	public String getoPayment() {
		return oPayment;
	}


	public void setoPayment(String oPayment) {
		this.oPayment = oPayment;
	}

	
	
	
	
	
}
