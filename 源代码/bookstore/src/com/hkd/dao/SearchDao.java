package com.hkd.dao;

import java.util.ArrayList;

import com.hkd.entity.Product;

public interface SearchDao {
	public ArrayList<Product> getSearch(String desc,int pageNo,int pageSize);
	
	public int getCount(String desc);
}
