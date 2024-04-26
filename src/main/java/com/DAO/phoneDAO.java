package com.DAO;

import java.util.List;

import com.entity.phoneDtl;

public interface phoneDAO {
	public boolean addPhone(phoneDtl p);
	
	public List<phoneDtl> getAllPhone();
	
	public phoneDtl getPhoneById(int ID);
	
	public boolean updateEditPhone(phoneDtl p);
	
	public boolean deletePhone(int id);
	
	public List<phoneDtl> getAndroidPhone();
	
	public List<phoneDtl> getIosPhone();
	
	public List<phoneDtl> getOtherPhone();
	
	public List<phoneDtl> getPkPhone();
	
	public List<phoneDtl> getAllAndroidPhone();
	
	public List<phoneDtl> getAllIosPhone();
	
	public List<phoneDtl> getAllOtherPhone();
	
	public List<phoneDtl> getAllPkPhone();
	
	public List<phoneDtl> getPhoneBySearch(String ch);
}
