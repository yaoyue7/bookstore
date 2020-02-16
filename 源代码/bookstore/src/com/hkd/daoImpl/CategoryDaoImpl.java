package com.hkd.daoImpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.hkd.dao.CategoryDao;
import com.hkd.entity.Category;
import com.hkd.util.DataBase;

public class CategoryDaoImpl extends DataBase implements CategoryDao {

	@Override
	public ArrayList<Category> getCategory() {
		// TODO Auto-generated method stub
		String sql="select catid,name from category";
		ResultSet rs=this.getResult(sql);
		ArrayList<Category> list=new ArrayList<>();
		try {
			while(rs.next()){
				Category c=new Category();
				String catid=rs.getString("catid");
				String name=rs.getString("name");
				c.setCatid(catid);
				c.setName(name);
				list.add(c);
			}			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}

}
