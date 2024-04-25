<%@page import="java.util.List"%>
<%@page import="com.entity.cart"%>
<%@page import="com.entity.user"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.cartDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CART Page</title>
<%@include file="all_component/allCss.jsp" %>
</head>
<body>
<%@include file="all_component/navbar.jsp" %>

	<c:if test="${empty userobj }">
		<c:redirect url="login.jsp"></c:redirect>
	</c:if>
	
	<c:if test="${not empty trueU }">
		<div class="alert alert-success" role="alert">${trueU }</div>
		<c:remove var="trueU " scope="session"/>
	</c:if>
					
	<c:if test="${not empty falseU }">
		<div class="alert alert-success" role="alert">${falseU }</div>
		<c:remove var="trueU " scope="session"/>
	</c:if>
<br>
<div class="container">
	<div class="row">
		<div class="col-md-6">
			<div class="card">
			<h4 class="text-center">Các mặt hàng của bạn</h4>
				<div class="card bg-white">
					<div class="card-body"></div>
						<table class="table table-bordered">
					  <thead>
					    <tr>
					      <th scope="col">Điện thoại/phụ kiện</th>
					      <th scope="col">Hãng sản xuất</th>
					      <th scope="col">Giá tiền</th>
					      <th scope="col">Action</th>
					    </tr>
					  </thead>
					  <tbody>
					  
					  <%
					  
					  user u = (user) session.getAttribute("userobj");
					  cartDAOImpl dao = new cartDAOImpl(DBConnect.getConn());
					  List<cart> cart = dao.getPhoneByUser(u.getId());
					  
					  Double totalPrice=0.00;
					  for(cart c: cart) 					  
					  {
					  totalPrice=c.getTotalPrice();
					  %>
						<tr>
					      <th scope="row"><%=c.getcName() %></th>
					      <td><%=c.getcBrand() %></td>
					      <td><%=c.getcPrice() %></td>
					      
					      <td>
					      	<a href="removePhone?pid=<%=c.getPid() %>&&uid=<%=c.getUid()%>" class="btn btn-sm btn-danger">Remove</a>
					      </td>
					    </tr>
					  <%
					  }
					  %>
					  <tr>
					      <td>Tổng tiền</td>
					      <td colspan="3">
					      	<%=totalPrice %>
					      </td>
					    </tr>
					    
					  </tbody>
					</table>
					
				</div>		
			</div>			
		</div>
		
		<div class="col-md-6">
			<div class="card">
				<div class="card-body">
				<h4 class="text-center">Nhập thông tin nơi nhận</h4>
					<form>
					  <div class="form-row">
					    <div class="form-group col-md-6">
					      <label for="inputEmail4">Email</label>
					      <input type="email" class="form-control" id="inputEmail4" placeholder="Email">
					    </div>
					    <div class="form-group col-md-6">
					      <label for="inputPassword4">Password</label>
					      <input type="password" class="form-control" id="inputPassword4" placeholder="Password">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputAddress">Address</label>
					    <input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St">
					  </div>
					  <div class="form-group">
					    <label for="inputAddress2">Address 2</label>
					    <input type="text" class="form-control" id="inputAddress2" placeholder="Apartment, studio, or floor">
					  </div>
					  <div class="form-row">
					    <div class="form-group col-md-6">
					      <label for="inputCity">City</label>
					      <input type="text" class="form-control" id="inputCity">
					    </div>
					    <div class="form-group col-md-4">
					      <label for="inputState">State</label>
					      <select id="inputState" class="form-control">
					        <option selected>Choose...</option>
					        <option>...</option>
					      </select>
					    </div>
					    <div class="form-group col-md-2">
					      <label for="inputZip">Zip</label>
					      <input type="text" class="form-control" id="inputZip">
					    </div>
					  </div>
					  <div class="form-group">
					    <div class="form-check">
					      <input class="form-check-input" type="checkbox" id="gridCheck">
					      <label class="form-check-label" for="gridCheck">
					        Check me out
					      </label>
					    </div>
					  </div>
					  <button type="submit" class="btn btn-primary">Sign in</button>
					</form>
				
				</div>
			</div>
		</div>
	</div>
</div>	
<%@include file="all_component/footer.jsp" %>

</body>
</html>