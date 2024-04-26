package com.user.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.cartDAOImpl;
import com.DAO.phoneOrderDAOImpl;
import com.DB.DBConnect;
import com.entity.cart;
import com.entity.phoneOrder;

@WebServlet("/orderAll")
public class OrderServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		try {
			int id = Integer.parseInt(req.getParameter("oid"));
			String oGmail=req.getParameter("oGmail");
			String oName=req.getParameter("oName");
			String oPhone=req.getParameter("oPhone");
			String oAddress=req.getParameter("oAddress");
			String oDayBuy=req.getParameter("oDayBuy");
			String oPayment=req.getParameter("oPayment");
				
			// System.out.println(oGmail+oName+oPhone+oAddress+oDayBuy+oPayment);
			cartDAOImpl dao=new cartDAOImpl(DBConnect.getConn());
			List<cart> plist = dao.getPhoneByUser(id);
			
			HttpSession session = req.getSession();
			
			if(plist.isEmpty()) {
				session.setAttribute("falseU", "Chưa có mặt hàng");
				resp.sendRedirect("cart.jsp");
			}else {
				phoneOrderDAOImpl dao2=new phoneOrderDAOImpl(DBConnect.getConn());
				int i = dao2.getOrderNo();
		
				phoneOrder o = null;	
				ArrayList<phoneOrder> orderlist = new ArrayList<phoneOrder>();
				Random r = new Random();
				for(cart c: plist) {
					o=new phoneOrder();
					o.setOrderid("Order-00"+r.nextInt(1000));
					o.setoGmail(oGmail);
					o.setoName(oName);
					o.setoAddress(oAddress);
					o.setoNumPhone(oPhone);
					
					o.setoNamePhone(c.getcName());
					o.setoBrand(c.getcBrand());
					
					// thêm giá trị +"" để biến giá trị nhập double thành String
					o.setoPrice(c.getcPrice()+"");
					
					o.setoDayBuy(oDayBuy);
					o.setoPayment(oPayment);
					
					orderlist.add(o);
					i++;
				}
				
//				if("CK".equals(oPayment)) {
//					resp.sendRedirect("cart.jsp");
//				}else if("TM".equals(oPayment)) {
//					resp.sendRedirect("cart.jsp");
//				}
				
				if("Null".equals(oPayment)) {	
					session.setAttribute("falseU", "Chưa có mặt hàng");
					resp.sendRedirect("cart.jsp");
				}else  {
					boolean f = dao2.saveOrder(orderlist);
					
					if(f) {
						resp.sendRedirect("submit_Order.jsp");
//						System.out.println("Đặt mua thành công");
					}else {
						session.setAttribute("falseU", "Chưa có mặt hàng");
						resp.sendRedirect("cart.jsp");
//						System.out.println("Đặt mua thất bại");
					}
					
				}
			}
			
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	
	}
}
