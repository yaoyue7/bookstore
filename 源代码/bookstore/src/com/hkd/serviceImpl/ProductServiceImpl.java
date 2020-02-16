package com.hkd.serviceImpl;

import java.util.ArrayList;

import com.hkd.daoImpl.ProductDaoImpl;
import com.hkd.entity.Product;
import com.hkd.service.ProductService;

public class ProductServiceImpl implements ProductService {

	ProductDaoImpl pdi=new ProductDaoImpl();
	@Override
	public ArrayList<Product> getProduct(String catid) {
		return pdi.getProduct(catid);
	}
	@Override
	public ArrayList<Product> getProduct(String catid, int pageNo, int pageSize) {
		return pdi.getProduct(catid, pageNo, pageSize);
	}
	@Override
	public int getCount(String catid) {
		return pdi.getCount(catid);
	}

}
