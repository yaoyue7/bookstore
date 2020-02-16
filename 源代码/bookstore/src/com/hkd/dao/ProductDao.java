package com.hkd.dao;

import java.util.ArrayList;

import com.hkd.entity.Product;

public interface ProductDao {	
	public ArrayList<Product> getProduct(String catid);
	
	public ArrayList<Product> getProduct(String catid,int pageNo,int pageSize);
	
	public int getCount(String catid);
}
