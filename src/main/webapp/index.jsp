<%@page import="com.entity.user"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.phoneDtl"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.phoneDAOImpl"%>
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

	<%
		user u =(user)session.getAttribute("userobj");
	%>

<%@include file="all_component/navbar.jsp" %>

	<div class="container-fluid back-img">
		<h2 class="text-center text-danger">PHONE</h2>		
	</div>

<br>
	
	<%--Adroid --%>
<div class="container">
	<h3 class="text-center">Adroid</h3>
	<div class="row">
	<%
		phoneDAOImpl dao = new phoneDAOImpl(DBConnect.getConn());
		List<phoneDtl> list = dao.getAndroidPhone();
		for(phoneDtl p : list)
	{%>
	<div class="col-md-3">
		<div class="card crd-ho ">
			<div class="card-body text-center">
			<img alt="" src="img/<%=p.getImg() %>" style="width: 150px; height: 200px" 
				class="img-thumblin">
				<p><%=p.getPname() %></p>	
				<p><%=p.getBrand() %></p>		
				<p><%=p.getOperating() %></p>	
				
				
				<div class="row">
					<%				
					if(u==null){
					%>
						<a href="login.jsp" class="btn btn-danger btn-sm ml-2">Add Cart</a>
					<%
					} else {
					%>
						<a href="cart?pid=<%=p.getpId()%>&&uid=<%=u.getId()%>" class="btn btn-danger btn-sm ml-2">Add Cart</a>
					<%}
					
					%>
					<a href="view_Phone.jsp?pid=<%=p.getpId() %>" class="btn btn-danger btn-sm ml-1">View</a>
					<a href="" class="btn btn-danger btn-sm ml-1"><%=p.getPrice() %></a>
				</div>					
			</div>		
		</div>			
	</div>
	<%}
	
	%>
	
		
		
	
			
	</div>
	
	<div class="text-center mt-1">
		<a href="all_Android.jsp" class="btn btn-danger btn-sm text-white">See more</a>
	</div>
</div>	

<br>

<%--I0S --%>
<div class="container">
	<h3 class="text-center">IOS</h3>
	<div class="row">
	<%
		phoneDAOImpl dao1 = new phoneDAOImpl(DBConnect.getConn());
		List<phoneDtl> list1 = dao1.getIosPhone();
		for(phoneDtl p : list1)
	{%>
	<div class="col-md-3">
		<div class="card crd-ho ">
			<div class="card-body text-center">
			<img alt="" src="img/<%=p.getImg() %>" style="width: 150px; height: 200px" 
				class="img-thumblin">
				<p><%=p.getPname() %></p>	
				<p><%=p.getBrand() %></p>		
				<p><%=p.getOperating() %></p>	
				
				
				<div class="row">
					<%				
					if(u==null){
					%>
						<a href="login.jsp" class="btn btn-danger btn-sm ml-2">Add Cart</a>
					<%
					} else {
					%>
						<a href="cart?pid=<%=p.getpId()%>&&uid=<%=u.getId()%>" class="btn btn-danger btn-sm ml-2">Add Cart</a>
					<%}
					
					%>
					<a href="view_Phone.jsp?pid=<%=p.getpId() %>" class="btn btn-danger btn-sm ml-1">View</a>
					<a href="" class="btn btn-danger btn-sm ml-1"><%=p.getPrice() %></a>
				</div>					
			</div>		
		</div>			
	</div>
	<%}
	
	%>
	
		
		
	
			
	</div>
	
	<div class="text-center mt-1">
		<a href="all_IOS.jsp" class="btn btn-danger btn-sm text-white">See more</a>
	</div>
</div>	

<br>

<%--Order --%>
<div class="container">
	<h3 class="text-center">Order</h3>
	<div class="row">
	<%
		phoneDAOImpl dao2 = new phoneDAOImpl(DBConnect.getConn());
		List<phoneDtl> list2 = dao2.getOtherPhone();
		for(phoneDtl p : list2)
	{%>
	<div class="col-md-3">
		<div class="card crd-ho ">
			<div class="card-body text-center">
			<img alt="" src="img/<%=p.getImg() %>" style="width: 150px; height: 200px" 
				class="img-thumblin">
				<p><%=p.getPname() %></p>	
				<p><%=p.getBrand() %></p>		
				<p><%=p.getOperating() %></p>	
				
				
				<div class="row">
					<!-- <a href="" class="btn btn-danger btn-sm ml-2">Add Cart</a> -->
					<%				
					if(u==null){
					%>
						<a href="login.jsp" class="btn btn-danger btn-sm ml-2">Add Cart</a>
					<%
					} else {
					%>
						<a href="cart?pid=<%=p.getpId()%>&&uid=<%=u.getId()%>" class="btn btn-danger btn-sm ml-2">Add Cart</a>
					<%}
					
					%>
					<a href="view_Phone.jsp?pid=<%=p.getpId() %>" class="btn btn-danger btn-sm ml-1">View</a>
					<a href="" class="btn btn-danger btn-sm ml-1"><%=p.getPrice() %></a>
				</div>					
			</div>		
		</div>			
	</div>
	<%}
	
	%>
	
		
		
	
			
	</div>
	
	<div class="text-center mt-1">
		<a href="all_Orther.jsp" class="btn btn-danger btn-sm text-white">See more</a>
	</div>
</div>	

<br>

<%--Phụ kiện --%>
<div class="container">
	<h3 class="text-center">Phụ kiện</h3>
	<div class="row">
	<%
		phoneDAOImpl dao3 = new phoneDAOImpl(DBConnect.getConn());
		List<phoneDtl> list3 = dao3.getPkPhone();
		for(phoneDtl p : list3)
	{%>
	<div class="col-md-3">
		<div class="card crd-ho ">
			<div class="card-body text-center">
			<img alt="" src="img/<%=p.getImg() %>" style="width: 150px; height: 200px" 
				class="img-thumblin">
				<p><%=p.getPname() %></p>	
				<p><%=p.getBrand() %></p>		
				<p><%=p.getOperating() %></p>	
				
				
				<div class="row">
					<%				
					if(u==null){
					%>
						<a href="login.jsp" class="btn btn-danger btn-sm ml-2">Add Cart</a>
					<%
					} else {
					%>
						<a href="cart?pid=<%=p.getpId()%>&&uid=<%=u.getId()%>" class="btn btn-danger btn-sm ml-2">Add Cart</a>
					<%}
					
					%>
					<a href="view_Phone.jsp?pid=<%=p.getpId() %>" class="btn btn-danger btn-sm ml-1">View</a>
					<a href="" class="btn btn-danger btn-sm ml-1"><%=p.getPrice() %></a>
				</div>					
			</div>		
		</div>			
	</div>
	<%}
	
	%>
	
		
		
	
			
	</div>
	
	<div class="text-center mt-1">
		<a href="all_PK.jsp" class="btn btn-danger btn-sm text-white">See more</a>
	</div>
</div>	

<br>

<%@include file="all_component/footer.jsp" %>
</body>
</html>