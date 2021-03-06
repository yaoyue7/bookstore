package com.hkd.daoImpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.hkd.dao.ProductDao;
import com.hkd.entity.Product;
import com.hkd.util.DataBase;

public class ProductDaoImpl extends DataBase implements ProductDao {

	@Override
	public ArrayList<Product> getProduct(String catid) {
		String sql="select * from product where category=?";
		String []p= {catid};
		ResultSet rs=(ResultSet)this.getResult(sql,p);
		ArrayList<Product> list=new ArrayList<>();
		try {
			while(rs.next()){
				Product p1=new Product();
				p1.setProductid(rs.getString("productid"));
				p1.setCategory(rs.getString("category"));
				p1.setName(rs.getString("name"));
				p1.setDescn(rs.getString("descn"));
				list.add(p1);
			}			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public ArrayList<Product> getProduct(String catid, int pageNo, int pageSize) {
		String sql="select * from product where category=? limit ?,?";
		ArrayList p=new ArrayList();
		p.add(catid);
		p.add((pageNo-1)*pageSize);
		p.add(pageSize);
		ResultSet rs=this.getResult(sql,p);
		ArrayList<Product> list=new ArrayList<>();
		try {
			while(rs.next()){
				Product p1=new Product();
				p1.setProductid(rs.getString("productid"));
				p1.setCategory(rs.getString("category"));
				p1.setName(rs.getString("name"));
				p1.setDescn(rs.getString("descn"));
				list.add(p1);
			}			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public int getCount(String catid) {
		String sql="select count(*) from product where category=?";
		String[] p={catid};
		ResultSet rs=this.getResult(sql,p);
		int count=0;
		try {
			rs.next();
			count=rs.getInt(1);		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		return count;
	}

}
