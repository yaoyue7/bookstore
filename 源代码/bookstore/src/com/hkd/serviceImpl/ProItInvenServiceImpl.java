package com.hkd.serviceImpl;

import com.hkd.daoImpl.ProItInvenDaoImpl;
import com.hkd.entity.ProItInven;
import com.hkd.service.ProItInvenService;

public class ProItInvenServiceImpl implements ProItInvenService {

	ProItInvenDaoImpl pidi=new ProItInvenDaoImpl();
	@Override
	public ProItInven getProItInven(String itemid) {
		return pidi.getProItInven(itemid);
	}

}
