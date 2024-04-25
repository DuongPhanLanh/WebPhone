package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.userDAOImpl;
import com.DB.DBConnect;
import com.entity.user;

@WebServlet("/update_User")
public class UpdateUserServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		try {
			int id=Integer.parseInt(req.getParameter("edId"));
			String name = req.getParameter("edName");
			String gmail = req.getParameter("edGmail");
			String address = req.getParameter("edAddress");
			String password = req.getParameter("edPassword");
			String phone = req.getParameter("edPhone");
			
			user u = new user();
			u.setId(id);
			u.setName(name);
			u.setGmail(gmail);
			u.setAddress(address);
			u.setPassword(password);
			u.setPhone(phone);
			
			HttpSession session = req.getSession();
			userDAOImpl dao= new userDAOImpl(DBConnect.getConn());
			
			boolean f=dao.checkPassword(id, password);
			
			if(f) {
				boolean f1 = dao.updateEditUser(u);
				
				
				if(f1) {
					//System.out.println("true");
					session.setAttribute("trueUpdateUser","Thông tin thay đổi thành công");
					resp.sendRedirect("edit_User.jsp");
				}else {
					//System.out.println("false");
					session.setAttribute("fallUpdateUser","Xảy ra chút lỗi");
					resp.sendRedirect("edit_User.jsp");
				}
				
			}else {
				session.setAttribute("fallUpdateUser","Mất kết nối");
				resp.sendRedirect("edit_User.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
