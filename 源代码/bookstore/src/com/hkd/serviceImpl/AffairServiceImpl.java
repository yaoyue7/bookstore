package com.hkd.serviceImpl;

import com.hkd.daoImpl.AffairDaoImpl;
import com.hkd.service.AffairService;

public class AffairServiceImpl implements AffairService {

	AffairDaoImpl adi=new AffairDaoImpl();
	@Override
	public void getAffair(String username, String password, String userid, String email, String firstname, String status,
			String lastname, String addr1, String addr2, String city, String state, String zip, String country,
			String phone) {
		adi.getAffair(username, password, userid, email, firstname, status, lastname, addr1, addr2, city, state, zip, country, phone);
	}
}
