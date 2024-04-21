package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.DAO.phoneDAOImpl;
import com.DB.DBConnect;
import com.entity.phoneDtl;

@WebServlet("/AddPhone")
@MultipartConfig
public class phoneAdd extends HttpServlet {
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		try {
			String namephone=req.getParameter("pName");
			String brand=req.getParameter("pBrand");
			String price=req.getParameter("pPrice");
			String description=req.getParameter("description");
			String memory=req.getParameter("pMemory");
			String operating=req.getParameter("pOparating");
			
			Part p =req.getPart("pimg");
			String filename = p.getSubmittedFileName();
			
			phoneDtl dtl = new phoneDtl(namephone, brand, price, description, memory, operating, filename, "admin");
//			phoneDtl dtl = new phoneDtl(namephone, brand, price, description, memory, operating, filename, "admin");
//			System.out.println(dtl);
//			phoneDtl phone = new phoneDtl();
//			phone.setPname(namephone);
//			phone.setBrand(brand);
//			phone.setPrice(price);
//			phone.setMemory(memory);
//			phone.setOperating(operating);
//			phone.setImg(filename);
			
			phoneDAOImpl dao = new phoneDAOImpl(DBConnect.getConn());
			boolean f=dao.addPhone(dtl);
			
			HttpSession session = req.getSession();
			if(f) {
				session.setAttribute("trueP", "AddBook Success");
				resp.sendRedirect("admin/addPhone.jsp");
			}else {
				session.setAttribute("falseP", "AddBook False");
				resp.sendRedirect("admin/addPhone.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}
}
