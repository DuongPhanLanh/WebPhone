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
<div class="container">
	<div class="row">
		<div class="col">
			<div class="card">
				<div class="card-body text-center">
					<i class="fa-regular fa-circle-check fa-3x text-success"></i>					
					<h4 class="text-danger"> Đặt hàng thành công!</h4>
					<h4>Chúng tôi sẽ liên hệ để xác nhận đơn hàng trong thời gian sớm nhất</h4>				
				</div>
			</div>
		</div>
	</div>
	<br>
	<div class=" row-md-3 text-center">
						<a href="order_User.jsp" class="btn btn-outline-secondary"> Xem chi tiết đơn hàng</a>
						<a href="index.jsp" class="btn btn-warning"> Tiếp tục mua hàng</a>
					</div>
</div>
<%@include file="all_component/footer.jsp" %>
</body>
</html>