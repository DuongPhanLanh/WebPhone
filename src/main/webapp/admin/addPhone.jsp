<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thêm sản phẩm</title>
<%@include file="allCss.jsp" %>
</head>
<body>
<%@include file="navbar.jsp" %>
<div class="container">
	<div class="row">
		<div class="col-md-4 offset-md-4">
			<div class="card">
				<div class="card-body">
				<h4 class="text-center">THÊM ĐIỆN THOẠI</h4>
				
				
				<!-- sử dụng trueP/falseP cho mục phoneEdit.java và phoneDelete.java -->
				
					<c:if test="${not empty trueP }">
						<p class="text-center text-success">${trueP }</p>
						<c:remove var="trueP " scope="session"/>
					</c:if>
					
					<c:if test="${not empty falseP }">
						<p class="text-center text-danger">${falseP }</p>
						<c:remove var="falseP " scope="session"/>
					</c:if>
				
				<%--<form action="../AddPhone" method="post"
					enctype="multipart/form-data">	 --%>
					
					<form action="../AddPhone" method="POST" 
					enctype="multipart/form-data" accept-charset="UTF-8">			
					  <div class="form-group">
					    <label for="exampleInputEmail1">Tên sản phẩm</label>
					    <input type="text" class="form-control" id="exampleInputEmail1" 
					    placeholder="namePhone"  name="pName">
					  </div>
					
					  <div class="form-group">
					    <label for="exampleInputEmail1">Thuộc Hãng</label>
					    <input type="text" class="form-control" id="exampleInputEmail1" 
					    placeholder="Brand"  name="pBrand">
					  </div>
					  
					  <%-- 
					  	<div class="form-group">
					    <label for="exampleInputPassword1">Create your Password</label>
					    <input type="password" class="form-control" id="exampleInputPassword1"
					    required="required" name="password">
					  </div>
					  --%>
					  					  
					  <div class="form-group">
					    <label for="exampleInputEmail1"> Giá</label>
					    <input type="number" class="form-control" id="exampleInputPassword1" 
					    placeholder="Price" name="pPrice">
					  </div>
					  
					  <div class="form-group">
					    <label for="exampleInputEmail1">Mô tả </label>
					    <input type="text" class="form-control" id="exampleInputEmail1" 
					    placeholder="description" name="description">
					  </div>
					  
					  <div class="form-group">
					    <label for="exampleInputEmail1">Thông tin bộ nhớ </label>
					    <input type="text" class="form-control" id="exampleInputEmail1" 
					    placeholder="memory" name="pMemory">
					  </div>
					  
					  <div class="form-group">
					    <label for="exampleInputEmail1">Hệ điều hành </label>
					    <select class="form-control" id="inputStatus" 
					    name="pOparating">
					    	<option selected>---Operating systems---</option>
					    	<option value="Android"> Android</option>
					    	<option value="iOS"> iOS</option>
					    	<option value="Other"> Other</option>
					    </select>
					    
					  </div>
					  
					  <div class="form-group">
					    <label for="exampleFormControlFile1">Thêm ảnh</label>
					    <input name="pimg" type="file" class="form-control-file" id="exampleFormControlFile1"
					    >
					    <%--accept=".jpg, .png, .pdf" --%>
					  </div>
					  
					 
					  <%-- 
					  dang nghien cuu cach nhap ma
					  
					  --%>
					  
					  
					 <div class="">
					  	<button type="submit" class="btn btn-primary">ADD</button> 
					  	<!-- <button type="submit" class="btn btn-danger">DELETE</button>  -->
					  	
					  </div>
					</form>
					
				</div>		
			</div>			
		</div>
	</div>
</div>
<%@include file="footer.jsp" %>

</body>
</html>