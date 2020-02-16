package com.hkd.entity;

public class ProItInven {
	private String itemid;
	private String productid;
	private String attr1;
	private String name;
	private int qty;
	private int buyqty;
	private double listprice;
	public ProItInven() {
		super();
	}
	public String getItemid() {
		return itemid;
	}
	public void setItemid(String itemid) {
		this.itemid = itemid;
	}
	public String getProductid() {
		return productid;
	}
	public void setProductid(String productid) {
		this.productid = productid;
	}
	public String getAttr1() {
		return attr1;
	}
	public void setAttr1(String attr1) {
		this.attr1 = attr1;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getQty() {
		return qty;
	}
	public void setQty(int qty) {
		this.qty = qty;
	}
	public int getBuyqty() {
		return buyqty;
	}
	public void setBuyqty(int buyqty) {
		this.buyqty = buyqty;
	}
	public double getListprice() {
		return listprice;
	}
	public void setListprice(double listprice) {
		this.listprice = listprice;
	}
}
