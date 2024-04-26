<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>

<nav class="navbar navbar-expand-lg navbar-dark bg-blue">
 <a class="navbar-brand" href="#">ADMIN</a> 
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
    
      <li class="nav-item active">
        <a class="nav-link" href="Pape.jsp"><i class="fa-solid fa-house"></i> Trang chủ<span class="sr-only">(current)</span></a>
      </li>
      
      <!-- 
      <li class="nav-item active">
        <a class="nav-link" href="#"><i class="fa-solid fa-mobile-screen"></i> Phụ kiện<span class="sr-only">(current)</span></a>
      </li> 
       -->
      
      
      
      <li class="nav-item active">
        <a class="nav-link" href="#"><i class="fa-solid fa-truck-fast"></i> Hệ thống shop<span class="sr-only">(current)</span></a>
      </li>
      
    </ul>
    
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit" >Search</button>
      
		
		<div class="col-md-3">
		<!-- giá trị name trong mục user.java  -->
		<!-- vì giá trị "admin" thuộc userobj có thể bị lỗi empty -->
		<c:if test="${not empty userobj }">
		
					<!--  	
					<a href="login.jsp" class="btn btn-success">
						<i class="fa fa-user"></i> ${userobj.name }</a> 
					-->
									
					<a data-toggle="modal" data-target="#exampleModalCenter"
							class="btn btn-primary text-white"><i 
							class="fa fa-sign-in-alt"></i> LogOut</a>
					</c:if> 
		 
					
					 
						<c:if test="${empty userobj }">
						<a href="../login.jsp" class="btn btn-primary"><i 
							class="fa fa-sign-in-alt"></i> Login</a>
						<a href="../register.jsp" class="btn btn-success"><i 
							class="fa fa-user-plus"></i> Register</a>
					</c:if>
					
					
					
					
		</div>	
    </form>
<!--logOut model -->

<!--
	<button type="button" 
	
	class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter"
	
	>
	  Launch demo modal
	</button>
  -->


<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" 
	role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Thông báo</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body ">
      	<div class="text-center">
	        <h4>Bạn muốn đăng xuất</h4>
	        <button type="button" class="btn btn-secondary" data-dismiss="modal">Quay lại</button>
	        <a href="../logOut" type="button" class="btn btn-primary">Đồng ý</a>
        </div>
      </div>
      <div class="modal-footer">
      </div>
    </div>
  </div>
</div>

  </div>
</nav>