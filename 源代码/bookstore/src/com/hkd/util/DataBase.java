package com.hkd.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class DataBase {
	public static String username="root";
	public static String password="123";
	public static String url="jdbc:mysql://localhost:3306/bookstore?useUnicode=true&&characterEncoding=utf-8";
	public static String driver="com.mysql.jdbc.Driver";
	public static Connection conn=null;
	public static PreparedStatement ps=null;
	public static ResultSet rs=null;
	static{
		try {
			Class.forName(driver);
			conn=DriverManager.getConnection(url,username,password);		
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public ResultSet getResult(String sql) {
		try {
			ps=conn.prepareStatement(sql);
			rs=ps.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}
	
	public ResultSet getResult(String sql,String[] p){
		try {
			ps=conn.prepareStatement(sql);
			if(p!=null){
				for (int i = 0; i < p.length; i++) {
					ps.setObject(i+1, p[i]);
				}
				rs=ps.executeQuery();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
		
	}
	
	public ResultSet getResult(String sql,ArrayList p){
		try {
			ps=conn.prepareStatement(sql);
			if(p!=null){
				for (int i = 0; i < p.size(); i++) {
					ps.setObject(i+1, p.get(i));
				}
				rs=ps.executeQuery();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
		
	}
	
	public void Update(String sql,String[] p){
		try {
			ps=conn.prepareStatement(sql);
			if(p!=null){
				for (int i = 0; i < p.length; i++) {
					ps.setString(i+1, p[i]);
				}
				ps.executeUpdate();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public void CloseDB(){
		try {
			if(rs!=null){
				rs.close();
			}
			if(ps!=null){
				ps.close();
			}
			if(conn!=null){
				conn.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
