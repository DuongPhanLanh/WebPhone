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
		<c:remove var="falseU " scope="session"/>
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
				
					<form action="orderAll" method="post">
					
					<input type="hidden" name="oid" value="${userobj.id }">	
					  <div class="form-row">
					  
					    <div class="form-group col-md-6">					    
					      	<label for="exampleInputEmail1">Nhập Email </label>
					    	<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
					    	 name="oGmail" value="${userobj.gmail }" required>
					    </div>
					    
					    <div class="form-group col-md-6">
					      	<label for="exampleInputEmail1">Tên người dùng </label>
						    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
						    name="oName" value="${userobj.name }" required>
					    </div>					    
					  </div>
					  
					  <div class="form-group">
					    <label for="exampleInputEmail1">Số điện thoại </label>
					    <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
					     name="oPhone" value="${userobj.phone }" required>
					  </div>
					  
					  <div class="form-group">
					    <label for="inputAddress2">Nhập Địa chỉ giao hàng</label>
					    <input type="text" class="form-control" id="inputAddress2" placeholder="số nhà/tên đường, phường/xã, quận/huyện, thành phố"
					     name="oAddress" required>
					  </div>
					  
					  <div class="form-group">
					    <label for="exampleInputEmail1">Nhập ngày muốn đặt</label>
					    <input type="text" class="form-control" id="exampleInputEmail1" 
					    placeholder="DD/MM/YY"  name="oDayBuy" required>
					  </div>
					  
					    <div class="form-group">
					      <label for="inputState">Tính tiền</label>
					      <select id="inputState" class="form-control" name="oPayment" required>
					      	<option value="Null">--Loại giao dịch--</option>
					        <option value="CK">Chuyển khoản</option>
					        <option value="TM">Tiền mặt</option>
					      </select>
					    </div>
						
						<div class="text-center">
							<button type="submit" class="btn btn-primary">Order ngay</button>
							<a href="index.jsp" class="btn btn-success">Shopping more</a>
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