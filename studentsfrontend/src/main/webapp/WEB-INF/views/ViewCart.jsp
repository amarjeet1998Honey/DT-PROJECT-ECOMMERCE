<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<spring:url var="images" value="/resources/images"/>

 <c:set var="contextRoot" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="./shared/navbar.jsp"></jsp:include>

<div class="container">
<br/>

<h1 style="color:green">${msg}</h1>
<h2><span class="glyphicon glyphicon-shopping-cart"></span> Cart</h2>
<br>

<table class="table table-hover table-responsive">
    <thead>
      <tr>
        <th>Item Name</th>
        <th>Price</th>
       	<th>Quantity</th>
       	<th>Image</th>
       	<th>Action</th>
       	<th>Increase</th>
       	<th>Decrease</th>
      </tr>
    </thead>
   <tbody>
 <c:forEach items="${itemsList}" var="itemObj">
 		
  		<tr>
  			<td>${itemObj.product.productName}</td>
  			<td>${itemObj.price}</td>
  			<td>${itemObj.quantity}</td>
  			<td><img src="${images}/${itemObj.product.imgname}" style="height:100px; width:100px;" class="img-responsive"></td>
  			<td><a href="${contextRoot}/addToCart/deleteItem/${itemObj.itemId}"><span class="glyphicon glyphicon-trash"></span></a></td>
  			<td><a href="${contextRoot}/addToCart/increaseQuantity/${itemObj.itemId}"><span	class="glyphicon glyphicon-plus"></span></a></td>
  			<td><a href="${contextRoot}/addToCart/decreaseQuantity/${itemObj.itemId}"><span	class="glyphicon glyphicon-minus"></span></a></td>
  		</tr>
  		
  </c:forEach>
  			
  </tbody>
</table>
<hr>
<a href="${contextRoot}/addToCart/makePayment" class="btn btn-danger"><span class="glyphicon glyphicon-usd"></span> Make Payment</a>
</div>
<br>
<br>

<jsp:include page="./shared/footer.jsp"></jsp:include>

</body>
</html>