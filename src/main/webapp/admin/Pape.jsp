<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin-Trang chủ</title>
<%@include file="allCss.jsp" %>
</head>
<body>
<%@include file="navbar.jsp" %>
<div class=container>
		<div class="row p-5">
			<div class=col-md-3>
			<a href="addPhone.jsp">
				<div class=card>
					<div class="card-body text-center">
						<i class="fa-solid fa-mobile-screen fa-3x text-success"></i>
					<h4>Thêm sản phẩm</h4>

					</div>
				</div>
			</a>
			</div>
			
			
			<div class=col-md-3>
			<a href="all_Phone.jsp">
				<div class=card>
					<div class="card-body text-center">
						<i class="fa-regular fa-calendar fa-3x text-success"></i>
					<h4>Sản phẩm đã có</h4>
					</div>
				</div>
			</a>
			</div>
			
			<div class=col-md-3>
			<a href="order_Phone.jsp">
				<div class=card>
					<div class="card-body text-center ">
						<i class="fa-regular fa-map fa-3x text-success"></i>
					<h4>Các mặt hàng </h4>
					</div>
				</div>
			</a>
			</div>
			
			<div class=col-md-3>
			<a href="#">
				<div class=card>
					<div class="card-body text-center">
						<i class="fa-regular fa-calendar fa-3x text-success"></i>
					<h4>Trao đổi với khách hàng</h4>
					</div>
				</div>
			</a>
			</div>
			
		</div>
	</div>
<%@include file="footer.jsp" %>
</body>
</html>