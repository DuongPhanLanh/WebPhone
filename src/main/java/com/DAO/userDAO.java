package com.DAO;

import com.entity.user;

public interface userDAO {
	public boolean userRegister(user us);
	
	public user login(String gmail, String password);
	
	public boolean updateEditUser(user u);
	
	public boolean checkPassword(int id, String ps);
}
