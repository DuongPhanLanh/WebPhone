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
<title>Chỉnh sửa</title>
<%@include file="allCss.jsp" %>
</head>
<body>
<%@include file="navbar.jsp" %>
<div class="container">
	<div class="row">
		<div class="col-md-4 offset-md-4">
			<div class="card">
				<div class="card-body">
				<h4 class="text-center">CHỈNH SỬA THÔNG TIN</h4>
				
				
				<%-- --%>
				
					
				
				<%
					int id = Integer.parseInt(request.getParameter("id"));
					phoneDAOImpl dao = new phoneDAOImpl(DBConnect.getConn());
					phoneDtl p = dao.getPhoneById(id);
				
				%>
					
					<form action="../editPhone" method="POST">
					<%-- mục hidden cho phép giá trị được ẩn đi nhưng vẫn hoạt động trong trang   --%>	
					<input type="hidden" name="pId" value="<%=p.getpId() %>">	
						
					  <div class="form-group">
					    <label for="exampleInputEmail1">Tên sản phẩm</label>
					    <input type="text" class="form-control" id="exampleInputEmail1" 
					    name="pName" value="<%=p.getPname() %>">
					  </div>
					
					  <div class="form-group">
					    <label for="exampleInputEmail1">Thuộc Hãng</label>
					    <input type="text" class="form-control" id="exampleInputEmail1" 
					    name="pBrand" value="<%=p.getBrand() %>">
					  </div>
					  					  
					  <div class="form-group">
					    <label for="exampleInputEmail1"> Giá</label>
					    <input type="number" class="form-control" id="exampleInputPassword1" 
					    name="pPrice" value="<%=p.getPrice() %>">
					  </div>
					  
					  <div class="form-group">
					    <label for="exampleInputEmail1">Mô tả </label>
					    <input type="text" class="form-control" id="exampleInputEmail1" 
					     name="description" value="<%=p.getDescription() %>">
					  </div>
					  
					  <div class="form-group">
					    <label for="exampleInputEmail1">Thông tin bộ nhớ </label>
					    <input type="text" class="form-control" id="exampleInputEmail1" 
					    name="pMemory" value="<%=p.getMemory() %>">
					  </div>
					  
					  <div class="form-group">
					    <label for="exampleInputEmail1">Hệ điều hành </label>
					    <select class="form-control" id="inputStatus" 
					    name="pOparating">
					    	<%
					    	if("Android".equals(p.getOperating())) {
					    	%>
					    	<option value="iOS"> iOS</option>
					    	<option value="Other"> Other</option>
					    	<option value="Android"> Android</option>
					    	<%
					    	}else if("iOS".equals(p.getOperating())) {
					    	%>
					    	<option value="Other"> Other</option>
					    	<option value="Android"> Android</option>
					    	<option value="iOS"> iOS</option>
					    	<%
					    	}else if("Other".equals(p.getOperating())) {
					    	%>
					    	<option value="Android"> Android</option>
					    	<option value="iOS"> iOS</option>
					    	<option value="Other"> Other</option>
					    	<%
					    	}
					    	%>
					    </select>
					    
					  </div>
					  
					  <%--<div class="form-group">
					    <label for="exampleFormControlFile1">Thêm ảnh</label>
					    <input name="" type="file" class="form-control-file" id="exampleFormControlFile1"
					    >
					  </div> 
					  --%>
					  
					   
					  
					  
					 
					  <%-- 
					  dang nghien cuu cach nhap ma
					  
					  --%>
					  
					  
					 <div class="">
					  	<button type="submit" class="btn btn-primary">UPPDATE</button> 
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