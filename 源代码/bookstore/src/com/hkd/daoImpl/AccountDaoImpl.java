package com.hkd.daoImpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.hkd.dao.AccountDao;
import com.hkd.entity.Account;
import com.hkd.util.DataBase;

public class AccountDaoImpl extends DataBase implements AccountDao {

	@Override
	public void insertAccount(String userid, String email, String firstname, String lastname, String status,
			String addr1, String addr2, String city, String state, String zip, String country, String phone) {
		String sql="insert into account(userid,email,firstname,lastname,status,addr1,addr2,city,state,zip,country,phone) values(?,?,?,?,?,?,?,?,?,?,?,?)";
		String[] p={userid,email,firstname,lastname,status,addr1,addr2,city,state,zip,country,phone};
		this.Update(sql,p);

	}

	@Override
	public ArrayList<Account> getAccount(String userid) {
		String sql="select * from account where userid=?";
		String[] p={userid};
		ResultSet rs=this.getResult(sql, p);
		ArrayList<Account> list=new ArrayList<>();
		try {
			while(rs.next()){
				Account a=new Account();
				a.setUserid(rs.getString("userid"));
				a.setEmail(rs.getString("email"));
				a.setFirstname(rs.getString("firstname"));
				a.setLastname(rs.getString("lastname"));
				a.setStatus(rs.getString("status"));
				a.setAddr1(rs.getString("addr1"));
				a.setAddr2(rs.getString("addr2"));
				a.setCity(rs.getString("city"));
				a.setState(rs.getString("state"));
				a.setZip(rs.getString("zip"));
				a.setCountry(rs.getString("country"));
				a.setPhone(rs.getString("phone"));
				list.add(a);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

}
