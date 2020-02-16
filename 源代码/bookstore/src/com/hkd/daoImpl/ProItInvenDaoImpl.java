package com.hkd.daoImpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.hkd.dao.ProItInvenDao;
import com.hkd.entity.ProItInven;
import com.hkd.util.DataBase;

public class ProItInvenDaoImpl extends DataBase implements ProItInvenDao {

	@Override
	public ProItInven getProItInven(String itemid) {
		String sql="select item.itemid,product.productid,attr1,name,qty,listprice from product join item on"+"product.productid=item.itemid join inventory on item.itemid=inventory.itemid"+"where item.itemid=?";
		String[] p= {itemid};
		ResultSet rs=this.getResult(sql,p);
		ProItInven pi=new ProItInven();
		try {
			while(rs.next()) {			
				pi.setItemid(rs.getString("itemid"));
				pi.setProductid(rs.getString("productid"));
				pi.setAttr1(rs.getString("attr1"));
				pi.setName(rs.getString("name"));
				pi.setQty(rs.getInt("qty"));
				pi.setListprice(rs.getDouble("listprice"));
				pi.setBuyqty(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return pi;
	}

}
