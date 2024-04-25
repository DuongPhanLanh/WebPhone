package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;



import com.entity.user;

public class userDAOImpl implements userDAO{

	private Connection conn;
	
	public userDAOImpl(Connection conn) {
		super();
		this.conn=conn;
	}

	@Override
	public boolean userRegister(user us) {
		boolean f =false;
		try {
			String sql="insert into user(name, gmail, password, phone) value(?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, us.getName());
			ps.setString(2, us.getGmail());
			ps.setString(3, us.getPassword());
			ps.setString(4, us.getPhone());
			
			int i=ps.executeUpdate();
			if(i==1) {
				f=true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	@Override
	public user login(String gmail, String password) {
		user us=null;
		try {
			String sql="select * from user where gmail=? and password=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, gmail);
			ps.setString(2, password);
			
			ResultSet rs=ps.executeQuery();
			while (rs.next()) {
				us = new user();
				us.setId(rs.getInt(1));
				us.setName(rs.getString(2));
				us.setGmail(rs.getString(3));
				us.setPassword(rs.getString(4));
				us.setPhone(rs.getString(5));
				us.setAddress(rs.getString(6));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return us;
		
	}

	@Override
	public boolean updateEditUser(user u) {
		boolean f = false;
		try {
			String sql="update user set name=?, gmail=?, password=?, phone=?, address=? where id=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, u.getName());
			ps.setString(2, u.getGmail());
			ps.setString(3, u.getPassword());
			ps.setString(4, u.getPhone());
			ps.setString(5, u.getAddress());
			
			
			ps.setInt(6, u.getId());
			
			int i = ps.executeUpdate();
			if(i == 1) {
				f = true;
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	@Override
	public boolean checkPassword(int id, String ps) {
		boolean f = false;
		try {
			String sql="select * from user where id=? and password=?";
			PreparedStatement pst=conn.prepareStatement(sql);
			
			pst.setInt(1, id);
			pst.setString(2, ps);
			
			ResultSet rs=pst.executeQuery();
			while (rs.next()) {
				f = true;				
			}		
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

}
