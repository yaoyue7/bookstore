package com.hkd.daoImpl;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.hkd.dao.InventoryDao;
import com.hkd.entity.Inventory;
import com.hkd.util.DataBase;

public class InventoryDaoImpl extends DataBase implements InventoryDao {

	@Override
	public Inventory getInventory(String itemid) {
		String sql="select * from Inventory where itemid=?";
		String[] p={itemid};
		ResultSet rs=this.getResult(sql,p);
		Inventory i=new Inventory();
		try {
			while(rs.next()){
				i.setItemid(rs.getString("itemid"));
				i.setQty(rs.getInt("qty"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;
	}

}
