<%@page import="java.util.ArrayList"%>
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
<title>Mặt hàng đã mua</title>
<%@include file="all_component/allCss.jsp" %>
</head>
<body>
<%@include file="all_component/navbar.jsp" %>
<br>
	<table class="table table-sm ">
	  <thead class="table-primary">
	    <tr>
	      <th scope="col">order ID</th>
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
	  	List<phoneOrder> plist = dao.getPhone(u.getGmail());
	  	for(phoneOrder p : plist) 
	  	{%>
	  	<tr>
	      <th scope="row"><%=p.getOrderid() %></th>
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
<br>
<%@include file="all_component/footer.jsp" %>
</body>
</html>