<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng nhập</title>
<%@include file="all_component/allCss.jsp" %>
</head>
<body>
<%@include file="all_component/navbar.jsp" %>
<div class="container">
	<div class="row mt-2">
		<div class="col-md-4 offset-md-4">
			<div class="card">
				<div class="card-body">
				<h4 class="text-center">Đăng nhập</h4>
				
				<!-- Mục failedLog trong LoginServlet.java -->
				<c:if test="${not empty failedLog }">
					<h5 class="text-center text-danger">${failedLog}</h5>
					<c:remove var="failedLog" scope="session"/>
				</c:if>
				 
				<!-- Mục trueLog trong LogoutServlet.java --> 
				<c:if test="${not empty trueLog }">
					<h5 class="text-center text-danger">${trueLog}</h5>
					<c:remove var="trueLog" scope="session"/>
				</c:if>
			
			
					<form action="login" method="post">
					  <div class="form-group">
					    <label for="exampleInputEmail1">Email </label>
					    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
					    required="required" name="pGmail">
					    
					  </div>
					  <div class="form-group">
					    <label for="exampleInputPassword1">Mật khẩu</label>
					    <input type="password" class="form-control" id="exampleInputPassword1"
					    required="required" name="pPassword">
					  </div>
					  
					  <div class="text-center">
					  	<button type="submit" class="btn btn-primary">Submit</button> 
					  	<br>					  	
					  	<a href="register.jsp">Sign Up free</a>
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