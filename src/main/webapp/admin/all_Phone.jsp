<%@page import="java.util.ArrayList"%>
<%@page import="com.entity.phoneDtl"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.phoneDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Danh sách</title>
<%@include file="allCss.jsp" %>
</head>
<body>
<%@include file="navbar.jsp" %>
<h3 class="text-center">Hello</h3>
<!-- sử dụng trueU/falseU cho mục phoneEdit.java và phoneDelete.java -->
					<c:if test="${not empty trueU }">
						<h5 class="text-center text-success">${trueU }</h5>
						<c:remove var="trueU " scope="session"/>
					</c:if>
					
					<c:if test="${not empty falseU }">
						<h5 class="text-center text-danger">${falseU }</h5>
						<c:remove var="falseU " scope="session"/>
					</c:if>
					
	<table class="table table-bordered">
	  <thead>
	    <tr>
	      <th scope="col">Id</th>
	      <th scope="col">Tên sản phẩm</th>
	      <th scope="col">Img</th>
	      <th scope="col">Hãng</th>
	      <th scope="col">Giá</th>
	      <th scope="col">Mô tả</th>
	      <th scope="col">Thông tin bộ nhớ</th>
	      <th scope="col">Hệ điều hành</th>
	      <th scope="col">Action</th>
	      
	    </tr>
	  </thead>
	  <tbody>
	  
	  <%
	  phoneDAOImpl dao = new phoneDAOImpl(DBConnect.getConn());
	  List<phoneDtl> list = dao.getAllPhone();
	  
	  for(phoneDtl dtl : list) 
	  {%>
		  <tr>
	      <th><%=dtl.getpId() %></th>
	      <td><%=dtl.getPname() %></td>
	      <td><img src="../img/<%=dtl.getImg()%>" 
	      style="width: 50px; height: 50px"></td>
	      <td><%=dtl.getBrand() %></td>
	      <td><%=dtl.getPrice() %></td>
	      <td><%=dtl.getDescription() %></td>
	      <td><%=dtl.getMemory() %></td>
	      <td><%=dtl.getOperating()%></td>
	      <td>
	       	<a href="edit_phone.jsp?id=<%=dtl.getpId()%>" class="btn btn-warning"> Chỉnh sửa</a>
			<a href="../delete?id=<%=dtl.getpId()%>" class="btn btn-danger"> Xóa</a>
	      </td>	     
	    </tr>
	  <%}
	  %>
	    
	  </tbody>
	</table>
<%@include file="footer.jsp" %>
</body>
</html>