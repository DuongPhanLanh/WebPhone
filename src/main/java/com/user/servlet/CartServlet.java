package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.cartDAOImpl;
import com.DAO.phoneDAOImpl;
import com.DB.DBConnect;
import com.entity.cart;
import com.entity.phoneDtl;

@WebServlet("/cart")
public class CartServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		try {
			int pid = Integer.parseInt(req.getParameter("pid"));
			int uid = Integer.parseInt(req.getParameter("uid"));
			
			phoneDAOImpl dao = new phoneDAOImpl(DBConnect.getConn());
			phoneDtl dtl = dao.getPhoneById(pid);
			
			cart c=new cart();
			
			c.setPid(pid);
			c.setUid(uid);
			// mục này nhầm xuất giá trị chữ tương đương với chương trình
			c.setcName(dtl.getPname());
			c.setcBrand(dtl.getBrand());
			// vì mục Price trong phone_dtl xét là String nên xảy ra xung đột
			//c.setcPrice(dtl.getPrice());
			c.setcPrice(Double.parseDouble(dtl.getPrice()));
			c.setTotalPrice(Double.parseDouble(dtl.getPrice()));
			
			cartDAOImpl dao1=new cartDAOImpl(DBConnect.getConn());
			boolean f= dao1.addCart(c);
			
			HttpSession session = req.getSession();
			// TOAST giống như một hộp cảnh báo chỉ hiển thị trong vài giây khi có điều gì đó xảy ra (tức là khi người dùng nhấp vào nút, gửi biểu mẫu, v.v.).
			
			if(f) {				
				//System.out.println("Cart thanh cong");
				if (dtl.getOperating().equals("Android")) {
			        session.setAttribute("addAndroidCart", "Thêm thành công");
			        resp.sendRedirect("all_Android.jsp");
			    } else if (dtl.getOperating().equals("iOS")) {
			        session.setAttribute("addIOSCart", "Thêm thành công");
			        resp.sendRedirect("all_IOS.jsp");
			    } else if (dtl.getOperating().equals("Other")) {
			        session.setAttribute("addOtherCart", "Thêm thành công");
			        resp.sendRedirect("all_Orther.jsp");
			    } else if (dtl.getOperating().equals("PK")) {
			        session.setAttribute("addPKCart", "Thêm thành công");
			        resp.sendRedirect("all_PK.jsp");
			    }
			}else {
				//System.out.println("Cart that bai");
				if (dtl.getOperating().equals("Android")) {
			        session.setAttribute("addAndroidCartFall", "Thêm thất bại");
			        resp.sendRedirect("all_Android.jsp");
			    } else if (dtl.getOperating().equals("iOS")) {
			        session.setAttribute("addIOSCartFall", "Thêm thất bại");
			        resp.sendRedirect("all_IOS.jsp");
			    } else if (dtl.getOperating().equals("Other")) {
			        session.setAttribute("addOtherCartFall", "Thêm thất bại");
			        resp.sendRedirect("all_Orther.jsp");
			    } else if (dtl.getOperating().equals("PK")) {
			        session.setAttribute("addPKCartFall", "Thêm thất bại");
			        resp.sendRedirect("all_PK.jsp");
			    }
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
