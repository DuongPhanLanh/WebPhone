<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang chủ</title>
<%@include file="all_component/allCss.jsp" %>
</head>
<body>
<%@include file="all_component/navbar.jsp" %>

 
	<h1>Thông tin cá nhân</h1>
	<br>
	<c:if test="${not empty userobj }">
		<h1>Name:${userobj.name }</h1>
		<h1>Gmail:${userobj.gmail }</h1>
		<h1>ADDRESS:${userobj.address }</h1>
		<h1>Phone:${userobj.phone }</h1>
	</c:if>
	<div class="col-md-3">
		<a href="edit_User.jsp" class="btn btn-info"> Thay đổi thông tin và mật khẩu</a>
	</div>

<%@include file="all_component/footer.jsp" %>
</body>
</html>