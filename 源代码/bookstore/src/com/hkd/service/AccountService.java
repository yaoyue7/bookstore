package com.hkd.service;

import java.util.ArrayList;
import com.hkd.entity.Account;

public interface AccountService {
	
	public void insertAccount(String userid, String email, String firstname, String lastname, String status,String addr1, String addr2, String city, String state, String zip, String country, String phone);
	
	public ArrayList<Account> getAccount(String userid);
}
