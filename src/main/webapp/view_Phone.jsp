<%@page import="com.entity.phoneDtl"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.phoneDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Nội dung sản phẩm</title>
<%@include file="all_component/allCss.jsp" %>
</head>
<body>
<%@include file="all_component/navbar.jsp" %>
<!--  
<br>
	<div class="container">
		<div class="row">
		//ô thứ nhất
			<div class="col-md-4 text-center p-5 border bg-white">
				<img src="img/reno11.jpg" style="width: 150px; height: 150px"><br>
				<h4>ten san pham</h4>
				<h4>hang san xuat</h4>
				<h4>loai</h4>
			</div>
		// ô thứ 2
			<div class="col-md-4 text-center p-5 border bg-white">
				<h4>gioi hieu</h4>
				<h4>thong so ki thuat</h4>
			</div>	
		// ô thứ 3		
			<div class="col-md-4 text-center p-5 border bg-white">
			<h2>ten san pham</h2>
				<div class="row">
					<div class="col-md-4 text-center p-4 text-danger">
						<p>cart</p>
					</div>
					<div class="col-md-4 text-center p-4 text-danger">
						<p>return ship</p>
					</div>
					<div class="col-md-4 text-center p-4 text-danger">
						<p>Phi van chuyen</p>
					</div>
			<h5>gia tien</h5>
				</div>
				
				<div class="row text-center p-3">
					<a href="" class="btn btn-danger ml-2">Quay lai</a>
					<a href="" class="btn btn-danger ml-2">Mua</a>
				</div>
			
			</div>
			
		</div>
	</div>
<br>
-->
		<%
			int id = Integer.parseInt(request.getParameter("pid"));
			phoneDAOImpl dao = new phoneDAOImpl(DBConnect.getConn());
			phoneDtl p = dao.getPhoneById(id);
		%>
<br>
	<div class="container">
		<div class="row">
		
			<div class="col-md-4 text-center p-5 border bg-white">
				<img src="img/<%=p.getImg() %>" style="width: 150px; height: 150px"><br>
				
				<h4 class="mt-3">
				Tên mặt hàng: <span class="text-success"><%=p.getPname() %></span>				
				</h4>
				
				<h4>
				Hãng sản xuất: <span class="text-success"><%=p.getBrand() %></span>
				</h4>
				
				<h4>
				Dạng - Hệ điều hành: <span class="text-success"><%=p.getOperating() %></span>
				</h4>
			</div>
		
			<div class="col-md-4 text-center p-5 border bg-white">
				<h4>
				Giới hiệu: <span class=""><%=p.getDescription() %></span>
				</h4>
				
				<h4>
				Thông số kĩ thuật: <span class=""><%=p.getMemory() %></span>
				</h4>
			</div>	
			
			<div class="col-md-4 text-center p-6 border bg-white">
			<h2><%=p.getPname() %></h2>
				<div class="row">
					<div class="col-md-4 text-center p-4 text-danger">
						<p>ADD CART</p>
					</div>
					<div class="col-md-4 text-center p-4 text-danger">
						<p>RETURN SHIP</p>
					</div>
					<div class="col-md-4 text-center p-4 text-danger">
						<p>Hệ thống shop</p>
					</div>
			<h5>Giá tiền: <%=p.getPrice() %></h5>
				</div>
				
				<div class="row text-center p-3">
					<a href="" class="btn btn-danger ml-2">Quay lai</a>
					<a href="" class="btn btn-danger ml-2">Mua</a>
				</div>
			
			</div>
			
		</div>
	</div>
<br>

</body>
</html>