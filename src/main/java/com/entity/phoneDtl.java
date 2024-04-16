package com.entity;

public class phoneDtl {
	private int pId;
	private String Pname;
	private String brand;
	private String price;
	private String description;
	private String memory;
	private String operating;
	private String img;
	private String gmail;
	
	public phoneDtl() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public phoneDtl(String pname, String brand, String price, String description, String memory, String operating,
			String img, String gmail) {
		super();
		Pname = pname;
		this.brand = brand;
		this.price = price;
		this.description = description;
		this.memory = memory;
		this.operating = operating;
		this.img = img;
		this.gmail = gmail;
	}

	public phoneDtl(int pId, String pname, String brand, String price, String description, String memory,
			String operating, String img, String gmail) {
		super();
		this.pId = pId;
		Pname = pname;
		this.brand = brand;
		this.price = price;
		this.description = description;
		this.memory = memory;
		this.operating = operating;
		this.img = img;
		this.gmail = gmail;
	}







	public int getpId() {
		return pId;
	}



	public void setpId(int pId) {
		this.pId = pId;
	}



	public String getPname() {
		return Pname;
	}



	public void setPname(String pname) {
		Pname = pname;
	}



	public String getBrand() {
		return brand;
	}



	public void setBrand(String brand) {
		this.brand = brand;
	}



	public String getPrice() {
		return price;
	}



	public void setPrice(String price) {
		this.price = price;
	}



	public String getDescription() {
		return description;
	}



	public void setDescription(String description) {
		this.description = description;
	}



	public String getMemory() {
		return memory;
	}



	public void setMemory(String memory) {
		this.memory = memory;
	}



	public String getOperating() {
		return operating;
	}



	public void setOperating(String operating) {
		this.operating = operating;
	}



	public String getImg() {
		return img;
	}



	public void setImg(String img) {
		this.img = img;
	}



	public String getGmail() {
		return gmail;
	}



	public void setGmail(String gmail) {
		this.gmail = gmail;
	}



	@Override
	public String toString() {
		return "phoneDtl [pId=" + pId + ", Pname=" + Pname + ", brand=" + brand + ", price=" + price + ", description="
				+ description + ", memory=" + memory + ", operating=" + operating + ", img=" + img + ", gmail=" + gmail
				+ "]";
	}

}
