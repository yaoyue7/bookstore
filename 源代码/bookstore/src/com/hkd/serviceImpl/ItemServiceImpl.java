package com.hkd.serviceImpl;

import com.hkd.daoImpl.ItemDaoImpl;
import com.hkd.entity.Item;
import com.hkd.service.ItemService;

public class ItemServiceImpl implements ItemService {

	ItemDaoImpl idi=new ItemDaoImpl();
	@Override
	public Item getItem(String productid) {
		return idi.getItem(productid);
	}

}
