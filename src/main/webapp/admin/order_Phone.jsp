<%@page import="com.entity.phoneOrder"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.phoneOrderDAOImpl"%>
<%@page import="com.entity.user"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Sản phẩm được mua</title>
<%@include file="allCss.jsp" %>
</head>
<body>
<%@include file="navbar.jsp" %>

<h2 class="text-center"> Tất cả các sản phẩm đã được đặt mua</h2>
<br>
	<table class="table table-bordered">
	  <thead class="thead-light">
	    <tr>
	      <th scope="col">ID</th>
	      <th scope="col">order ID</th>
	      <th scope="col">Tên người mua</th>
	      <th scope="col">Gmail</th>
	      <th scope="col">Địa chỉ</th>
	      <th scope="col">Số điện thoại</th>
	      <th scope="col">Tên mặt hàng</th>
	      <th scope="col">Hãng sản xuất</th>
	      <th scope="col">Thành tiền</th>
	      <th scope="col">Ngày mua</th>
	      <th scope="col">Hình thức trả tiền</th>
	    </tr>
	  </thead>
	  <tbody>
	  
	  <%
	  	user u = (user)session.getAttribute("userobj");
	  	phoneOrderDAOImpl dao = new phoneOrderDAOImpl(DBConnect.getConn());
	  	List<phoneOrder> plist = dao.getPhoneForAddmin();
	  	for(phoneOrder p : plist) 
	  	{%>
	  	<tr>
	      <th scope="row"><%=p.getId() %></th>
	      <td><%=p.getOrderid() %></td>
	      <td><%=p.getoName() %></td>
	      <td><%=p.getoGmail() %></td>
	      <td><%=p.getoAddress() %></td>
	      <td><%=p.getoNumPhone() %></td>
	    
	      <td><%=p.getoNamePhone() %></td>
	      <td><%=p.getoBrand() %></td>
	      <td><%=p.getoPrice() %></td>
	      <td><%=p.getoDayBuy() %></td>
	      <td><%=p.getoPayment() %></td>
	    </tr>
	  	<%}
	  
	  %>
	  </tbody>
	</table>
<%@include file="footer.jsp" %>
</body>
</html>