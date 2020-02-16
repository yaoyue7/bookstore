package com.hkd.service;

import java.util.ArrayList;

import com.hkd.entity.Signon;

public interface SignonService {
	public Signon getSignon(Signon s);
	
	public ArrayList<Signon> getSignon();
	
	public void insertSignon(String username,String password);
}
