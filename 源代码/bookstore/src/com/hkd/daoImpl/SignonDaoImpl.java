package com.hkd.daoImpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.hkd.dao.SignonDao;
import com.hkd.entity.Signon;
import com.hkd.util.DataBase;

public class SignonDaoImpl extends DataBase implements SignonDao {

	@Override
	public Signon getSignon(Signon s) {
		String sql="select * from signon where username=? and password=?";
		String[] p={s.getUsername(),s.getPassword()};
		ResultSet rs=this.getResult(sql,p);
		try {
			if(!rs.next()){
				s=null;
			}
			while (rs.next()) {
				s.setUsername(rs.getString("username"));
				s.setPassword(rs.getString("password"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return s;
	}

	@Override
	public void insertSignon(String username, String password) {
		String sql="Insert into signon(?,?) values(?,?)";
		String[] p= {username,password};
		this.Update(sql,p);
	}

	@Override
	public ArrayList<Signon> getSignon() {
		String sql="select username from signon";
		this.getResult(sql);
		ArrayList<Signon> list=new ArrayList<>();
		try {
			while(rs.next()){
				Signon s=new Signon();
				s.setUsername(rs.getString("username"));
				list.add(s);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
}
