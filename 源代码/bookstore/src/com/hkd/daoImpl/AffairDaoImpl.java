package com.hkd.daoImpl;

import java.sql.SQLException;

import com.hkd.dao.AffairDao;
import com.hkd.util.DataBase;

public class AffairDaoImpl extends DataBase implements AffairDao {

	@Override
	public void getAffair(String username, String password, String email, String userid, String firstname, String status, String lastname,
			String addr1, String addr2, String city, String state, String zip, String country, String phone) {
		
		AccountDaoImpl adi=new AccountDaoImpl();
		SignonDaoImpl sdi=new SignonDaoImpl();
		try {
			DataBase.conn.setAutoCommit(false);
			sdi.insertSignon(username,password);
			adi.insertAccount(userid, email, firstname, lastname, status,
					addr1, addr2, city, state, zip, country, phone);
			DataBase.conn.commit();
		} catch (SQLException e) {
			if(DataBase.conn!=null) {
				try {
					DataBase.conn.rollback();
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
			}
			e.printStackTrace();
		}
	}
	
}
