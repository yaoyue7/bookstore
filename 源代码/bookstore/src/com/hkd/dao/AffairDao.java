package com.hkd.dao;

public interface AffairDao {
	
	public void getAffair(String username, String password, String email, String userid, String firstname, String status, String lastname,
			String addr1, String addr2, String city, String state, String zip, String country, String phone);
}
