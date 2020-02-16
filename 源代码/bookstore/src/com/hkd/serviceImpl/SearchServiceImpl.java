package com.hkd.serviceImpl;

import java.util.ArrayList;

import com.hkd.daoImpl.SearchDaoImpl;
import com.hkd.entity.Product;
import com.hkd.service.SearchService;

public class SearchServiceImpl implements SearchService {

	SearchDaoImpl sdi=new SearchDaoImpl();
	@Override
	public ArrayList<Product> getSearch(String desc, int pageNo, int pageSize) {		
		return sdi.getSearch(desc, pageNo, pageSize);
	}
	
	@Override
	public int getCount(String desc) {
		return sdi.getCount(desc);
	}	
}
