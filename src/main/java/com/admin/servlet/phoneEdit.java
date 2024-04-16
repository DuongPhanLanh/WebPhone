package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.phoneDAOImpl;
import com.DB.DBConnect;
import com.entity.phoneDtl;

@WebServlet("/editPhone")
public class phoneEdit extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id = Integer.parseInt(req.getParameter("pId"));
			String namephone=req.getParameter("pName");
			String brand=req.getParameter("pBrand");
			String price=req.getParameter("pPrice");
			String description=req.getParameter("description");
			String memory=req.getParameter("pMemory");
			String operating=req.getParameter("pOparating");
			
			phoneDtl phone = new phoneDtl();
			phone.setpId(id);
			phone.setPname(namephone);
			phone.setBrand(brand);
			phone.setPrice(price);
			phone.setDescription(description);
			phone.setMemory(memory);
			phone.setOperating(operating);
			
			phoneDAOImpl dao = new phoneDAOImpl(DBConnect.getConn());
			boolean f=dao.updateEditPhone(phone);
			
			HttpSession session = req.getSession();
			if(f) {
				session.setAttribute("trueU", "Update Success");
				resp.sendRedirect("admin/all_Phone.jsp");
			}else {
				session.setAttribute("falseU", "Update False");
				resp.sendRedirect("admin/all_Phone.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} 
	}
}
