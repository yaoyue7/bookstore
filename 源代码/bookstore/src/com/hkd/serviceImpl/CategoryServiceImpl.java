package com.hkd.serviceImpl;

import java.util.ArrayList;

import com.hkd.daoImpl.CategoryDaoImpl;
import com.hkd.entity.Category;
import com.hkd.service.CategoryService;

public class CategoryServiceImpl implements CategoryService {

	CategoryDaoImpl cdi=new CategoryDaoImpl();
	@Override
	public ArrayList<Category> getCategory() {
		return cdi.getCategory();
	}
	
}
