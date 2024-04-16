<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Web bán điện thoại</title>
<%@include file="all_component/allCss.jsp" %>

<style type="text/css">
.back-img {
	background: url("img/giaodien.jpg");
	height: 50vh;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
}

.crd-ho:hover {
background: #e8eaf6;
}
</style>

</head>
<body style="background-color: #e8eaf6">
<%@include file="all_component/navbar.jsp" %>

	<div class="container-fluid back-img">
		<h2 class="text-center text-danger">PHONE</h2>		
	</div>
	
	<%--New Phone --%>
<div class="container">
<h3 class="text-center">New Phone</h3>
	<div class="row">
		<div class="col-md-3">
			<div class="card crd-ho ">
				<div class="card-body text-center">
				<img alt="" src="img/SSA24.jpg" style="width: 150px; height: 200px" 
				class="img-thumblin">
				<p>SAMSUNG Galaxy A24</p>
					
				</div>		
			</div>			
		</div>
		
		<div class="col-md-3">
			<div class="card crd-ho ">
				<div class="card-body text-center">
				<img alt="" src="img/SSA24.jpg" style="width: 150px; height: 200px" 
				class="img-thumblin">
				<p>SAMSUNG Galaxy A24</p>
					
				</div>		
			</div>			
		</div>	
			
	</div>
	
	<div class="text-center mt-1">
		<a href="" class="btn btn-danger btn-sm text-white">See more</a>
	</div>
</div>	

<%@include file="all_component/footer.jsp" %>
</body>
</html>