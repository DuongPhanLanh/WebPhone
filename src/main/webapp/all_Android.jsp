<%@page import="com.DB.DBConnect"%>
<%@page import="com.entity.phoneDtl"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.phoneDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dòng Android</title>
<%@include file="all_component/allCss.jsp" %>
</head>
<body>
<%@include file="all_component/navbar.jsp" %>
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
					<a href="" class="btn btn-danger btn-sm ml-2">Add Cart</a>
					<a href="view_Phone.jsp?pid=<%=p.getpId() %>" class="btn btn-danger btn-sm ml-1">View</a>
					<a href="" class="btn btn-danger btn-sm ml-1"><%=p.getPrice() %></a>
				</div>					
			</div>		
		</div>			
	</div>
	<%}
	
	%>
	
		
		
	
			
	</div>
</div>	
</body>
</html>