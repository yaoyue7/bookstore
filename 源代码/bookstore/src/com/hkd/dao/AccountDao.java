package com.hkd.dao;

import java.sql.SQLException;
import java.util.ArrayList;

import com.hkd.entity.Account;

public interface AccountDao {
	
	public void insertAccount(String userid,String email,String firstname,String lastname,String status,String addr1,String addr2,String city,String state,String zip,String country,String phone) throws SQLException;
	
	public ArrayList<Account> getAccount(String userid);
}
