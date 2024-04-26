package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.phoneOrder;

public class phoneOrderDAOImpl implements phoneOrderDAO {
	
	private Connection conn;
	
	public phoneOrderDAOImpl(Connection conn) {
		super();
		this.conn=conn;
	}
	
	@Override
	public int getOrderNo() {
		int i=1;
		try {
			String sql="select * from phone_order";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				i++;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return i;
	}

	@Override
	public boolean saveOrder(List<phoneOrder> plist) {
		boolean f = false;
		try {
			String sql="insert into phone_order(oid,oUserName,oGmail,oAddress,oNumPhone,oNamePhone,oBrand,oPrice,oDayBuy,oPayment) value(?,?,?,?,?,?,?,?,?,?)";
			conn.setAutoCommit(false);
//			String sql="insert into phone_order(oUserName,oGmail,oAddress,oPhone) value(?,?,?,?)";
			
			PreparedStatement ps=conn.prepareStatement(sql);
			for(phoneOrder p: plist ) {
				ps.setString(1, p.getOrderid());
				ps.setString(2, p.getoName());
				ps.setString(3, p.getoGmail());
				ps.setString(4, p.getoAddress());
				ps.setString(5, p.getoNumPhone());
				ps.setString(6, p.getoNamePhone());
				ps.setString(7, p.getoBrand());
				ps.setString(8, p.getoPrice());
				ps.setString(9, p.getoDayBuy());
				ps.setString(10, p.getoPayment());
				
				ps.addBatch();
			}
			int[] count = ps.executeBatch();
			conn.commit();
			f=true;
			conn.setAutoCommit(true);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	@Override
	public List<phoneOrder> getPhone(String gmail) {
		List<phoneOrder> list = new ArrayList<phoneOrder>();
		phoneOrder o = null;
		
		try {
			String sql = "select * from phone_order where oGmail=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, gmail);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				o = new phoneOrder();
				o.setId(rs.getInt(1));
				o.setOrderid(rs.getString(2));
				o.setoGmail(rs.getString(3));
				o.setoName(rs.getString(4));
				o.setoAddress(rs.getString(5));
				o.setoNumPhone(rs.getString(6));
				
				o.setoNamePhone(rs.getString(7));
				o.setoBrand(rs.getString(8));			
				o.setoPrice(rs.getString(9));
				
				o.setoDayBuy(rs.getString(10));
				o.setoPayment(rs.getString(11));
				
				list.add(o);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<phoneOrder> getPhoneForAddmin() {
		List<phoneOrder> list = new ArrayList<phoneOrder>();
		phoneOrder o = null;
		
		try {
			String sql = "select * from phone_order";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				o = new phoneOrder();
				o.setId(rs.getInt(1));
				o.setOrderid(rs.getString(2));
				o.setoGmail(rs.getString(3));
				o.setoName(rs.getString(4));
				o.setoAddress(rs.getString(5));
				o.setoNumPhone(rs.getString(6));
				
				o.setoNamePhone(rs.getString(7));
				o.setoBrand(rs.getString(8));			
				o.setoPrice(rs.getString(9));
				
				o.setoDayBuy(rs.getString(10));
				o.setoPayment(rs.getString(11));
				
				list.add(o);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

}
