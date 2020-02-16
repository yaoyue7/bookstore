package com.hkd.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import com.hkd.entity.Signon;

public interface SignonDao {
	public Signon getSignon(Signon s);
	
	public ArrayList<Signon> getSignon();
	
	public void insertSignon(String username,String password) throws SQLException;
}
