package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.cart;
import com.entity.phoneDtl;

public class cartDAOImpl implements cartDAO {
	private Connection conn;
	
	public cartDAOImpl(Connection conn) {
		this.conn=conn;
	}
	@Override
	public boolean addCart(cart c) {
		boolean f = false;
		try {
			String sql="insert into cart(pid,uid,cName,cBrand,cPrice,total_price) value(?,?,?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, c.getPid());
			ps.setInt(2, c.getUid());
			ps.setString(3, c.getcName());
			ps.setString(4, c.getcBrand());
			ps.setDouble(5, c.getcPrice());
			ps.setDouble(6, c.getTotalPrice());
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
	public List<cart> getPhoneByUser(int userId) {
		List<cart> list = new ArrayList<cart>();
		cart c = null;
		double totalPrice=0;
		try {
			String sql = "select * from cart where uid=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, userId);
			
			ResultSet rs = ps.executeQuery();
			
			while (rs.next()) {
				c = new cart();
				c.setCid(rs.getInt(1));
				c.setPid(rs.getInt(2));
				c.setUid(rs.getInt(3));
				c.setcName(rs.getString(4));
				c.setcBrand(rs.getString(5));
				c.setcPrice(rs.getDouble(6));
				
				totalPrice=totalPrice+rs.getDouble(7);
				c.setTotalPrice(totalPrice);
				
				list.add(c);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	@Override
	public boolean deletePhone(int pid, int uid) {
		boolean f = false;
		try {
			String sql="delete from cart where pid=? and uid=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			
			ps.setInt(1, pid);
			ps.setInt(2, uid);
			
			int i = ps.executeUpdate();
			if(i == 1) {
				f = true;
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	
}
