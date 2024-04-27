<%@page import="com.entity.user"%>
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
<title>Dòng khác</title>
<%@include file="all_component/allCss.jsp" %>
 
<style type="text/css">
.crd-ho:hover {
	background-color: #eeeeee;
}
#toast {
	min-width: 300px;
	position: fixed;
	bottom: 30px;
	left: 50%;
	margin-left: -125px;
	background: #333;
	padding: 10px;
	color: white;
	text-align: center;
	z-index: 1;
	font-size: 18px;
	visibility: hidden;
	box-shadow: 0px 0px 100px #000;
}

#toast.display {
	visibility: visible;
	animation: fadeIn 0.5, fadeOut 0.5s 2.5s;
}

@keyframes fadeIn {from { bottom:0;
	opacity: 0;
}

to {
	bottom: 30px;
	opacity: 1;
}

}
@keyframes fadeOut {form { bottom:30px;
	opacity: 1;
}

to {
	bottom: 0;
	opacity: 0;
}
}

</style>


</head>
<body>

 
<c:if test="${not empty addOtherCart }">

<div id="toast">${addOtherCart}</div>

<script type="text/javascript">
		showToast();
		function showToast(content)
		{
		    $('#toast').addClass("display");
		    $('#toast').html(content);
		    setTimeout(()=>{
		        $("#toast").removeClass("display");
		    },2000)
		}	
</script>

</c:if>
	

	


	<%
		user u =(user)session.getAttribute("userobj");
	%>

<%@include file="all_component/navbar.jsp" %>
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

</div>	


	
</body>
</html>