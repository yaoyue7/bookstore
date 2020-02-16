package com.hkd.daoImpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.junit.Test;

import com.hkd.dao.SearchDao;
import com.hkd.entity.Product;
import com.hkd.util.DataBase;

public class SearchDaoImpl extends DataBase implements SearchDao {

	@Override
	public ArrayList<Product> getSearch(String desc, int pageNo, int pageSize) {
		String sql="select * from product where descn like ? limit ?,?";
		ArrayList p=new ArrayList();
		p.add("%"+desc+"%");
		p.add((pageNo-1)*pageSize);
		p.add(pageSize);
		ResultSet rs=this.getResult(sql,p);
		ArrayList<Product> list=new ArrayList<>();
		try {
			while(rs.next()) {
				Product p1=new Product();
				String productid=rs.getString("productid");
				String category=rs.getString("category");
				String name=rs.getString("name");
				String descn=rs.getString("descn");
				p1.setProductid(productid);
				p1.setCategory(category);
				p1.setName(name);
				p1.setDescn(descn);
				list.add(p1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public int getCount(String desc) {
		String sql="select count(*) from product where descn like ?";
		String[] p={"%"+desc+"%"};
		ResultSet rs=this.getResult(sql,p);
		int count=1;
		try {
			rs.next();
			count=rs.getInt(1);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return count;
	}
	@Test
	public void test(){
		System.out.println(getCount("��־"));
	}
}
