package com.DAO;

import java.util.List;

import com.entity.phoneDtl;

public interface phoneDAO {
	public boolean addPhone(phoneDtl p);
	
	public List<phoneDtl> getAllPhone();
	
	public phoneDtl getPhoneById(int ID);
	
	public boolean updateEditPhone(phoneDtl p);
	
	public boolean deletePhone(int id);
}
