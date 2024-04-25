<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thay đổi</title>
<%@include file="all_component/allCss.jsp" %>
</head>
<body>
<%@include file="all_component/navbar.jsp" %>
<div class="container">
	<div class="row mt-2">
		<div class="col-md-4 offset-md-4">
			<div class="card">
				<div class="card-body">
				<h4 class="text-center">Thay đổi  thông tin và mật khẩu</h4>
				 <!-- Mục failedLog trong LoginServlet.java -->
				<c:if test="${not empty fallUpdateUser }">
					<h5 class="text-center text-danger">${fallUpdateUser}</h5>
					<c:remove var="failedLog" scope="session"/>
				</c:if>
				 
				<!-- Mục trueLog trong LogoutServlet.java --> 
				<c:if test="${not empty trueUpdateUser }">
					<h5 class="text-center text-danger">${trueUpdateUser}</h5>
					<c:remove var="trueLog" scope="session"/>
				</c:if>
				
			
			
					<form action="update_User" method="post">
					<input type="hidden" name="edId"  value="${userobj.id }">
					  <div class="form-group">
					    <label for="exampleInputEmail1">Thêm Email </label>
					    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
					    required="required"  name="edGmail" value="${userobj.gmail }">
					    
					  </div>
					  
					  <div class="form-group">
					    <label for="exampleInputEmail1">Tên người dùng </label>
					    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
					  	required="required"  name="edName" value="${userobj.name }">
					    
					  </div>
					  
					  <div class="form-group">
					    <label for="exampleInputPassword1">Tạo Mật khẩu</label>
					    <input type="password" class="form-control" id="exampleInputPassword1"
					     required="required"  name="edPassword" value="${userobj.password }">
					  </div>
					  
					   
					  <div class="form-group">
					    <label for="exampleInputEmail1">Địa chỉ</label>
					    <input type="text" class="form-control" id="exampleInputEmail1" 
					    required="required"  name="edAddress" value="${userobj.address }">
					  </div>
					  
					  
					  
					  <div class="form-group">
					    <label for="exampleInputEmail1">Số điện thoại </label>
					    <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
					    required="required"  name="edPhone" value="${userobj.phone }">
					  </div>
					  
					  <!-- 
					  <div class="form-check">
					    <input type="checkbox" class="form-check-input" id="exampleCheck1" name="check">
					    <label class="form-check-label" for="exampleCheck1">Chấp nhận sự thay đổi</label>
					  </div>
					   -->
					   
					  <div class="">
					  	<button type="submit" class="btn btn-primary">Thay đổi</button> 
					  	<br>					  	
					  </div>
					  
					</form>
					
				</div>		
			</div>			
		</div>
	</div>
</div>	
<%@include file="all_component/footer.jsp" %>

</body>
</html>