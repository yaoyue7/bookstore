package com.hkd.serviceImpl;

import java.util.ArrayList;

import com.hkd.daoImpl.AccountDaoImpl;
import com.hkd.entity.Account;
import com.hkd.service.AccountService;

public class AccountServiceImpl implements AccountService {

	AccountDaoImpl adi=new AccountDaoImpl();
	
	@Override
	public void insertAccount(String userid, String email, String firstname, String lastname, String status,
			String addr1, String addr2, String city, String state, String zip, String country, String phone) {
		adi.insertAccount(userid, email, firstname, lastname, status,
				addr1, addr2, city, state, zip, country, phone);
	}

	@Override
	public ArrayList<Account> getAccount(String userid) {
		return adi.getAccount(userid);
	}

}
