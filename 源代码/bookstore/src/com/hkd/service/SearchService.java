package com.hkd.service;

import java.util.ArrayList;

import com.hkd.entity.Product;

public interface SearchService {
	public ArrayList<Product> getSearch(String desc,int pageNo,int pageSize);
	
	public int getCount(String desc);
}
