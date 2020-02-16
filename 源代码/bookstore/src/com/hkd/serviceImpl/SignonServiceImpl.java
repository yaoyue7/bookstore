package com.hkd.serviceImpl;

import java.util.ArrayList;

import com.hkd.daoImpl.SignonDaoImpl;
import com.hkd.entity.Signon;
import com.hkd.service.SignonService;

public class SignonServiceImpl implements SignonService {

	SignonDaoImpl sdi=new SignonDaoImpl();
	@Override
	public Signon getSignon(Signon s) {
		return sdi.getSignon(s);
	}
	@Override
	public void insertSignon(String username, String password) {
		sdi.insertSignon(username,password);
	}
	@Override
	public ArrayList<Signon> getSignon() {
		return sdi.getSignon();
	}

}
