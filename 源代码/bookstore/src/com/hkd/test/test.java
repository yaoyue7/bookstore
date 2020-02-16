package com.hkd.test;

import java.util.ArrayList;

import org.junit.Test;

import com.hkd.entity.Category;
import com.hkd.entity.Product;
import com.hkd.serviceImpl.CategoryServiceImpl;
import com.hkd.serviceImpl.ProductServiceImpl;
import com.hkd.serviceImpl.SearchServiceImpl;

public class test {

	@Test
	public void test1() {
		ProductServiceImpl psi=new ProductServiceImpl();
		ArrayList<Product> list=psi.getProduct("3",1,5);
		System.out.println(psi.getCount("10"));
		for (Product p : list) {
			System.out.println(p.getName());
		}
		
		
		CategoryServiceImpl csi=new CategoryServiceImpl();
		ArrayList<Category> clist=csi.getCategory();
		for (Category category : clist) {
			System.out.println(category.getName());
		}
		
		SearchServiceImpl ssi=new SearchServiceImpl();
		System.out.println(ssi.getCount("��־"));
		ArrayList<Product> list1=ssi.getSearch("��־", 2, 3);
		for (Product p1 : list1) {
			System.out.println(p1.getName());
		}
	}

}
