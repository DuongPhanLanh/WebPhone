package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.phoneDtl;
import com.entity.user;

public class phoneDAOImpl implements phoneDAO {

	private Connection conn;
	
	public phoneDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}
	
	@Override
	public boolean addPhone(phoneDtl p) {
		boolean f = false;
		try {
			String sql="insert into phone_dtls(Pname,brand,price,description,memory,operating,img,gmail) value(?,?,?,?,?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, p.getPname());
			ps.setString(2, p.getBrand());
			ps.setString(3, p.getPrice());
			ps.setString(4, p.getDescription());
			ps.setString(5, p.getMemory());
			ps.setString(6, p.getOperating());
			ps.setString(7, p.getImg());
			ps.setString(8, p.getGmail());
			
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
	public List<phoneDtl> getAllPhone() {
		List<phoneDtl> list = new ArrayList<phoneDtl>();
		phoneDtl p = null;
		
		
		try {
			String sql = "select * from phone_dtls";
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ResultSet rs = ps.executeQuery();
			
			while (rs.next()) {
				p = new phoneDtl();
				p.setpId(rs.getInt(1));
				p.setPname(rs.getString(2));
				p.setBrand(rs.getString(3));
				p.setPrice(rs.getString(4));
				p.setDescription(rs.getString(5));
				p.setMemory(rs.getString(6));
				p.setOperating(rs.getString(7));
				p.setImg(rs.getString(8));
				p.setGmail(rs.getString(9));
				list.add(p);
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public phoneDtl getPhoneById(int ID) {
		phoneDtl p =null;
		try {
			String sql = "select * from phone_dtls where id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, ID);
			
			ResultSet rs = ps.executeQuery();
			
			while (rs.next()) {
				p = new phoneDtl();
				p.setpId(rs.getInt(1));
				p.setPname(rs.getString(2));
				p.setBrand(rs.getString(3));
				p.setPrice(rs.getString(4));
				p.setDescription(rs.getString(5));
				p.setMemory(rs.getString(6));
				p.setOperating(rs.getString(7));
				p.setImg(rs.getString(8));
				p.setGmail(rs.getString(9));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return p;
	}

	@Override
	public boolean updateEditPhone(phoneDtl p) {
		boolean f = false;
		try {
			String sql="update phone_dtls set Pname=?, brand=?, price=?, description=?, memory=?, operating=? where id=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, p.getPname());
			ps.setString(2, p.getBrand());
			ps.setString(3, p.getPrice());
			ps.setString(4, p.getDescription());
			ps.setString(5, p.getMemory());
			ps.setString(6, p.getOperating());
			
			ps.setInt(7, p.getpId());
			
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
	public boolean deletePhone(int id) {
		boolean f = false;
		try {
			String sql="delete from phone_dtls where id=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			
			ps.setInt(1, id);
			
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
