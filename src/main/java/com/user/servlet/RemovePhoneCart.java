package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.cartDAOImpl;
import com.DB.DBConnect;

@WebServlet("/removePhone")
public class RemovePhoneCart extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			// thuộc đường dẫn trong csdl mysql
			int pid = Integer.parseInt(req.getParameter("pid"));
			int uid = Integer.parseInt(req.getParameter("uid"));
			
			cartDAOImpl dao = new cartDAOImpl(DBConnect.getConn());
			boolean f=dao.deletePhone(pid,uid);
			
			HttpSession session = req.getSession();
			if(f) {
				session.setAttribute("trueU", "Update Success");
				resp.sendRedirect("cart.jsp");
			}else {
				session.setAttribute("falseU", "Update False");
				resp.sendRedirect("cart.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} 
	}
}
