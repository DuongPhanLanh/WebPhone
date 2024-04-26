package com.DAO;

import java.util.List;

import com.entity.phoneOrder;

public interface phoneOrderDAO {
	
	public int getOrderNo();
	
	public boolean saveOrder(List<phoneOrder> plist);
	
	public List<phoneOrder> getPhone(String gmail);
	
	public List<phoneOrder> getPhoneForAddmin();
}
