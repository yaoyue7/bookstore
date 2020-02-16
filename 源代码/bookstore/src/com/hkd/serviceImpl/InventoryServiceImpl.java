package com.hkd.serviceImpl;

import com.hkd.dao.InventoryDao;
import com.hkd.daoImpl.InventoryDaoImpl;
import com.hkd.entity.Inventory;

public class InventoryServiceImpl implements InventoryDao {

	InventoryDaoImpl idi=new InventoryDaoImpl();
	@Override
	public Inventory getInventory(String itemid) {
		return idi.getInventory(itemid);
	}

}
